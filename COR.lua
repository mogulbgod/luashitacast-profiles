local profile = {};
local sets = {
    ['qd'] = {
        Ammo = 'Animikii Bullet',
        Head = 'Denali Bonnet',
        Neck = 'Crested Torque',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        Body = 'Scorpion Harness',
        Hands = { Name = 'Blood Fng. Gnt.', Augment = { [1] = '"Subtle Blow"+4', [2] = '"Snapshot"+3' } },
        Ring1 = 'Galdr Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Salire Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['range_lowacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Crested Torque',
        Ear1 = 'Wilhelm\'s Earring',
        Ear2 = 'Altdorf\'s Earring',
        Body = 'Commodore Frac',
        Hands = { Name = 'Blood Fng. Gnt.', Augment = { [1] = '"Subtle Blow"+4', [2] = '"Snapshot"+3' } },
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['range_medacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Crested Torque',
        Ear1 = 'Wilhelm\'s Earring',
        Ear2 = 'Altdorf\'s Earring',
        Body = 'Commodore Frac',
        Hands = { Name = 'Blood Fng. Gnt.', Augment = { [1] = '"Subtle Blow"+4', [2] = '"Snapshot"+3' } },
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['range_highacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Crested Torque',
        Ear1 = 'Wilhelm\'s Earring',
        Ear2 = 'Altdorf\'s Earring',
        Body = 'Commodore Frac',
        Hands = { Name = 'Blood Fng. Gnt.', Augment = { [1] = '"Subtle Blow"+4', [2] = '"Snapshot"+3' } },
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['tp_lowacc'] = {
        Head = 'Denali Bonnet',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Pln. Seraweels',
        Feet = 'Dusk Ledelsens',
    },
    ['tp_medacc'] = {
        Head = 'Denali Bonnet',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Pln. Seraweels',
        Feet = 'Dusk Ledelsens',
    },
    ['tp_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Mars\'s Ring',
        Ring2 = 'Oneiros Annulet',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Dusk Ledelsens',
    },
    ['idle'] = {
        Head = 'Comm. Tricorne',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Commodore Frac',
        Hands = 'Commodore Gants',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Succor Ring',
        Back = 'Shadow Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Comm. Trews',
        Feet = 'Adsilio Boots +1',
    },
    ['idle_town'] = {
        Head = 'Comm. Tricorne',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Commodore Frac',
        Hands = 'Commodore Gants',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Comm. Trews',
        Feet = 'Comm. Bottes',
    },
    ['movement'] = {
        Hands = 'Commodore Gants',
        Feet = 'Hermes\' Sandals',
    },
    ['req'] = {
        Head = 'Denali Bonnet',
        Neck = 'Fotia Gorget',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Melaco Mittens',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Karka Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Salire Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Adsilio Boots +1',
    },
    ['dw'] = {
        Main = 'Xiutleato',
        Sub = 'Joyeuse',
    },
    ['ws_range'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Wilhelm\'s Earring',
        Ear2 = 'Altdorf\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = { Name = 'Blood Fng. Gnt.', Augment = { [1] = '"Subtle Blow"+4', [2] = '"Snapshot"+3' } },
        Ring1 = 'Breeze Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['gun_set'] = {
		Range = 'Opprimo',
        Ammo = 'Corsair Bullet',
    },
};

local Rolls = T{ --Name,effect,1,2,3,4,5,6,7,8,9,10,11,Bust,roll+1,job mod, mod amt,good luck, bad luck,symbol
    {'Fighter\'s Roll','Double Attack Rate',1,2,3,4,10,5,6,6,1,7,15,0,1,'WAR',5,5,9,'%'},
    {'Monk\'s Roll','Subtle Blow',8,10,32,12,14,16,4,20,22,24,40,-10,4,'MNK',10,3,7,''},
    {'Healer\'s Roll','Cure Potency Received',3,4,12,5,6,7,1,8,9,10,16,-4,1,'WHM',4,3,7,'%'},
    {'Corsair\'s Roll','XP/CP/EP Points',10,11,11,12,20,13,15,16,8,17,24,-6,2,'COR',5,5,9,'%'},
    {'Ninja Roll','Evasion',10,13,15,40,18,20,25,5,28,30,50,-15,5,'NIN',15,4,8,''},
    {'Hunter\'s Roll','Acc/R.Acc',10,13,15,40,18,20,25,5,28,30,50,-15,5,'RNG',15,4,8,''},
    {'Chaos Roll','ATK/R.ATK',6.25,7.81,9.37,25,10.93,12.5,15.62,3.12,17.18,18.75,31.25,-9.76,3.12,'DRK',9.76,4,8,'%'},
    {'Magus\'s Roll','Magic Defense Bonus',5,20,6,8,9,3,10,13,14,15,25,-8,2,'BLU',8,2,6,''},
    {'Drachen Roll','Pet Acc/R.Acc',10,13,15,40,18,20,25,5,28,30,50,0,5,'DRG',15,4,8,''},
    {'Choral Roll','Spell Interupt Rate',-8,-42,-11,-15,-19,-4,-23,-27,-31,-35,-50,25,-4,'BRD',-25,2,6,'%'},
    {'Beast Roll','Pet ATK/R.ATK',6.25,7.81,9.37,25,10.93,12.5,15.62,3.12,17.18,18.75,31.25,0,3.12,'BST',9.76,4,8,'%'},
    {'Samurai Roll','Store TP',8,32,10,12,14,4,16,20,22,24,40,-10,4,'SAM',10,2,6,''},
    {'Evoker\'s Roll','Refresh',1,1,1,1,3,2,2,2,1,3,4,-1,1,'SMN',1,5,9,''},
    {'Rogue\'s Roll','Crit Rate',1,2,3,4,10,5,6,7,1,8,14,-5,1,'THF',5,5,9,'%'},
    {'Warlock\'s Roll','Magic Acc',10,13,15,40,18,20,25,5,28,30,50,-15,5,'RDM',15,4,8,''},
    {'Puppet Roll','Pet Magic Acc/Magic ATK',5,8,35,11,14,18,2,22,26,30,40,-12,3,'PUP',12,3,7,''},
    {'Gallant\'s Roll','Defense',4.69,5.86,19.53,7.03,8.59,10.16,3.13,11.72,13.67,15.63,23.44,-11.72,2.34,'PLD',11.72,3,7,'%'},
    {'Wizard\'s Roll','Magic ATK Bonus',4,6,8,10,25,12,14,17,2,20,30,-10,2,'BLM',10,5,9,''},
    {'Dancer\'s Roll','Regen',3,4,12,5,6,7,1,8,9,10,16,-4,2,'DNC',4,3,7,''},
    {'Scholar\'s Roll','Conserve MP',2,10,3,4,4,1,5,6,7,7,12,-3,0,'SCH',3,2,6,'%'},
    {'Naturalist\'s Roll','Enhancing Magic Duration',6,7,15,8,9,10,5,11,12,13,20,-5,1,'GEO',5,3,7,'%'},
    {'Runeist\'s Roll','Magic Evasion',10,13,15,40,18,20,25,5,28,30,50,-15,5,'RUN',15,4,8,''},
    {'Bolter\'s Roll','Movement Speed',6,6,16,8,8,10,10,12,4,14,20,0,4,'null','null',3,9,'%'},
    {'Caster\'s Roll','Fast Cast',6,15,7,8,9,10,5,11,12,13,20,-10,3,'null',10,2,7,'%'},
    {'Courser\'s Roll','Snapshot',2,3,11,4,5,6,7,8,1,10,12,-3,1,'null',3,3,9,'%'},
    {'Blitzer\'s Roll','Delay Reduction',2,3,11,4,5,6,7,8,1,10,12,-3,1,'null',3,4,9,'%'},
    {'Tactician\'s Roll','Regain',10,10,10,10,30,10,10,0,20,20,40,-10,2,'null',10,5,8,''},
    {'Allies\' Roll','Skillchain DMG/Acc',2,3,20,5,7,9,11,13,15,1,25,-5,1,'null',5,3,10,'%'},
    {'Miser\'s Roll','Save TP',30,50,70,90,200,110,20,130,150,170,250,0,15,'null','null',5,7,''},
    {'Companion\'s Roll','Pet Regain/Regen','20TP/4HP','50TP/20HP','20TP/6HP','20TP/8HP','30TP/10HP','30TP/12HP','30TP/14HP','40TP/16HP','40TP/18HP','10TP/3HP','60TP/25HP','0TP/0HP','5TP/2HP','null','null',2,10,''},
    {'Avenger\'s Roll','Counter Rate',0,0,0,14,0,0,0,0,0,0,16,0,0,'null','null',4,8,'%'},
};

local CorRollIDs = {
    [98] = 'Fighter\'s Roll',
    [99] = 'Monk\'s Roll',
    [100] = 'Healer\'s Roll',
    [101] = 'Wizard\'s Roll',
    [102] = 'Warlock\'s Roll',
    [103] = 'Rogue\'s Roll',
    [104] = 'Gallant\'s Roll',
    [105] = 'Chaos Roll',
    [106] = 'Beast Roll',
    [107] = 'Choral Roll',
    [108] = 'Hunter\'s Roll',
    [109] = 'Samurai Roll',
    [110] = 'Ninja Roll',
    [111] = 'Drachen Roll',
    [112] = 'Evoker\'s Roll',
    [113] = 'Magus\'s Roll',
    [114] = 'Corsair\'s Roll',
    [115] = 'Puppet Roll',
    [116] = 'Dancer\'s Roll',
    [117] = 'Scholar\'s Roll',
    [118] = 'Bolter\'s Roll',
    [119] = 'Caster\'s Roll',
    [120] = 'Courser\'s Roll',
    [121] = 'Blitzer\'s Roll',
    [122] = 'Tactician\'s Roll',
    [302] = 'Allies\' Roll',
    [303] = 'Miser\'s Roll',
    [304] = 'Companion\'s Roll',
    [305] = 'Avenger\'s Roll',
    [390] = 'Naturalist\'s Roll',
    [391] = 'Runeist\'s Roll',
};

local rangeWS = T{'Flaming Arrow','Piercing Arrow','Dulling Arrow','Sidewinder','Blast Arrow','Arching Arrow','Empyreal Arrow','Refulgent Arrow','Apex Arrow','Namas Arrow','Jishnu\'s Randiance','Hot Shot','Split Shot','Sniper Shot','Slug Shot','Blast Shot','Heavy Shot','Detonator','Numbing Shot','Last Stand','Coronach','Wildfire','Trueflight','Leaden Salute','Myrkr','Dagan','Moonlight','Starlight'};
local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };


local settings = {
    -- Settings for normal ranged and melee attacks and sets for battle
	tpvariant = 1, -- For the melee TP set
	rangevariant = 1, -- For range shots
	diset = false; -- If you use any specific equipment in DI turn this on
    kite = false, -- toggle for using your kite set
    msg = true,
    lastroll = '',
    lastrollinfo = '',

    -- Auto whatever settings
	autoberserk = false, -- Will auto use Berserk if it isn't up
	autohasso = false, -- Will auto use Hasso if it isn't up
	auto_equip_debuff = true, -- This is for Poison, Paralyze, Silence, Petrification
	auto_equip_low_health = true, -- set to false if you don't want it to auto equip
    low_health_percent = 20, -- This is the percent ay which the low health set gets equiped

    -- Range distance and warning settings
    MaxRangedWSDistance = 18, -- The distance in yalms furthest to allow for WS, over this its canceled
	ranged_distance_warning = 19.5, -- if more than this Yalms away you'll be warned
	distance_audio_warnings = true,
	cancelWScheck = true,

    --
	audible_low_ammo_warning = false, -- Set to true to have a sound play
    audible_zero_ammo_alert = true, -- When you run out of ammo it alerts you
    warn_low_ammo = false, -- Warns you in chat
	low_ammo_amount = 10, -- Warn you when ammo count is this amount or lower

};

local function PrintCORMsg(theRollID, theNumber)
    if settings.msg == false then return end
    if (CorRollIDs[theRollID] == nil) then return end
    local tNum;
    local luckyNum = nil;
    local unluckyNum = nil;
    local tSign = nil;
    local rollValue = nil;
    local rollFunction = nil;
    local tPositive = '';

    if (settings.lastrollinfo == 1) then --Initial Roll
        for n = 1, #Rolls do
            if Rolls[n][1] == CorRollIDs[theRollID] then
                luckyNum = Rolls[n][18];
                unluckyNum = Rolls[n][19];
                tSign = Rolls[n][20];
                rollValue = Rolls[n][theNumber + 2];
                rollFunction = Rolls[n][2];
                if not string.match(rollValue, '-') then tPositive = '+'; end
                if (theNumber == luckyNum) then
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append(chat.success('Lucky Number Reached! (' .. luckyNum .. ') ' .. tPositive .. rollValue .. tSign .. ' ' .. rollFunction)));
                elseif (theNumber == unluckyNum) then
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append(chat.critical('Unlucky Number Reached! (' .. unluckyNum .. ') ' .. tPositive .. rollValue .. tSign .. ' ' .. rollFunction)));
                else
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append('[Initial Roll: [' .. chat.warning(theNumber) ..'] (' .. chat.warning(tPositive .. rollValue .. tSign .. ' ' .. rollFunction) .. ')' .. '] ' .. '[Lucky: ' .. chat.success(luckyNum) .. '] ' .. '[Unlucky: ' .. chat.error(unluckyNum) .. ']'));

                end
            end
        end
    elseif (settings.lastrollinfo == 2) then -- Double-Up
        for n = 1, #Rolls do
            if Rolls[n][1] == CorRollIDs[theRollID] then
                luckyNum = Rolls[n][18];
                unluckyNum = Rolls[n][19];
                tSign = Rolls[n][20];
                rollValue = Rolls[n][theNumber + 2];
                rollFunction = Rolls[n][2];
                if not string.match(tostring(rollValue), '-') then tPositive = '+'; end
                if (theNumber == luckyNum) then
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append(chat.success('Lucky Number Reached! (' .. luckyNum .. ') ' .. tPositive .. rollValue .. tSign .. ' ' .. rollFunction)));
                elseif (theNumber == unluckyNum) then
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append(chat.critical('Unlucky Number Reached! (' .. unluckyNum .. ') ' .. tPositive .. rollValue .. tSign .. ' ' .. rollFunction)));
                elseif (theNumber == 11) then
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append(chat.success('Jackpot! (11) ' .. tPositive .. rollValue .. tSign .. ' ' .. rollFunction)));
                elseif (theNumber > 11) then
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append(chat.critical('[Double-Up: Bust!] (') .. chat.warning(tPositive .. rollValue .. tSign .. ' ' .. rollFunction) .. chat.critical(')')));
                else
                    print(chat.header(CorRollIDs[theRollID] .. ' >>>'):append('[Double-Up: [' .. theNumber .. '] (' .. tPositive .. rollValue .. tSign ..' ' .. chat.warning(rollFunction) .. ')' .. '] ' .. '[Lucky: ' .. chat.success(luckyNum) .. '] ' .. '[Unlucky: ' .. chat.error(unluckyNum) .. ']'));
                    --print(chat.header(theRoll .. ' >>>'):append('[' .. chat.warning(rollFunction) .. '] ' .. '[Double-Up: ' .. theNumber .. '(' .. rollValue .. tSign ..')' .. ']' .. '[Lucky: ' .. chat.success(luckyNum) .. '] ' .. '[Unlucky: ' .. chat.error(unluckyNum) .. ']'));
                end
            end
        end
    --elseif -- an unknown error
       -- gFunc.Message('Error');
    end
