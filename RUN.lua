local profile = {};
local sets = {
    ['lunge'] = {
        Neck = 'Chivalrous Chain',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Futhark Cape',
        Waist = 'Salire Belt',
        Legs = 'Hydra Cuisses',
        Feet = 'Shrewd Pumps',
    },
    ['idle_Priority'] = {
        Head = { 'Walahra Turban', 'Optical Hat', 'Voyager Sallet', 'Destrier Beret' },
        Neck = 'Orochi Nodowa',
        Ear1 = { 'Magnetic Earring', 'Optical Earring' },
        Ear2 = { 'Astral Earring', 'Cassie Earring' },
        Body = { 'Futhark Coat', 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Runeist Mitons', 'Alkyoneus\'s Brc.', 'Combat Mittens +1', 'Garrison Gloves', 'Battle Gloves' },
        Ring1 = { 'Succor Ring', 'Flame Ring', 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = 'Warp Ring',
        Back = 'Lamia Mantle',
        Waist = 'Al Zahbi Sash',
        Legs = { 'Futhark Trousers', 'Enkidu\'s Subligar', 'Phl. Trousers', 'Solid Cuisses', 'Galkan Braguette' },
        Feet = { 'Futhark Boots', 'Battle Boots', 'Leaping Boots', '' }
    },
	['tp_default_Priority'] = {
        Head = { 'Walahra Turban', 'Optical Hat', 'Voyager Sallet', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Magnetic Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Cassie Earring' },
        Ear2 = { 'Suppanomimi', 'Optical Earring' },
        Body = { 'Futhark Coat', 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Runeist Mitons', 'Alkyoneus\'s Brc.', 'Combat Mittens +1', 'Battle Gloves' },
        Ring1 = { 'Succor Ring', 'Flame Ring', 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Aqua Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring' },
        Back = { 'Futhark Cape', 'Ryl. Army Mantle', 'Accura Cape', 'Fidelity Mantle', 'Traveler\'s Mantle' },
        Waist = { 'Warwolf Belt', 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = { 'Futhark Trousers', 'Enkidu\'s Subligar', 'Phl. Trousers', 'Solid Cuisses', 'Galkan Braguette' },
        Feet = { 'Futhark Boots', 'Battle Boots', 'Leaping Boots' }
    },
    ['haste'] = {
        Head = 'Walahra Turban',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Hydra Mail',
        Hands = 'Dusk Gloves',
        Waist = 'Al Zahbi Sash',
        Legs = 'Futhark Trousers',
        Feet = 'Futhark Boots',
    },
    ['precast_Priority'] = {
        Head = { 'Walahra Turban', 'Entrancing Ribbon' },
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Hydra Mail',
        Hands = 'Dusk Gloves',
        Waist = 'Al Zahbi Sash',
        Legs = 'Futhark Trousers',
        Feet = 'Futhark Boots',
    },
	['refresh'] = {
        Ammo = '',
        Head = 'Walahra Turban',
        Neck = 'Chivalrous Chain',
        --Ear1 = 'Magnetic Earring',
        --Ear2 = 'Bushinomimi',
        Body = 'Hydra Mail',
        Hands = 'Pln. Dastanas',
        Back = 'Lamia Mantle',
        Waist = 'Headlong Belt',
        Legs = 'Futhark Trousers',
        Feet = 'Futhark Boots',
    },
    ['savage'] = {
        Head = 'Futhark Bandeau',
        Neck = 'Fotia Gorget',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Futhark Coat',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Ryl. Army Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Futhark Boots',
    },
	['town_relic'] = {
        Head = 'Futhark Bandeau',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Futhark Coat',
        Hands = 'Futhark Mitons',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Flame Ring',
        Back = 'Lamia Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Futhark Trousers',
        Feet = 'Futhark Boots',
    },
	['town_af'] = {
        Head = 'Runeist Bandeau',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Runeist Coat',
        Hands = 'Runeist Mitons',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Flame Ring',
        Back = 'Lamia Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Runeist Boots',
    },
	['matk'] = {
        --Head = 'Futhark Bandeau',
        --Neck = 'Chivalrous Chain',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        --Body = 'Futhark Coat',
        --Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Flame Ring',
        --Back = 'Ryl. Army Mantle',
        --Waist = 'Warwolf Belt',
        --Legs = 'Runeist Trousers',
        Feet = 'Shrewd Pumps',
    },
    ['kiteset'] = {
        Head = 'Hydra Mask',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Eris\' Earring',
        Body = 'Hydra Mail',
        Hands = 'Runeist Mitons',
        Ring1 = 'Succor Ring',
        Ring2 = 'Astral Ring',
        Back = 'Lamia Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Futhark Boots',
    },
    ['tp_acc'] = {
        Head = 'Optical Hat',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Hydra Mail',
        Hands = 'Aiming Bracelets',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Accura Cape',
        Waist = 'Potent Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Runeist Bottes',
    },
    ['tp_mtank'] = {
        Head = 'Hydra Mask',
        Neck = 'Parrying Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Hydra Mail',
        Hands = 'Gavial Fng.Gnt. +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Lamia Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Hydra Greaves',
    },
	['tp_ptank'] = {
        Head = 'Runeist Bandeau',
        Neck = 'Parrying Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Hydra Mail',
        Hands = 'Futhark Mitons',
        Ring1 = 'Jelly Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Hydra Greaves',
    },
    ['tp_hybrid'] = {
        Head = 'Runeist Bandeau',
        Neck = 'Parrying Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Hydra Mail',
        Hands = 'Futhark Mitons',
        Ring1 = 'Succor Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Hydra Greaves',
    },
    ['tp_btank'] = {
        Head = 'Runeist Bandeau',
        Neck = 'Parrying Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Crm. Scl. Mail',
        Hands = 'Futhark Mitons',
        Ring1 = 'Succor Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Hydra Greaves',
    },
    ['ws_groundstrike'] = {
        Head = 'Futhark Bandeau',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Futhark Coat',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Flame Ring',
        Back = 'Psilos Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Runeist Trousers',
        Feet = 'Futhark Boots',
    },
    ['ws_herculean'] = {
        Head = 'Futhark Bandeau',
        Neck = 'Fotia Gorget',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Futhark Coat',
        Hands = 'Gavial Fng.Gnt. +1',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Futhark Trousers',
        Feet = 'Shrewd Pumps',
    },
    ['scat'] = {
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Eris\' Earring',
        Body = 'Futhark Coat',
        Hands = 'Runeist Mitons',
        Ring1 = 'Succor Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Lamia Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Futhark Trousers',
        Feet = 'Futhark Boots',
    },
	['enmity'] = {
        Ear1 = 'Eris\' Earring',
        Ear2 = 'Eris\' Earring',
        Ring2 = 'Corneus Ring',
        Waist = 'Warwolf Belt',
    },
    ['STR'] = {
    },
    ['MND'] = {
    },
    ['INT'] = {
    },
    ['DEX'] = {
    },
    ['AGI'] = {
    },
    ['VIT'] = {
    },
    ['CHR'] = {
    },
};

local towns = T{'Aht Urhgan Whitegate','Al Zahbi','Bastok Markets [S]','Bastok Markets','Bastok Mines','Bastok-Jeuno Airship','Celennia Memorial Library','Chateau d\'Oraguille','Eastern Adoulin','Heavens Tower','Kazham','Kazham-Jeuno Airship','Lower Jeuno','Metalworks','Mhaura','Mog Garden','Nashmau','Norg','Northern San d\'Oria','Port Bastok','Port Jeuno','Port San d\'Oria','Port Windurst','Rabao','Ru\'Lude Gardens','San d\'Oria-Jeuno Airship','Selbina','Southern San d\'Oria [S]','Southern San d\'Oria','Tavnazian Safehold','Upper Jeuno','Western Adoulin','Windurst Walls','Windurst Waters [S]','Windurst Waters','Windurst Woods','Windurst-Jeuno Airship',};

local runes = {
	Ignis = {'Barblizzard','Fire','STR'},
	Gelus = {'Baraero','Ice','DEX'},
	Flabra = {'Barstone', 'Wind', 'VIT'},
	Tellus = {'Bartunder','Earth','AGI'},
	Sulpor = {'Barwater','Thunder','INT'},
	Unda = {'Barfire','Water','MND'},
	Lux = {nil,'Light','CHR'},
	Tenebrae = {nil,'Dark',nil},
};

local settings = {
	tpvariant = 1,
	diset = false;
	autorefresh = true;
	kite = false,
	afpercent = 20;
	currentlevel = 0, -- Used for Levelsync gear determination
};

local tpmodetable = {
    [1] = 'default',
    [2] = 'mtank',
    [3] = 'ptank',
    [4] = 'btank',
    [5] = 'hybrid',
    [6] = 'acc',
};

local costumevartable = {
    [1] = 'relic',
    [2] = 'af',
    [3] = 'none',
};

profile.Sets = sets;

profile.Packer = {
};

local function CastRegen()
	local pLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	local pSyncLevel = gData.GetPlayer().MainJobSync;
	local sName = '';
	
	if (pLevel ~= pSyncLevel) then
		pLevel = pSyncLevel;
	end	
	
	if (pLevel >= 70) then
		sName = 'Regen III';
	elseif (pLevel >= 48) and (pLevel <= 69) then
		sName = 'Regen II';
	elseif (pLevel >= 23) and (pLevel <= 47) then
		sName = 'Regen';
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/echo There was an ERROR. Unable to cast any Regen. Not the correct level.');
	end
	
	AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. sName .. '" <me>');
	
end

local function DoLunge(skillName) -- Not functional yet
	local runeCount = 0; -- We zero the count out on every call.
	local initialBuffs = {}; -- We create a table and leave it empty.
	local leftoverBuffs = {}; -- Create another table for the second check.
	local finalBuffs = {};
	local bCount = 0;
	--523-530
	-- This will check for all the rune ID and see if there is a count for each
	-- then it adds the count to the table whatBuffs.
	for i = 523, 530 do
		bCount = gData.GetBuffCount(i); --check the buff count for each ID
		if (bCount ~= 0) then
			initialBuffs[i] = bCount;
			runeCount = runeCount + bCount;
				if (runeCount == 3) then
					break; -- if there are 3 buffs it can't go higher so just stop checking
				end
		end
	end
	
	-- Do Lunge or Swipe
	if (skillName == 'Lunge') then
		AshitaCore:GetChatManager():QueueCommand(1, '/ja "Lunge" <stnpc>');
	elseif (skillName == 'Swipe') then
		AshitaCore:GetChatManager():QueueCommand(1, '/ja "Swipe" <stnpc>');
	else
		gFunc.Error('There was an error. Supplied wrong job ability, only Lunge or Swipe allowed.');
	end
	
	-- Recheck the runes count to see if any remain
	-- Compare again the old table to see the changes
	-- Replace the ID with the change values
	bCount = 0;
	runeCount = 0;
	for x = 523, 530 do
		if (initialBuffs[1] ~= nil) then -- We check if there is a value if not just skip it
		bCount = gData.GetBuffCount(x); --check the buff count for each ID
			if (bCount ~= 0) then
				leftoverBuffs[x] = bCount;
				runeCount = runeCount + bCount;
					if (runeCount == 3) then 
						break; -- if there are 3 buffs it can't go higher so just stop checking
					end
			end
		end	
	end
	
	-- Now we have 2 tables with the before and after buff counts and we can compare them
	for z = 523, 530 do
		if (initialBuffs[z] ~= nil) then
			firstBuffCount = initialBuffs[z];
			if (leftoverBuffs[z] ~= nil) then
				secondBuffCount = leftoverBuffs[z];
			end
		end
			
	end

end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local player = gData.GetPlayer()
	
	-- Below code will change your macro book to the specified macro book when you load this job
	-- Change the macro book # to your main jobs macro set
	-- Change the macro set # to the palatte for the sub job
	if (player.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 14');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 14');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'RDM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 14');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'NIN') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 14');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 14');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end
	
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /run /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	gFunc.Message('Active Alias - /run [/lac fwd]');
	gFunc.Message('Active Binds - Alt+F1 to cycle TP sets');
	gFunc.Message('Active Binds - Alt+F2 to cycle DI set');
