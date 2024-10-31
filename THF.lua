local profile = {};
local sets = {
    ['idle'] = {
        Head = 'Denali Bonnet',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Scorpion Harness',
        Hands = 'Melaco Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Shadow Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['idle_town'] = {
        Head = 'Denali Bonnet',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Scorpion Harness',
        Hands = 'Melaco Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Shadow Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['tp_lowacc'] = {
        Head = 'Dampening Tam',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Floral Gauntlets',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    ['tp_medacc'] = {
        Head = 'Dampening Tam',
        Neck = 'Peacock Amulet',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    ['tp_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Homam Manopolas',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    ['tp_tank'] = {
        Head = 'Walahra Turban',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    ['ws'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Halting Stole',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = 'Assault Jerkin',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Zilant Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = 'Oily Trousers',
        Feet = 'Adsilio Boots +1',
    },
    ['th'] = {
        Sub = 'Thief\'s Knife',
        Head = 'Wh. Rarab Cap +1',
        Hands = 'Assassin\'s Armlets',
    },
    ['exen'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Resist Bind"+4', [2] = '"Conserve TP"+5', [3] = 'DEX+4' } },
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Assassin\'s Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Oily Trousers',
        Feet = 'Adsilio Boots +1',
    },
};

local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };

local settings = {
    THmode = {
        enable = false,
        auto = false,
        used = false,
    },
    tpvariant = 1,
    counter = 0,
};

local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    [4] = 'tank'
};

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    local player = gData.GetPlayer();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 24');

	if (player.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /rdm /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd th');

    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 021');

end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    if args[1] == 'th' then
        if settings.THmode.enable == true then
            settings.THmode.enable = false;
        else
            settings.THmode.enable = true;
        end
        gFunc.Message('TH Set: ' .. tostring(settings.THmode.enable));
    elseif args[1] == 'tpset' then
        settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvarianttable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. tpvarianttable[settings.tpvariant]);
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local zone = gData.GetEnvironment();

    if player.Status == 'Engaged' then
        gFunc.EquipSet(sets.tp_lowacc);
        if settings.counter == 0 then -- This is will be for AutoTH
            settings.counter = 1;
        end
    elseif player.Status == 'Idle' then
        if (towns:contains(zone.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
        end
        -- Will be used for AutoTH
        if settings.THmode.auto == true and settings.THmode.used == true then
            settings.THmode.used = false;
        end
    end

    --This will equip your TH gear over any other gear sets so just put the TH pieces
    --in the th set that have TH on them
    if settings.THmode.enable == true then
        gFunc.EquipSet(sets.th);
    elseif settings.THmode.auto == true and settings.THmode.used == false then
        gFunc.EquipSet(sets.th);
    end

    if player.IsMoving then
        gFunc.Equip('Feet', 'Trotter Boots');
    end
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if (ability.Name == 'Sneak Attack') then

    elseif (ability.Name == 'Steal') then

    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()

    local ws = gData.GetAction();

    gFunc.EquipSet(sets.ws); -- Generic WS set

    if ws.Name == 'Exenterator' then
        gFunc.EquipSet(sets.exen);
    end

end

return profile;