end

ashita.events.register('packet_in', 'profile_scope_packet_in_cb', function(e)
    local party = AshitaCore:GetMemoryManager():GetParty()
    --[[local zoning_bool = false;
    if e.id == 0xB then
        zoning_bool = true
    elseif e.id == 0xA and zoning_bool then
        zoning_bool = false
    end
    if not zoning_bool then]]
        if e.id == 0x28 then
            local actor = struct.unpack('I', e.data, 6); --returns the players server ID from packet
            if (actor ~= party:GetMemberServerId(0)) then return end -- if the actor doesn't match the player nvm
            local category = ashita.bits.unpack_be(e.data_raw, 82, 4); -- finds the category of spells, 6 = rolls
            local rollNumber = ashita.bits.unpack_be(e.data_raw, 213, 17); -- gets the roll number
            local roll_id = ashita.bits.unpack_be(e.data_raw, 86, 10);
            if (category ~= 6) then return end
            PrintCORMsg(roll_id, rollNumber);
        end
    --end
end);

local tpvartable = {
    [1] = 'lowacc', -- Haste, lots of Haste and Store TP
    [2] = 'medacc', -- The middle ground, accuracy some attack
    [3] = 'highacc', -- primarily accuracy, as much as you like
    --[4] = 'lowacc' -- Mostly attack and str
};