end

profile.OnUnload = function()
	-- Bind clean up
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /run');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
end

profile.HandleCommand = function(args)

	if (args[1] == 'tpset') then
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpmodetable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. string.upper(tpmodetable[settings.tpvariant]));
	elseif (args[1] == 'diset') then
		if (settings.diset == true) then
			settings.diset = false;
		else
			settings.diset = true;
		end
		gFunc.Message('DI Set is now set to ' .. string.upper(tostring(settings.diset)));
	elseif (args[1] == 'autorefresh') then
		if (settings.autorefresh == true) then
			settings.autorefresh = false;
		else
			settings.autorefresh = true;
		end
		gFunc.Message('Auto Refresh Set is now set to ' .. string.upper(tostring(settings.autorefresh)));
	elseif (args[1] == 'kite') then
		if (settings.kite == true) then
			settings.kite = false;
		else
			settings.kite = true;
		end
		gFunc.Message('Kite Mode is now set to ' .. string.upper(tostring(settings.kite)));
	elseif (args[1] == 'test') then
		local wID = gData.GetBuffCount(529);
		gFunc.Message(wID);
	elseif (args[1] == 'cast') then
		if (args[2] == 'regen') then
			CastRegen();
		elseif (args[2] == 'protect') then
		
		end
	end
	
