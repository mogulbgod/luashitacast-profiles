local profile = {};
local sets = {
    ['idle_Priority'] = {
        Head = { 'Denali Bonnet', 'Maat\'s Cap', 'Destrier Beret' },
        Neck = 'Orochi Nodowa',
        Ear1 = { 'Merman\'s Earring', 'Optical Earring' },
        Ear2 = { 'Merman\'s Earring', 'Cassie Earring' },
        Body = { 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Melaco Mittens', 'Battle Gloves', 'Ryl.Ftm. Gloves', 'Fsh. Gloves' },
        Ring1 = { 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Mars\'s Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Warp Ring' },
        Back = { 'Shadow Mantle', 'Nomad\'s Mantle +1', 'Traveler\'s Mantle' },
        Waist = { 'Cuchulain\'s Belt', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = 'Denali Kecks',
        Feet = { 'Areion Boots', 'Leaping Boots' },
    },
    ['idle_town'] = {
        Head = 'Denali Bonnet',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Scp. Harness +1',
        Hands = 'Melaco Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Shadow Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = 'Denali Kecks',
        Feet = 'Adsilio Boots +1',
    },
    ['tp_lowacc_Priority'] = {
        Head = { 'Dampening Tam', 'Maat\'s Cap', 'Voyager Sallet', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Suppanomimi', 'Cassie Earring' },
        Ear2 = { 'Hollow Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Optical Earring' },
        Body = { 'Enkidu\'s Harness', 'Pln. Khazagand', 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Floral Gauntlets', 'Battle Gloves', 'Ryl.Ftm. Gloves', 'Fsh. Gloves' },
        Ring1 = { 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Mars\'s Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring', 'Windurstian Ring' },
        Back = { 'Forager\'s Mantle', 'Nomad\'s Mantle +1', 'Traveler\'s Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = { 'Enkidu\'s Subligar', 'Bravo\'s Subligar', 'Brais +1', 'Galkan Braguette' },
        Feet = { 'Battle Boots', 'Areion Boots', 'Leaping Boots' },
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
    ['ws_Priority'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = { 'Brigandine +1' },
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
        Body = 'Hecatomb Harness',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Assassin\'s Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Oily Trousers',
        Feet = 'Adsilio Boots +1',
    },
	['movement'] = {
		Feet = 'Areion Boots',
	},
    ['ranged_Priority'] = {
        Head = 'Emperor Hairpin',
        Neck = 'Peacock Amulet',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = { '', 'Brigandine +1' },
        Hands = 'Jaridah Bazubands',
        Ring1 = 'Jalzahn\'s Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = { '', 'Nomad\'s Mantle +1' },
        Waist = 'Precise Belt',
        Legs = 'Bravo\'s Subligar',
        Feet = { 'Adsilio Boots +1', 'Areion Boots', 'Leaping Boots' },
    },
	['ta_Priority'] = {
        Head = 'Maat\'s Cap',
        Neck = { 'Peacock Amulet', '', '' },
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = { 'Brigandine +1', 'Eminence Doublet' },
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Jadeite Ring',
        Ring2 = { 'Zilant Ring', },
        Back = 'Forager\'s Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = 'Oily Trousers',
        Feet = { 'Adsilio Boots +1', 'Areion Boots', 'Leaping Boots' },
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
	currentlevel = 0, -- Used for Levelsync gear determination
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

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /thf /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd th');

    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 021');

end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /thf');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
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
	local hasTA = gData.GetBuffCount('Trick Attack');
	local hasSA = gData.GetBuffCount('Sneak Attack');
	
	-- *****************************************************
	-- ********Used for Levelsync gear determination********
	local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	
    if (myLevel ~= settings.currentlevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        settings.currentlevel = myLevel;
	end
	-- *************************End*************************
	-- *****************************************************

    if player.Status == 'Engaged' then
		if (hasTA == 1) then
		
			return;
		end
		if (hasSA == 1) then
		
			return;
		end
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
        gFunc.EquipSet(sets.movement);
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
	gFunc.EquipSet(sets.ranged);
end

profile.HandleWeaponskill = function()

    local ws = gData.GetAction();

    gFunc.EquipSet(sets.ws); -- Generic WS set

    if ws.Name == 'Exenterator' then
        gFunc.EquipSet(sets.exen);
    end

end

return profile;