local rangevartable = {
    [1] = 'lowacc', -- Mostly AGI, DEX, STR, R.ATK for damage over accuracy
    [2] = 'medacc', -- The middle ground, range accuracy, some range attack
    [3] = 'highacc', -- primarily range accuracy, as much as you like
};

-- These are the ranged weapons you use on COR
-- List them under the proper weapon type.
local ranged_weapons = T{'Opprimo', 'Shark Gun'};

-- Just Silver Bullets lol.
local bullets = T{
    'Steel Bullet',
	'Corsair Bullet',
};

-- Table of special ammo used for WS+US
local SpecialAmmo = {
    ['Animikii Bullet'] = 'Animikii Bullet',
    --['Steel Bullet'] = 'Steel Bullet',
};
-- Counts items like the ammo it helps to check for
local function GetItemCount(container, id)
    local count = 0;
    local inv = AshitaCore:GetMemoryManager():GetInventory();
    for i = 1,80 do
        local invItem = inv:GetContainerItem(container, i);
        if (invItem.Id == id) then
            count = count + invItem.Count;
        end
    end
    return count;
end

-- Table of inventory and 8 wardrobes so keep ammo there
local equipBags = T{ 0, 8, 10, 11, 12, 13, 14, 15, 16 };

-- This counts the items in all bags, used to count ammo
local function GetEquippableCount(id)
    local count = 0;
    for _,bag in ipairs(equipBags) do
        count = count + GetItemCount(bag, id);
    end
    return count;
