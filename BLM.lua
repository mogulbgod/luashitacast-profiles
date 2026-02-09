local profile = {};
local sets = {
    ['precast'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Walahra Turban',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Loquac. Earring',--2% or 0.02
        Ear2 = 'Magnetic Earring',
        Body = 'Dalmatica',--3% or 0.03
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Veela Cape',--2% or 0.02
        Waist = 'Ninurta\'s Sash',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Rostrum Pumps',--2% or 0.02
    },
	['precast_nukes'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Walahra Turban',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Loquac. Earring',--2% or 0.02
        Ear2 = 'Magnetic Earring',
        Body = 'Dalmatica',--3% or 0.03
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Veela Cape',--2% or 0.02
        Waist = 'Ninurta\'s Sash',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Rostrum Pumps',--2% or 0.02
    },
	['precast_nukes_tier3'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Walahra Turban',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Loquac. Earring',--2% or 0.02
        Ear2 = 'Magnetic Earring',
        Body = 'Dalmatica',--3% or 0.03
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Veela Cape',--2% or 0.02
        Waist = 'Ninurta\'s Sash',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Rostrum Pumps',--2% or 0.02
    },
    ['nuke_lowacc'] = {
        Ammo = 'Phtm. Tathlum',
        Head = { Name = 'Shadow Hat', Augment = { [1] = 'Pet: "Mag. Atk. Bns."+3', [2] = 'Elem. magic skill +4', [3] = 'Pet: Mag. Acc.+4' } },
        Neck = 'Aesir Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Crapaud Earring',
        Body = 'Igqira Weskit',
        Hands = 'Genie Gages',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Shrewd Pumps',
    },
    ['idle_town'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Sorcerer\'s Petas.',
        Neck = 'Beak Necklace',
        Ear1 = 'Crapaud Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Sorcerer\'s Coat',
        Hands = 'Genie Gages',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Veela Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Shrewd Pumps',
    },
    ['idle'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Sorcerer\'s Petas.',
        Neck = 'Beak Necklace',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Dalmatica',
        Hands = 'Dune Bracers',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Dune Sandals',
    },
    ['nukes'] = {
        Ammo = 'Phtm. Tathlum',
        Head = { Name = 'Shadow Hat', Augment = { [1] = 'Pet: "Mag. Atk. Bns."+3', [2] = 'Elem. magic skill +4', [3] = 'Pet: Mag. Acc.+4' } },
        Neck = 'Aesir Torque',
        Ear1 = 'Crapaud Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Igqira Weskit',
        Hands = 'Genie Gages',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Errant Cape',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Shrewd Pumps',
    },
    ['enfeebling'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Sorcerer\'s Petas.',
        Neck = 'Spider Torque',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Dalmatica',
        Hands = 'Oracle\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Zenith Pumps',
    },
    ['dark'] = {
        Ammo = 'Phtm. Tathlum',
        Head = { Name = 'Shadow Hat', Augment = { [1] = 'Pet: "Mag. Atk. Bns."+3', [2] = 'Elem. magic skill +4', [3] = 'Pet: Mag. Acc.+4' } },
        Neck = 'Aesir Torque',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Igqira Weskit',
        Hands = 'Genie Gages',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Errant Cape',
        Waist = 'Salire Belt',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Dune Sandals',
    },
    ['enhancing'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Walahra Turban',
        Neck = 'Colossus\'s Torque',
        Ear1 = 'Crapaud Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Dalmatica',
        Hands = 'Genie Gages',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Shrewd Pumps',
    },
    ['healing'] = {
        Sub = 'Staff Strap',
        Ammo = 'Jasper Tathlum',
        Head = 'Walahra Turban',
        Neck = 'Colossus\'s Torque',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Sorcerer\'s Coat',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Red Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Sorcerer\'s Sabots',
    },
    ['shattersoul'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Sinister Mask',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Astral Earring',
        Body = 'Sorcerer\'s Coat',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Grapevine Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Rostrum Pumps',
    },
    ['PDT'] = {
        Head = 'Sorcerer\'s Petas.',
        Neck = 'Beak Necklace',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Colossus\'s Earring',
        Body = { Name = 'Dalmatica', Augment = { [1] = '"Fast Cast"+3', [2] = 'Occ. quickens spellcasting +3%', [3] = '"Mag. Atk. Bns."+3' } },
        Hands = 'Dune Bracers',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Shadow Mantle',
        Waist = 'Desert Rope',
        Legs = 'Sorcerer\'s Tonban',
        Feet = 'Dune Sandals',
    },
};

local settings = T{
    Spells = T{
        diset = false,
        AutoSpell = false,
        Tier = 3,
        Element = nil,
        MatchWeather = false,
        MatchDay = false,
    },

    AutoSwitchPalete = {
        Use = false,
        Day = false,
        Weather = false,
    },

    CurrentDay = nil,
    reportCastTime = true,
    fcGearAmount = 0.9,
    packetDelay = 0.25, --If using PacketFlow set to 0.25 or else set to 0.4
    minimumBuffer = 0.1,

};

