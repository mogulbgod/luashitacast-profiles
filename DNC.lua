local profile = {};
local sets = {
    ['idle_Priority'] = {
        Head = { 'Etoile Tiara', 'Destrier Beret' },
        Neck = 'Orochi Nodowa',
        Ear1 = { 'Hollow Earring', 'Optical Earring' },
        Ear2 = { 'Megasco Earring', 'Cassie Earring' },
        Body = { 'Etoile Casaque', 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Etoile Bangles',  'Battle Gloves', 'Ryl.Ftm. Gloves', 'Fsh. Gloves' },
        Ring1 = { 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Mars\'s Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Warp Ring' },
        Back = { 'Aesir Mantle', 'Nomad\'s Mantle +1', 'Traveler\'s Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = { 'Etoile Tights', 'Brais +1', 'Galkan Braguette' },
        Feet = { 'Etoile Toe Shoes', 'Battle Boots', 'Leaping Boots' },
    },
	['idle_town'] = {
        Head = 'Etoile Tiara',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Choreia Earring',
        Ear2 = 'Roundel Earring',
        Body = 'Etoile Casaque',
        Hands = 'Etoile Bangles',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Etoile Tights',
        Feet = 'Etoile Toe Shoes',
    },
	['tp_lowacc_Priority'] = {
        Head = { 'Dampening Tam', 'Maat\'s Cap', 'Voyager Sallet', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Suppanomimi', 'Cassie Earring' },
        Ear2 = { 'Brutal Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Optical Earring' },
        Body = { 'Enkidu\'s Harness', 'Pln. Khazagand', 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Dusk Gloves', 'Battle Gloves', 'Ryl.Ftm. Gloves', 'Fsh. Gloves' },
        Ring1 = { 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Mars\'s Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring', 'Windurstian Ring' },
        Back = { 'Aesir Mantle', 'Nomad\'s Mantle +1', 'Traveler\'s Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = { 'Etoile Tights', 'Dancer\'s Tights', 'Brais +1', 'Galkan Braguette' },
        Feet = { 'Dusk Ledelsens', 'Battle Boots', 'Leaping Boots' },
    },
	['tp_medacc'] = {
        Range = 'Potestas Bomblet',
        Head = 'Dampening Tam',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Megasco Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Pln. Dastanas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Etoile Tights',
        Feet = 'Dusk Ledelsens',
    },
	['tp_highacc'] = {
        Range = 'Potestas Bomblet',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Pln. Dastanas',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Oily Trousers',
        Feet = 'Dancer\'s Toe Shoes',
    },
    ['tp_tank'] = {
        Head = 'Dampening Tam',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Pln. Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Ecphoria Ring',
        Back = 'Shadow Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Etoile Tights',
        Feet = 'Dusk Ledelsens',
    },
    ['waltz'] = {
        Head = 'Etoile Tiara',
        Neck = 'Flower Necklace',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Delta Earring',
        Body = 'Dancer\'s Casaque',
        Hands = 'Melaco Mittens',
        Ring1 = 'Light Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Corsette',
        Legs = 'Cln. Subligar +1',
        Feet = 'Dance Shoes +1',
    },
	['jig'] = {
        Legs = 'Etoile Tights',
        Feet = 'Dancer\'s Toe Shoes',
    },
	['samba'] = {
        --Ammo = 'Happy Egg',
        Head = 'Dancer\'s Tiara',
        
    },
	['violentflourish_Priority'] = {
		Head = { 'Optical Hat', 'Precision Bandana' },
        Neck = { 'Peacock Amulet', 'Focus Collar' },
		Ear1 = { 'Luminous Earring', 'Wilder. Earring +1' },
        Ear2 = { 'Hollow Earring', 'Optical Earring', },
		Body = 'Etoile Casaque'; --Increases VF effect
		Hands = { 'Dancer\'s Bangles', 'Battle Gloves' },
        Ring1 = { 'Mars\'s Ring', 'Sniper\'s Ring', },
        Ring2 = { 'Sniper\'s Ring +1', 'Jaeger Ring', },
		Back = 'Accura Cape',
        Waist = { 'Virtuoso Belt', },
        Legs = { 'Denali Kecks', 'Dancer\'s Tights', 'Brais +1', },
        Feet = 'Battle Boots',
	},
	-- Melee accuracy helps with step accuracy
	['steps_Priority'] = {
        Head = { 'Optical Hat', 'Precision Bandana' },
        Neck = { 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Choreia Earring', 'Wilder. Earring +1' }, -- Increases Step accuracy
        Ear2 = { 'Hollow Earring', 'Optical Earring', },
        Body = { 'Pln. Khazagand', 'Scp. Harness +1', 'Eminence Doublet' },
        Hands = { 'Dancer\'s Bangles', 'Battle Gloves' },
        Ring1 = { 'Mars\'s Ring', 'Sniper\'s Ring', },
        Ring2 = { 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', },
        Back = 'Accura Cape',
        Waist = { 'Virtuoso Belt', },
        Legs = { 'Denali Kecks', 'Dancer\'s Tights', 'Brais +1', },
        Feet = 'Etoile Toe Shoes', -- Improves Step Accuracy
    },
    ['ranged'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Crested Torque',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Barb. Moufles',
        Ring1 = 'Dragon Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Psilos Mantle',
        Waist = 'Buccaneer\'s Belt',
        Legs = 'Oily Trousers',
        Feet = 'Adsilio Boots +1',
    },
    ['pyrrhic_lowacc'] = {
        Head = 'Etoile Tiara',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Hollow Earring',
        Body = 'Etoile Casaque',
        Hands = 'Etoile Bangles',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Aesir Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Etoile Tights',
        Feet = 'Agrona\'s Leggings',
    },
    ['evis_default'] = {
        --Range = 'Tiphia Sting',
        Head = 'Emperor Hairpin',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Hollow Earring',
        Body = 'Etoile Casaque',
        Hands = 'Etoile Bangles',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Aesir Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Etoile Tights',
        Feet = 'Agrona\'s Leggings',
    },
    ['exen'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Wilhelm\'s Earring',
        Ear2 = 'Altdorf\'s Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Etoile Bangles',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Oily Trousers',
        Feet = 'Adsilio Boots +1',
    },
    ['matk'] = {
        --Ammo = 'Jasper Tathlum',
        Head = 'Walahra Turban',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Crapaud Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Aesir Mantle',
        Waist = 'Salire Belt',
        Legs = 'Denali Kecks',
        Feet = 'Agrona\'s Leggings',
    },
    ['movement_one'] = { -- Lv.30 and below
        Head = 'Destrier Beret',
    },
	['movement_two'] = { -- Lv.30 and up
        Body = 'Kupo Suit',
        Legs = 'displaced',
    },
    ['tank'] = {
        --Ammo = 'Happy Egg',
        Head = 'Denali Bonnet',
        Neck = 'Fortitude Torque',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Scp. Harness +1',
        Hands = 'Melaco Mittens',
        Ring1 = 'Alert Ring',
        Ring2 = 'Setae Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Denali Kecks',
        Feet = 'Etoile Toe Shoes',
    },
    ['enmity'] = {
        Head = 'Etoile Tiara',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Eris\' Earring',
        Hands = 'Etoile Bangles',
        Ring2 = 'Corneus Ring',
        Waist = 'Warwolf Belt',
    },
	['range_weapon_Priority'] = {
        Range = { 'War Hoop', 'Rogetsurin', },
    },

};

local settings = {
	tpvariant = 1,
	diset = false,
	currentlevel = 0, -- Used for Levelsync gear determination
};

local Swords = T{ 'Joyeuse', };
local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };

local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    [4] = 'tank',
};



profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	
	AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	
	
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /dnc /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 051'); -- Uses and equipset macro to lockstyle to
	
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /dnc');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
end

profile.HandleCommand = function(args)

	if (args[1] == 'tpset') then
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
	
	-- *****************************************************
	-- ********Used for Levelsync gear determination********
	local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	
    if (myLevel ~= settings.currentlevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        settings.currentlevel = myLevel;
	end
	-- *************************End*************************
	-- *****************************************************
	
	if (player.Status == 'Engaged') then
		gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
	elseif (player.Status == 'Resting') then
		gFunc.EquipSet(sets.rest);
	else
		if towns:contains(zone.Area) then
			gFunc.EquipSet(sets.idle_town);
		else
			gFunc.EquipSet(sets.idle);
		end
	end

	if (player.IsMoving) then
		if (myLevel < 31) then
			gFunc.EquipSet(sets.movement_one);
		else
			gFunc.EquipSet(sets.movement_two);
		end
	end

end

profile.HandleAbility = function()

	local action = gData.GetAction();

	if string.match(action.Name, 'Waltz') then
		gFunc.EquipSet(sets.waltz);
	elseif string.match(action.Name, 'Jig') then
		gFunc.EquipSet(sets.jig);
	elseif string.match(action.Name, 'Step') then
		gFunc.EquipSet(sets.steps);
	elseif string.match(action.Name, 'Samba') then
		gFunc.EquipSet(sets.samba);
	elseif (action.Name == 'Violent Flourish') then -- Stun
		gFunc.EquipSet(sets.violentflourish);
    elseif (action.Name == 'Provoke') or (action.Name == 'Animated Flourish') then
        gFunc.EquipSet(sets.enmity);
    elseif (action.Name == '') then
        --gFunc.EquipSet(sets.enmity);
	end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.range_weapon);
end

profile.HandleMidshot = function()
	gFunc.EquipSet(sets.ranged);
end

profile.HandleWeaponskill = function()

	local ws = gData.GetAction();

	if (ws.Name == 'Pyrrhic Kleos') then
		gFunc.EquipSet(sets.pyrrhic_lowacc);
	elseif (ws.Name == 'Evisceration') then
		gFunc.EquipSet(sets.evis_default);
	elseif (ws.Name == 'Exenterator') then
		gFunc.EquipSet(sets.exen);
	elseif (ws.Name == 'Aeolian Edge') then
		gFunc.EquipSet(sets.matk);
    end

end

return profile;