end

-- This will go thru the ammo tables list to find ammo to equip
-- if it can't find ammo to equip (you ran out or they're in quivers)
-- it will remove the 'special arrow' used for WS with Unlimited Shot up
local function SelectAmmo(TheAmmoTable)
    for _,entry in ipairs(TheAmmoTable) do
        local resource = AshitaCore:GetResourceManager():GetItemByName(entry, 0);
        if (resource) and (GetEquippableCount(resource.Id) > 0) then
            return entry;
        end
    end
	gFunc.Message('PANIC! Check awesome ammo to see if it\'s been lost');
    return 'remove';
end

local function GetItemId(TheItemName)
    local resource = AshitaCore:GetResourceManager():GetItemByName(TheItemName, 0);
    if (resource.Id > 0) then
        return resource.Id;
    end

    return;

end

local function RemoveAmmo()
    local i = 1;
    local TheAmmo = gData.GetEquipment().Ammo;
    for _,i in ipairs(SpecialAmmo) do
        if (SpecialAmmo[i] == TheAmmo) then return end
    end
end

local function GetAmmoCount(TheAmmoName)
    local AmmoId = GetItemId(TheAmmoName);
    local TheCount = GetEquippableCount(AmmoId);

    if (TheCount > 0) then
        return TheCount;
    end
    return 0;