local elements = T{
    ['Earth'] = T{'Omni Grip'},
    ['Water'] = T{'Omni Grip'},
    ['Wind'] = T{'Omni Grip'},
    ['Fire'] = T{'Omni Grip'},
    ['Ice'] = T{'Omni Grip'},
    ['Thunder'] = T{'Omni Grip'},
    ['Dark'] = T{'Omni Grip'},
    ['Light'] = T{'Omni Grip'},
    ['Unknown'] = T{'Wizzan Grip'},
    ['Non-Elemental'] = T{'Wizzan Grip'},
};
local ToRoman = T{'I', 'II', 'III', 'IV', 'V'};

local Towns = T{'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship',};

local function SwitchMacroPalete(Element)

    local weather = gData.GetEnvironment().WeatherElement;
    local day = gData.GetEnvironment().DayElement;

    if not settings.AutoSwitchPalete.Use then
        return;
    end

    if (Element == nil) then
        if (settings.AutoSwitchPalete.Day == 'true') then
            Element = day;
        elseif (settings.AutoSwitchPalete.Weather == 'true') then
            Element = weather;
        else
            Element = nil;
        end
    end

    if (Element == 'Earth') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    elseif (Element == 'Water') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
    elseif (Element == 'Wind') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
    elseif (Element == 'Fire') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 5');
    elseif (Element == 'Ice') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 6');
    elseif (Element == 'Thunder') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 7');
    elseif (Element == 'Light') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 8');
    elseif (Element == 'Dark') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 9');
    else
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
        gFunc.Message('Unknown or No Element detected, switched to default macro palete');
    end

    gFunc.Equip('Main','Chatoyant Staff');
    gFunc.Equip('Sub','Omni Grip');
    gFunc.Equip('Ammo','Phtm. Tathlum');

end

local function Nuke(tier, ele)
    if tier == nil or tier == '' or ele == '' or ele == nil then
        return;
    end
    -- we need to format the spell using the variables
    ele = ele:lower():gsub("^%l", string.upper);
    local spell;

    if tier == 1 then
        spell = '/ma "' .. ele .. ' <t>';
    else
        spell = '/ma "' .. ele .. ' ' .. ToRoman[tier] .. ' <t>';
    end

    AshitaCore:GetChatManager():QueueCommand(1, spell);
end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 19');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1'); -- Default macro palete

