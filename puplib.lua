--[[
* Pupsets is based on the blusets addon delivered as part of Ashita.
* It has been modified to provide similar functionality for pupetmaster.
*
* Pupsets is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* Pupsets is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with Ashita.  If not, see <https://www.gnu.org/licenses/>.
--]]

require('common');
local chat = require('chat');
local ffi = require('ffi');
local puplib = T{};

-- FFI Prototypes
ffi.cdef[[
    /**
     * Extended equip packet sender. Used for BLU spells, PUP attachments, etc.
     *
     * @param {uint8_t} isSubJob - Flag if the used job is currently subbed or not. (ie. If using BLU, is BLU subbed?)
     * @param {uint16_t} jobType - Flag used for the job packet type. (BLU = 0x1000, PUP = 0x1200)
     * @param {uint16_t} index - The index of the slot being manipulated. (ie. The BLU spell slot.)
     * @param {uint8_t} id - The id of the spell, attachment, etc. being set. (BLU spells are id - 512.)
     * @return {uint8_t} 1 on success, 0 otherwise.
     * @note
     *  This calls the in-game function that is used to send the 0x102 packets.
     */
    typedef uint8_t (__cdecl *equipex_t)(uint8_t isSubJob, uint16_t jobType, uint16_t index, uint8_t id);

]];

-- Blue Mage Helper Library
local pup = T{
    offset  = ffi.cast('uint32_t*', ashita.memory.find('FFXiMain.dll', 0, 'C1E1032BC8B0018D????????????B9????????F3A55F5E5B', 10, 0)),
    equipex = ffi.cast('equipex_t', ashita.memory.find('FFXiMain.dll', 0, '8B0D????????81EC9C00000085C95356570F??????????8B', 0, 0)),

    -- Memory offsets for PUP head/frame and attachments
    equipOffset  = 0x2000, -- head/frame
    attachOffset = 0x2100, -- attachments
};

--[[
* Returns if the players main job is PUP.
*
* @return {boolean} True if PUP main, false otherwise.
--]]
function puplib.is_pup_main()
    return AshitaCore:GetMemoryManager():GetPlayer():GetMainJob() == 18;
end

--[[
* Returns if the players sub job is PUP.
*
* @return {boolean} True if PUP sub, false otherwise.
--]]
function puplib.is_pup_sub()
    return AshitaCore:GetMemoryManager():GetPlayer():GetSubJob() == 18;
end

--[[
* Returns if the players main or sub job is PUP. Prints error if false.
*
* @return {boolean} True if PUP main or sub, false otherwise.
--]]
function puplib.is_pup_cmd_ok(cmd)
    if (not puplib.is_pup_main() and not puplib.is_pup_sub()) then
        --print(chat.header(addon.name):append(chat.error('Must be PUP main or sub to use /pupset ' .. cmd .. '!')));
        return false;
    else
        return true;
    end
end

--[[
* Returns the raw buffer used in PUP attachment packets.
*
* @return {number} The current PUP raw buffer pointer.
* @note
*   On private servers, there is a rare chance this buffer is not properly updated immediately until you open an
*   equipment menu or open the PUP set attachments window. Because of this, you may send a bad job id for the packets
*   that rely on this buffers data if used directly.
--]]
function puplib.get_pup_buffer_ptr()
    local ptr = ashita.memory.read_uint32(AshitaCore:GetPointerManager():Get('inventory'));
    if (ptr == 0) then
        return 0;
    end
    ptr = ashita.memory.read_uint32(ptr);
    if (ptr == 0) then
        return 0;
    end

    return ptr + pup.offset[0] + (puplib.is_pup_main() and 0x00 or 0x9C);
end

--[[
* Returns the table of current set PUP attachments.
*
* @return {table} The current set PUP attachments.
--]]
function puplib.get_attachments()
    local ptr = ashita.memory.read_uint32(AshitaCore:GetPointerManager():Get('inventory'));
    if (ptr == 0) then
        return T{ };
    end
    ptr = ashita.memory.read_uint32(ptr);
    if (ptr == 0) then
        return T{ };
    end

    return T(ashita.memory.read_array((ptr + pup.offset[0]) + (puplib.is_pup_main() and 0x04 or 0xA0), 0xE));
end

--[[
* Returns the table of current set PUP attachments names.
*
* @return {table} The current set PUP attachments names.
--]]
function puplib.get_attachments_names()
    local data = puplib.get_attachments();
    for k, v in pairs(data) do
        if (k < 3) then -- head and frame
            data[k] = AshitaCore:GetResourceManager():GetItemById(v + pup.equipOffset);
        else -- attachment
            data[k] = AshitaCore:GetResourceManager():GetItemById(v + pup.attachOffset);
        end
        if (data[k] ~= nil and data[k].Name[1] ~= '.') then
            data[k] = data[k].Name[1];
        else
            data[k] = '';
        end
    end
    return data;
end

function puplib.GetFrameName()
    local data = puplib.get_attachments_names();
    if data[2] == '' or nil then
        return nil;
    else
        return data[2];
    end
end

function puplib.GetHeadName()
    local data = puplib.get_attachments_names();
    if data[1] == '' or nil then
        return nil;
    else
        return data[1];
    end
end

-- Return the library table..
return puplib;