end

profile.HandleDefault = function()

	local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local swordplay = gData.GetBuffCount('Swordplay');
	local rune = gData.GetBuffCount();
	local zone = gData.GetEnvironment().Area;
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

		gFunc.EquipSet('tp_' .. tpmodetable[settings.tpvariant]);
		if (swordplay ~= 0) then
			gFunc.Equip('Hands', 'Futhark Mitons');
		end

	elseif (player.Status == 'Resting') then

		gFunc.EquipSet(sets.rest);
	
    elseif (player.Status == 'Zoning') then

		if (towns:contains(zone)) then
			local x = math.random(#costumevartable);
				if (x == 3) then 
                    gFunc.EquipSet(sets.idle);
                    return;
                else    
				    gFunc.EquipSet('town_' .. costumevartable[x]);
                end
		else
			gFunc.EquipSet(sets.idle);	
		end

	elseif (player.Status == 'Dead') then
	
	else -- This is for the idle set used as a catch all
		
		gFunc.EquipSet(sets.idle);

        if (settings.tpvariant > 1) and (settings.tpvariant < 5) then
            gFunc.EquipSet('tp_' .. tpmodetable[settings.tpvariant]);
        end
		
	end

    if (settings.kite == true) then
		gFunc.EquipSet(sets.kiteset);
	end

    if (player.IsMoving) then
        gFunc.Equip('Legs', 'Blood Cuisses');
    end
    
end

profile.HandleAbility = function()
	local ability = gData.GetAction();
	
	if (ability.Name == 'Lunge' or ability.Name == 'Swipe') then
		gFunc.EquipSet(sets.lunge);
	elseif (ability.Name == 'Battuta') then
		gFunc.Equip('Head', 'Futhark Bandeau');
	elseif (ability.Name == 'Vallation' or 'Valiance') then
		gFunc.Equip('Body', 'Runeist Coat');
	elseif (ability.Name == 'Pflug') then
		gFunc.Equip('Feet', 'Runeist Bottes');
	elseif (ability.Name == 'Gambit') then
		gFunc.Equip('Hands', 'Runeist Mitons');
	elseif (ability.Name == 'Vivacious Pulse') then --Restores HP or MP with dark runes
	
	elseif (ability.Name == 'Swordplay') then
		gFunc.Equip('Head', 'Futhark Mitons');
	elseif (ability.Name == 'Emolden') then
	
	elseif (ability.Name == 'One for All') then
	
	end	
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	local spell = gData.GetAction();
	
	gFunc.EquipSet(sets.precast);
	
	if (spell.Skill == 'Enhancing Magic') then
		gFunc.Equip('Neck', 'Enhancing Torque');
		if string.match(spell.Name, 'Regen') then
			gFunc.Equip('Head', 'Runeist Bandeau');
		end	
	elseif string.match(spell.Name, 'Utsusemi') then
		gFunc.EquipSet(sets.haste);
	elseif (spell.Name == 'Flash') then
		gFunc.EquipSet(sets.enmity);
	
	end	
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local skill = gData.GetAction();
	
	if (skill.Name == 'Savage Blade') then -- 50% STR and 50% MND
		gFunc.EquipSet(sets.savage);
	elseif (skill.Name == 'Ground Strike') then -- 50% STR and 50% INT
		gFunc.EquipSet(sets.ws_groundstrike);
	elseif (skill.Name == 'Herculean Slash') then -- VIT and matk
		gFunc.EquipSet(sets.ws_herculean);
	elseif (skill.Name == 'Requiescat') then -- MND
		gFunc.EquipSet(sets.ws_scat);
	end
	
end

return profile;