end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)

    if (#args <= 0) then return; end

    args[1] = string.lower(args[1]);
    if (args[1] == 'tier') then
        if (type(args[2]) == 'number') then
            if (args[2] == '1') then
                settings.Spells.Tier = 1;
                gFunc.Message('Spell Tiers are now set to Tier [ ' .. args[2] .. ' ]');
            elseif (args[2] == '2') then
                settings.Spells.Tier = 2;
                gFunc.Message('Spell Tiers are now set to Tier [ ' .. args[2] .. ' ]');
            elseif (args[2] == '3') then
                settings.Spells.Tier = 3;
                gFunc.Message('Spell Tiers are now set to Tier [ ' .. args[2] .. ' ]');
            elseif (args[2] == '4') then
                settings.Spells.Tier = 4;
                gFunc.Message('Spell Tiers are now set to Tier [ ' .. args[2] .. ' ]');
            else
                gFunc.Message('Please use a number between 1-4 for the spell tier number.');
            end
        end
    elseif (args[1] == 'diset') then
        if settings.diset == true then
            settings.diset = false;
        else
            settings.diset = true;
        end
    elseif (args[1] == 't1') then

    elseif (args[1] == 't2') then

    elseif (args[1] == 't3') then

    elseif (args[1] == 't4') then

    end
end

profile.HandleDefault = function()
    local zone = gData.GetEnvironment();
    local player = gData.GetPlayer();

    if (player.Status == 'Idle') then
        if (Towns:contains(zone.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
        end
    elseif (player.Status == 'Resting') then
    end

    if (player.IsMoving) then
        gFunc.Equip('Feet', 'Herald\'s Gaiters');
    end

end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    local player = gData.GetPlayer();
    local arts = gData.GetBuffCount(359);
    local FC;
    -- This will determine the FastCast value depending on sub job and status effect
    if player.SubJob == 'RDM' then
        FC = 0.15;
    elseif player.SubJob == 'SCH' and arts > 0 then
        FC = 0.10;
    else
        FC = 0; -- No sub job effect on FC
    end


	-- This is logic for swapping to specific precast sets based on spell type and tier (III specifically)
    if (spell.Skill == 'Elemental Magic') then
		if string.match(spell.Name, 'III') then
			gFunc.EquipSet(sets.precast_nukes_tier3); -- Only tier 3 nukes proc this
		else
			gFunc.EquipSet(sets.precast_nukes); -- Elemental spells precast
		end
	else
		gFunc.EquipSet(sets.precast); --generic precast set
	end
	-- End specific precast sets section

    --------------------------------
    --- set midcastdelay -----------
    --------------------------------
    local fastCastValue = FC + settings.fcGearAmount; -- adding fast cast
    local minimumBuffer = settings.minimumBuffer;  -- mimimum buffer
    local packetDelay = settings.packetDelay;
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
    ---------------------------------
    local castTimeSeconds = math.floor((spell.CastTime * (1 - fastCastValue)) / 1000)
    local castTimeDecimal = ((spell.CastTime * (1 - fastCastValue)) / 1000) % 1
    local formattedCastTime = string.format("%.2f", castTimeSeconds + castTimeDecimal)
    if (settings.reportCastTime == true) then
        if (castDelay < packetDelay) then
            formattedCastTime = chat.warning(formattedCastTime);
        else
            formattedCastTime = chat.success(formattedCastTime);
        end

        AshitaCore:GetChatManager():QueueCommand(8, '/echo Cast Time: ' .. formattedCastTime .. ' seconds')
    end
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    --local ability = gData.GetBuffCount(); -- Looking for stratagems
    local weather = gData.GetEnvironment().WeatherElement; -- Gets the weather element
    local zone = gData.GetEnvironment();
    local player = gData.GetPlayer();
    local arts = gData.GetBuffCount(359);
    local FC;

    -- This will determine the FastCast value depending on sub job and status effect
    if player.SubJob == 'RDM' then
        FC = 0.15;
    elseif player.SubJob == 'SCH' and arts > 0 then
        FC = 0.10;
    else
        FC = 0; -- No sub job effect on FC
    end

    --Your fast cast, expressed as a percentage.  0.3 = 30% fast cast.
    local fastCastValue = FC + settings.fcGearAmount;
    --Minimum number of seconds to leave before spell completion.  Client can tack on up to 400ms wait due to packet interval..
    local minimumBuffer = 0.60;
    local packetDelay = settings.packetDelay;
    --Calculated delay for midcast..
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;

    --Buffer to store your equipment set for midcast.
    local midcastSet;


    gFunc.Equip('Sub', elements[spell.Element][1]);


    if (spell.Skill == 'Enhancing Magic') then

        gFunc.EquipSet(sets.enhancing);

        if string.match(spell.Name, 'Regen') then

        elseif (spell.Name == 'Stoneskin') then
            gFunc.Equip('Neck', 'Stone Gorget')
        end

    elseif (spell.Skill == 'Healing Magic') then

        local sLen = string.len(spell.Name); -- Gets the length of the spell name

        if string.match(spell.Name, 'Cure') then -- works on all cure spells

            gFunc.EquipSet(sets.cure);

        elseif string.match(string.sub(spell.Name, sLen - 2, 2), 'na') then -- works on all -na spells

        end

    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.enfeebling);

        if (spell.Element == 'Earth') then
        elseif (spell.Element == 'Wind') then
        elseif (spell.Element == 'Water') then
        elseif (spell.Element == 'Fire') then
        elseif (spell.Element == 'Ice') then
        elseif (spell.Element == 'Thunder') then
        elseif (spell.Element == 'Dark') then
			-- Sleep spell
        elseif (spell.Element == 'Light') then
        end

    elseif (spell.Skill == 'Elemental Magic') then

        --gFunc.EquipSet(sets.nukes);
        midcastSet = sets.nukes;

        if (spell.Element == 'Earth') then
        elseif (spell.Element == 'Wind') then
        elseif (spell.Element == 'Water') then
        elseif (spell.Element == 'Fire') then
        elseif (spell.Element == 'Ice') then
        elseif (spell.Element == 'Thunder') then
        elseif (spell.Element == 'Dark') then
        elseif (spell.Element == 'Light') then
        end

    elseif (spell.Skill == 'Dark Magic') then

        gFunc.EquipSet(sets.nukes);
        gFunc.EquipSet(sets.dark);

        if string.match(spell.Name, 'Drain') then
            gFunc.Equip('Ear2', 'Hirudinea Earring');
        elseif string.match(spell.Name, 'Aspir') then
            gFunc.Equip('Ear2', 'Hirudinea Earring');
        end

    end

    --This handles the actual swapping.
    --Since packet interval is 0.4s, no need to do multiple swaps for spells lasting less than that duration.
    if (castDelay < packetDelay) then
        gFunc.EquipSet(midcastSet);

    --Otherwise, equip PDT immediately while waiting(or whatever set you want), then create a function to delay the rest.
    else
        gFunc.EquipSet(sets.PDT);
        local boundFunction = gFunc.ForceEquipSet:bind1(midcastSet);
        boundFunction:once(castDelay);
    end

end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local ws = gData.GetAction();

    if ws.Name == 'Shattersoul' then
        gFunc.EquipSet(sets.shattersoul);
    end
end

return profile;