end

local function SwapAmmo() -- Add this fucntion at the end of Pre and Mid shots and WS

	local what_weapon = gData.GetEquipment();
	local vAmmoTable = nil

	if ranged_weapons:contains(what_weapon.Range.Name) then
		vAmmoTable = bullets;
    else
		gFunc.Error('Check your ranged weapon slots to make sure you have them equiped.');
        return;
    end

	gFunc.Equip('Ammo', SelectAmmo(vAmmoTable));
end

local function Play_Sound(TheFile)
	local path = string.format('%sconfig\\addons\\luashitacast\\resources\\sounds\\' .. TheFile, AshitaCore:GetInstallPath());
	ashita.misc.play_sound(path);
end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    local player = gData.GetPlayer();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 21');

    if (player.SubJob == 'WAR') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    elseif (player.SubJob == 'NIN') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    elseif (player.SubJob == 'DNC') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
    elseif (player.SubJob == 'WHM') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
    elseif (player.SubJob == 'RNG') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
    else
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /cor /lac fwd');
  	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /gun /lac fwd gun');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /test /lac fwd test'); -- used for testing
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd rangeset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd diset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd autoberserk');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd autohasso');

    gFunc.LockStyle(sets.idle_town);

end

profile.OnUnload = function()
    -- Cleaning up the Aliases and Binds so they don't persist after unload
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /cor');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /gun');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /test'); -- Remove for testing
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5');

    ashita.events.unregister('packet_in', 'profile_scope_packet_in_cb');
