local profile = {};
local sets = {
    ['songdebuff'] = {
        Head = 'Bard\'s Roundlet',
        Neck = 'Incanter\'s Torque', 
        Ear1 = 'Singing Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Sha\'ir Gages',
        Ring1 = 'Light Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = 'Dance Shoes +1',
    },
    ['tp_lowacc_Priority'] = {
        Head = { 'Optical Hat', 'Voyager Sallet', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Suppanomimi', 'Optical Earring' },
        Ear2 = { 'Brutal Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Cassie Earring' },
        Body = { 'Bard\'s Jstcorps', 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Dusk Gloves', 'Alkyoneus\'s Brc.', 'Combat Mittens +1', 'Garrison Gloves', 'Battle Gloves' },
        Ring1 = { 'Strigoi Ring', 'Flame Ring', 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Aqua Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring' },
        Back = { 'Bard\'s Cape', 'Ryl. Army Mantle', 'Accura Cape', 'Fidelity Mantle', 'Traveler\'s Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = { 'Sha\'ir Seraweels', 'Enkidu\'s Subligar', 'Linen Slops', 'Galkan Braguette' },
        Feet = { 'Battle Boots', 'Leaping Boots' }
    },
	['tp_lowacc_magesub_Priority'] = {
        Head = { 'Optical Hat', 'Voyager Sallet', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Suppanomimi', 'Optical Earring' },
        Ear2 = { 'Brutal Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Energy Earring +1' },
        Body = { 'Bard\'s Jstcorps', 'Scp. Harness +1', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Dusk Gloves', 'Alkyoneus\'s Brc.', 'Combat Mittens +1', 'Garrison Gloves', 'Battle Gloves' },
        Ring1 = { 'Strigoi Ring', 'Flame Ring', 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Aqua Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Astral Ring' },
        Back = { 'Bard\'s Cape', 'Ryl. Army Mantle', 'Accura Cape', 'Fidelity Mantle', 'Traveler\'s Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = { 'Sha\'ir Seraweels', 'Enkidu\'s Subligar', 'Linen Slops', 'Galkan Braguette' },
        Feet = { 'Dusk Ledelsens', 'Battle Boots', 'Leaping Boots' }
    },
    ['precast_Priority'] = {
        Head = { 'Furia Tam', 'Entrancing Ribbon' },
		Ear2 = { 'Loquac. Earring' },
        Body = { 'Dalmatica' },
		Hands = { 'Sha\'ir Gages' },
        Back = { 'Veela Cape' },
        Waist = { 'Salire Belt' },
        Legs = { 'Bard\'s Cannions' },
        Feet = { 'Rostrum Pumps' },
    },
    ['song_midcast_Priority'] = {
        Head = 'Bard\'s Roundlet',
        Neck = { 'Incanter\'s Torque', 'Elementium Torque' }, 
        Ear1 = 'Singing Earring',
        Ear2 = 'Delta Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Sha\'ir Gages',
        Ring1 = 'Light Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = 'Dune Sandals',
    },
    ['idle_Priority'] = {
        Head = 'Sha\'ir Turban',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Singing Earring',
        Ear2 = 'Loquac. Earring',
        Body = { 'Sha\'ir Manteel', 'Scp. Harness +1', 'Brigandine +1' },
        Hands = 'Melaco Mittens',
        Ring1 = 'Light Ring',
        Ring2 = 'Insect Ring',
        Back = 'Cheviot Cape',
        Waist = 'Corsette',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Dune Sandals',
    },
    ['string'] = {
		Neck = 'String Torque',
        Feet = 'Bard\'s Slippers',
    },
    ['wind'] = {
		Hands = 'Bard\'s Cuffs',
        Ring2 = 'Trumpet Ring',
    },
    ['idle_town'] = {
        Range = 'Horn +1',
        Head = 'Walahra Turban',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Sha\'ir Gages',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Cheviot Cape',
        Waist = 'Corsette',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Dune Sandals',
    },
    ['cure'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Fylgja Torque +1',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Loquac. Earring',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Errant Cape',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
    },
	['dex'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Fylgja Torque +1',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Loquac. Earring',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Errant Cape',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
    },
};

local instruments = {
    [0] = { -- Wind Instruments, add name of instrument to use for specific song types
        ['March'] = 'Faerie Piccolo',
        ['Paeon'] = 'none',
        ['Ballad'] = 'none',
        ['Lullaby'] = 'Cradle Horn',
        ['Minuet'] = 'Cornette +1',
        ['Minne'] = 'none',
        ['Madrigal'] = 'Traversiere +1',
        ['Elegy'] = 'Horn +1',
        ['Requiem'] = 'none',
        ['Therondy'] = 'none',
        ['Etude'] = 'none',
        ['Mambo'] = 'none',
        ['Finale'] = 'none',
        ['Mazurka'] = 'Cradle Horn',
        ['Other'] = 'none',
    },
    [1] = { --String Instrunments, add name of instrument to use for specific song typeskkki
        ['March'] = 'none',
        ['Paeon'] = 'none',
        ['Ballad'] = 'none',
        ['Lullaby'] = 'none',
        ['Minuet'] = 'none',
        ['Minne'] = 'none',
        ['Madrigal'] = 'none',
        ['Elegy'] = 'none',
        ['Requiem'] = 'none',
        ['Therondy'] = 'none',
        ['Etude'] = 'none',
        ['Mambo'] = 'none',
        ['Finale'] = 'none',
        ['Mazurka'] = 'none',
        ['Other'] = 'none',
    }
};

local settings = {
    instrVar = 0, -- 0 = Wind Instruments and 1 = string instruments
	currentlevel = 0, -- Used for Levelsync gear determination
	forceMeleeSet = false, -- If you want a specific set to be used even when you have a mage sub
	swapInstr = true, -- If you don't have Gjallarhorn set to true
};

local elements = T{ -- Change any grips to be used for a specific element
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

local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };

local StringInstr = T{};
local WindInstr = T{};

local function LoadInstruments()

    for key, i in pairs(instruments[0]) do
        if (i ~= 'none') then
            table.insert(WindInstr, i);
        end
    end
    for key, i in pairs(instruments[1]) do
        if (i ~= 'none') then
            table.insert(StringInstr, i);
        end
    end

end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 23');
	AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /brd /lac fwd');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd forcemelee'); -- ALT+F1 forces use of a specific set for Melee
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd instr'); -- ALT+F2 changes instrument type

    LoadInstruments();
	
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 045'); -- Sets and equipset as a lockstyle

end

profile.OnUnload = function()

	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /brd');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
end

profile.HandleCommand = function(args)
	if (args[1] == 'forcemelee') then
		if (settings.forceMeleeSet == false) then
			settings.forceMeleeSet = true;
			gFunc.Message('Force Melee Set is ACTIVE');
		else
			settings.forceMeleeSet = false;
			gFunc.Message('Force Melee Set is INACTIVE');
		end
		
	elseif (args[1] == 'instr') then
		if (settings.forceMeleeSet == 0) then
			settings.forceMeleeSet = 1;
			gFunc.Message('STRING Instruments ACTIVE');
		else
			settings.forceMeleeSet = 0;
			gFunc.Message('WIND Instruments ACTIVE');
		end
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
		if (player.SubJob == 'WHM') then
			gFunc.EquipSet(sets.tp_lowacc_magesub);
		else
			gFunc.EquipSet(sets.tp_lowacc);
		end
    elseif (player.Status == 'Idle') then
        if (towns:contains(zone.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
            if player.SubJob == 'WHM' or player.SubJob == 'RDM' then
                if (myLevel >= 73) then
					gFunc.Equip('Body', 'Dalmatica');
				elseif (myLevel >= 59) and (myLevel <= 72) then
					gFunc.Equip('Head', '');
					gFunc.Equip('Body', 'Vermillion Cloak');
				end
            end
        end
    end
	
	if (player.IsMoving) then
		if (myLevel >= 31) then
			gFunc.Equip('Body', 'Kupo Suit');
		end
    end
	
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local song = gData.GetAction();
	local instr = gData.GetEquipment().Range;

    gFunc.EquipSet(sets.precast);
	
	if (settings.instrVar == 0) then
		--Wind skill set)
	elseif (settings.instrVar == 1) then
		--String skill set
	end

    if (song.Type == 'Bard Song') then
	
		-- Equip the correct instrument for the type of song if you don't have a Gjallarhorn
        if (settings.forceMeleeSet == false) then
			gFunc.Equip('Range', instruments[settings.instrVar].Other);-- Default instrument
			if (song.Name:contains('March')) then
				gFunc.Equip('Range', instruments[settings.instrVar].March);
			elseif (song.Name:contains('Minuet')) then
				gFunc.Equip('Range', instruments[settings.instrVar].Minuet);
			elseif (song.Name:contains('Minne')) then
				gFunc.Equip('Range', instruments[settings.instrVar].Minne);
			elseif (song.Name:contains('Elegy')) then
				gFunc.Equip('Range', instruments[settings.instrVar].Elegy);
			elseif (song.Name:contains('Lullaby')) then
				gFunc.Equip('Range', instruments[settings.instrVar].Lullaby);
			elseif (song.Name:contains('Madrigal')) then
				gFunc.Equip('Range', instruments[settings.instrVar].Madrigal);
			elseif (song.Name:contains('Requiem')) then
				gFunc.Equip('Range', instruments[settings.instrVar].Requiem);
			elseif (song.Name:contains('Paeon')) then
				gFunc.Equip('Range', instruments[settings.instrVar].Paeon);
			end
		end
		-- End instrument change
		
		-- Put gear on for Wind or String instr
		if not instr == nil then
			if (WindInstr:contains(instr.Name)) then
				gFunc.EquipSet(sets.wind);
			end
			if (StringInstr:contains(instr.Name)) then
				gFunc.EquipSet(sets.string);
			end
		end
		-- Wind or String specific gear logic
		
    end

end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    local instr = gData.GetEquipment().Range;
    local weapon = gData.GetEquipment().Main;

    if (weapon ~= nil) and (weapon.Name:contains('Staff')) then
        gFunc.Equip('Sub', elements[spell.Element][1]);
    end

    if (spell.Type == 'Bard Song') then
        gFunc.EquipSet(sets.song_midcast);
		if not instr == nil then
			if (WindInstr:contains(instr.Name)) then
				gFunc.EquipSet(sets.wind);
			end
			if (StringInstr:contains(instr.Name)) then
				gFunc.EquipSet(sets.string);
			end
		end
    else
        --gFunc.EquipSet(sets.midcast);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();
	
	if (ws.Name == 'Wasp Sting') then -- 100% DEX
		--gFunc.EquipSet(sets.SetName);
	elseif (ws.Name == 'Evisceration') then -- 50% DEX
		--gFunc.EquipSet(sets.SetName);
	elseif (ws.Name == 'Exenterator') then -- 85% AGI on CatsEye
		--gFunc.EquipSet(sets.SetName);
	elseif (ws.Name == 'Viper Bite') then -- 100% DEX, Doubles Attack
		--gFunc.EquipSet(sets.SetName);
	elseif (ws.Name == '') then
		--gFunc.EquipSet(sets.SetName);
	elseif (ws.Name == '') then
		--gFunc.EquipSet(sets.SetName);
	else -- Generic WS set
		--gFunc.EquipSet(sets.SetName);
	
	end
	
end

return profile;