end

profile.HandleCommand = function(args)
    if (args[1] == 'tpset') then
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvartable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. string.upper(tpvartable[settings.tpvariant]));
	elseif (args[1] == 'rangeset') then
		settings.rangevariant = settings.rangevariant + 1;
		if (settings.rangevariant > #rangevartable) then
			settings.rangevariant = 1;
		end
		gFunc.Message('Range Set: ' .. string.upper(rangevartable[settings.rangevariant]));
	elseif (args[1] == 'diset') then
		if (settings.diset == true) then
			settings.diset = false;
		else
			settings.diset = true;
		end
		gFunc.Message('DI Set is now set to ' .. string.upper(tostring(settings.diset)));
	elseif (args[1] == 'autoberserk') then
		if (settings.autoberserk == true) then
			settings.autoberserk = false;
		else
			settings.autoberserk = true;
		end
		gFunc.Message('Auto Berserk (Work In Progress) is now set to ' .. string.upper(tostring(settings.autoberserk)));
	elseif (args[1] == 'autoberserk') then
		if (settings.autohasso == true) then
			settings.autohasso = false;
		else
			settings.autohasso = true;
		end
		gFunc.Message('Auto Hasso is now set to ' .. string.upper(tostring(settings.autohasso)));
	elseif (args[1] == 'kite') then
		if (settings.kite == true) then
			settings.kite = false;
		else
			settings.kite = true;
		end
		gFunc.Message('Kite Mode is now set to ' .. chat.success(string.upper(tostring(settings.kite))));
	elseif (args[1] == 'gun') then
	  gFunc.EquipSet(sets.gun_set);
	    if (settings.diset == true) then
	      --gFunc.Equip('Range', '');
	    end
	elseif (args[1] == 'staff') then
        if (args[2] == 'l') or (args[2] == 'chat') then
            gFunc.Equip('Main', 'Chatoyant Staff');
            gFunc.Message('Equiping Staff: ' .. chat.success(string.upper('Chatoyant Staff')));
        elseif (args[2] == 'f') or (args[2] == 'fire') then
            gFunc.Equip('Main', 'Fire Staff');
            gFunc.Message('Equiping Staff: ' .. chat.success(string.upper('Fire Staff')));
        end
        gFunc.Equip('Sub', 'Omni Grip');
    elseif (args[1] == 'sword') then
        gFunc.EquipSet(sets.dw);
        gFunc.Message('Equiping: ' .. chat.success(string.upper('Swords')));
	elseif (args[1] == 'test') then
        local resMgr = AshitaCore:GetResourceManager();
        local theRecast = AshitaCore:GetMemoryManager():GetRecast():GetAbilityRecast(56);
		--local berserkid = gData.GetBuffCount('Berserk');
	    --local berserkrecast = gData.GetAction(berserkid)
        gFunc.Message(theRecast);
        --gFunc.Message(berserkrecast.Recast);
	else
		gFunc.Message(chat.error(args[1]) .. ' is an UNKNOWN Command');
	end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local hasso = gData.GetBuffCount('Hasso');
	local berserk = gData.GetBuffCount('Berserk');
	local isSleep = gData.GetBuffCount('Sleep');
	local isPoisoned = gData.GetBuffCount('Poison');
	local isParalyzed = gData.GetBuffCount('Paralyze');
	local isPetrified = gData.GetBuffCount('Petrified');
    local zone = gData.GetEnvironment();
	--local berserkid = gData.GetAction('Berserk').Id
	--local berserkrecast = gData.GetAction(berserkid).Recast

    if (player.Status == 'Engaged') then
        if (settings.autohasso == true) and (hasso == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Hasso" <me>');
		end
		-- Berserk will only start when engaged
		if (settings.autoberserk == true) and (berserk == 0) then --and (berserkrecast == 0 or nil) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Berserk" <me>');
		end
		-- Melee set
		gFunc.EquipSet('tp_' .. tpvartable[settings.tpvariant]);

		-- DI Set stays after your normal melee set is loaded so it overwrites
		-- some pieces of your normal melee set. I equip DI weapons
		if (settings.diset == true) then
			--gFunc.EquipSet(sets.diset);
		end
    elseif (player.Status == 'Idle') then
        if towns:contains(zone.Area) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
        end
    end

    if (player.IsMoving) then
        --gFunc.Equip('Feet', 'Hermes\' Sandals')
        gFunc.EquipSet(sets.movement);
    end
end

profile.HandleAbility = function()
    local player = gData.GetPlayer();
    local ability = gData.GetAction();

    if (ability.Name:contains('Roll')) then
        settings.lastrollinfo = 1;
        gFunc.Equip('Head', 'Commodore Tricorne');
        --gFunc.Message('Just Roll works');
    elseif (ability.Name == 'Double-Up') then
        settings.lastrollinfo = 2;
    elseif string.match(ability.Name, ' Shot') then
        gFunc.EquipSet(sets.qd);
    elseif (ability.Name == 'Random Deal') then
        gFunc.Equip('Body', 'Commodore Frac');
    end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    local action = gData.GetAction();
	local isBarrage = gData.GetBuffCount('Barrage');


	-- Low ammo check
    if (settings.warn_low_ammo == true) then
        local AmmoCount = GetAmmoCount(gData.GetEquipment().Ammo)
        if (AmmoCount < settings.low_ammo_amount) then
            gFunc.Message('Current ammo count[ ' .. tostring(AmmoCount) .. ' ] is below minimum[ ' .. tostring(settings.low_ammo_amount) .. ' ] allowed.');
            if (settings.audible_low_ammo_warning == true) then Play_Sound('low_ammo.wav') end
        elseif (AmmoCount == 0) then
            gFunc.Error('You are out of ammo.')
            if (settings.audible_zero_ammo_alert == true) then Play_Sound('out_of_ammo.wav') end
            gFunc.CancelAction();
        end

    end

    -- No conditionals for preshot, every ranged attack
	-- will have this set equip
	gFunc.EquipSet(sets.preshot);

	if (isBarrage > 0) then
		gFunc.EquipSet(sets.barrage);
	end

	SwapAmmo();
end

profile.HandleMidshot = function()
    local UnlimitedShot = gData.GetBuffCount('Unlimited Shot');
	local action = gData.GetAction();
	local isBarrage = gData.GetBuffCount('Barrage');
    local ammoName = gData.GetEquipment().Ammo;

	gFunc.EquipSet('range_' .. rangevartable[settings.rangevariant]); -- Normal range attacks

	if (isBarrage > 0) then
		gFunc.EquipSet(sets.barrage);
	end

	SwapAmmo();
end

profile.HandleWeaponskill = function()
    local ws = gData.GetAction();

    if (ws.Name == 'Requiescat') then
        gFunc.EquipSet(sets.req);
    elseif rangeWS:contains(ws.Name) then
        gFunc.EquipSet(sets.ws_range);
    end

end

return profile;