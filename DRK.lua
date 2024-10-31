local profile = {};
local sets = {
    ['tp_lowacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Ace\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Assault Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Askar Korazin',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Askar Dirs',
        Feet = 'Homam Gambieras',
    },
    ['tp_medacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Ace\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Askar Korazin',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Askar Dirs',
        Feet = 'Homam Gambieras',
    },
    ['tp_highacc'] = {
        Ammo = 'Fire Bomblet',
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Ear1 = 'Assault Earring',
        Ear2 = 'Hollow Earring',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = 'Accuracy+3' } },
        Hands = { Name = 'Shadow Gauntlets', Augment = { [1] = '"Dbl.Atk."+2', [2] = 'Great Axe skill +5', [3] = '"Resist Slow"+5' } },
        Ring1 = 'Sniper\'s Ring +1',
        Ring2 = 'Oneiros Annulet',
        Back = 'Abyss Cape',
        Waist = 'Virtuoso Belt',
        Legs = 'Askar Dirs',
        Feet = 'Homam Gambieras',
    },
    ['matk_default'] = {
        Ammo = 'Jasper Tathlum',
        Head = 'Walahra Turban',
        Neck = 'Aesir Torque',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Genie Gages',
        Ring1 = 'Galdr Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Abyss Cape',
        Waist = 'Salire Belt',
        Legs = 'Abyss Flanchard',
        Feet = 'Shrewd Pumps',
    },
    ['lockstyle'] = {
        Head = 'Abyss Burgeonet',
        Body = 'Shadow Brstplate',
        Hands = 'Abyss Gauntlets',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['idle_town'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Abyss Burgeonet',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Megasco Earring',
        Body = 'Shadow Brstplate',
        Hands = 'Abyss Gauntlets',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Abyss Flanchard',
        Feet = 'Askar Gambieras',
    },
    ['idle'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Abyss Burgeonet',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Colossus\'s Earring',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = 'Accuracy+3' } },
        Hands = 'Melaco Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Setae Ring',
        Back = 'Colossus\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Abyss Flanchard',
        Feet = 'Askar Gambieras',
    },
	['ws_default_lowacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_default_medacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_default_highacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['ws_guillotine_lowacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_guillotine_medacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_guillotine_highacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Sniper\'s Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Abyss Cape',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['ws_cr_lowacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_cr_medacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_cr_highacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Abyss Cape',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['ws_sturm_lowacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = '"Zanshin"+3' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Abyss Cape',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_sturm_medacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['ws_sturm_highacc'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Sniper\'s Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Abyss Cape',
        Waist = 'Potent Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['no_food'] = {
        Hands = 'Sadhu Bracelets',
    },
	['dark_magic'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Walahra Turban',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Abs. Cuirass +1',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Clear Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Abyss Cape',
        Waist = 'Salire Belt',
        Legs = 'Abyss Flanchard',
        Feet = 'Shrewd Pumps',
    },
    ['ws_str_lowacc'] = {
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Resist Bind"+4', [2] = '"Conserve TP"+5', [3] = 'DEX+4' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['ws_str_medacc'] = {
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Resist Bind"+4', [2] = '"Conserve TP"+5', [3] = 'DEX+4' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['ws_str_highacc'] = {
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Resist Bind"+4', [2] = '"Conserve TP"+5', [3] = 'DEX+4' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['ws_groundstrike'] = {
        Main = 'Kaquljaan',
        Sub = 'Pole Grip',
        Ammo = 'Fire Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Resist Bind"+4', [2] = '"Conserve TP"+5', [3] = 'DEX+4' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Flame Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Fierce Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
};

local settings = {
	tpvariant = 1,
	diset = false,
	autohasso = false,
	autoseigan = false,
	autoberserk = false,
    weather = false,
    timepassed = 0;
};

-- Use these names when creating tp sets
-- like tp_default when you add a set via the /lac addset command
-- i.e /lac addset tp_default
-- This will allow you to switch between different tp gear sets
local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    [4] = 'tank'
};

local function Play_Sound(TheFile)
	local path = string.format('%sconfig\\addons\\luashitacast\\resources\\sounds\\' .. TheFile, AshitaCore:GetInstallPath());
	ashita.misc.play_sound(path);
end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	local subjob = gData.GetPlayer()
	
	if (subjob.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	elseif (subjob.SubJob == 'SAM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /drk /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd autohasso');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd autoseigan');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd autoberserk');
	
	gFunc.LockStyle(sets.lockstyle);
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /drk');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5');
end

profile.HandleCommand = function(args)
    if (args[1] == 'autohasso') then
		if (settings.autohasso == true) then
			settings.autohasso = false;
		else
			settings.autohasso = true;
		end
		gFunc.Message('Auto Hasso is now set to ' .. string.upper(tostring(settings.autohasso)));
	elseif (args[1] == 'autoberserk') then
		if (settings.autoberserk == true) then
			settings.autoberserk = false;
		else
			settings.autoberserk = true;
		end
		gFunc.Message('Auto Berserk is now set to ' .. string.upper(tostring(settings.autoberserk)) .. ' a Work In Progress');
	elseif (args[1] == 'tpset') then
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvarianttable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. string.upper(tpvarianttable[settings.tpvariant]));
	elseif (args[1] == 'test') then
        if (settings.weather == false) then
            settings.weather = true;
        else
            settings.weather = false;
        end
        gFunc.Message('Watch Weather is now set to ' .. string.upper(tostring(settings.weather)));
    elseif (args[1] == 'weather') then
        local wea = gData.GetEnvironment();
        gFunc.Message('Current weather is: ' .. chat.success(wea.Weather));
    end
end

profile.HandleDefault = function()
	local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local hasso = gData.GetBuffCount('Hasso');
	local seigan = gData.GetBuffCount('Seigan');
	local berserk = gData.GetBuffCount('Berserk');
    local wea = gData.GetEnvironment();
	
	if (player.Status == 'Engaged') then
		-- Auto Hasso works 100%
		if (settings.autohasso == true) and (hasso == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Hasso" <me>');
		end

		-- Auto Hasso works 100%
		if (settings.autoseigan == true) and (seigan == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Seigan" <me>');
		end

		-- Auto Berserk is a work in progress
		if (settings.autoberserk == true) and (berserk == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Berserk" <me>');
		end
			-- This line is what changes your gear to the set you've selected
			gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
		
		
	elseif (player.Status == 'Resting') then
	
		gFunc.EquipSet(sets.rest);
		
	else
	
		gFunc.EquipSet(sets.idle);
		
	end

    if (player.IsMoving) then
        gFunc.Equip('Legs', 'Blood Cuisses')
    end

    if (settings.weather == true) and (wea.Weather == 'Fog') then
        if (settings.timepassed > settings.timepassed + 10) or (settings.timepassed == 0) then
            settings.timepassed = os.time();
            Play_Sound('foggyweathervoice.wav');
        end
    end

end

profile.HandleAbility = function()

    local player = gData.GetPlayer(); -- Info about the player if needed
	local ability = gData.GetAction(); -- Determines the ability you're taking
	
	if (ability.Name == '') then
		--gFunc.EquipSet(sets.ws_resolution);
	elseif (ability.Name == '') then
		--gFunc.EquipSet(sets.ws_kingsjustice);
	elseif (ability.Name == '') then
		--gFunc.EquipSet(sets.fullbreak);	
	elseif (ability.Name == '') then
		--gFunc.EquipSet(sets.ws_groundstrike);
	elseif (ability.Name == '') then
		--gFunc.EquipSet(sets.blah);
	elseif (ability.Name == '') then
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif (ability.Name == '') then
		--gFunc.EquipSet(sets.putsetnamehere);
	else
		-- This is a catch all/default set
		--gFunc.EquipSet(sets.ws);
	end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

	local spell = gData.GetAction();
	
	if (spell.Skill == 'Elemental Magic') then
		gFunc.EquipSet(sets.matk_default);
	elseif (spell.Skill == 'Dark Magic') then
		gFunc.EquipSet(sets.dark_magic);
	elseif (spell.Skill == 'Enfeeble Magic') then
		gFunc.EquipSet(sets.matk_default);
	else
		gFunc.EquipSet(sets.matk_default);
	end
    
end

profile.HandleMidcast = function()

    local spell = gData.GetAction();
	
	if (spell.Skill == 'Elemental Magic') then
		gFunc.EquipSet(sets.matk_default);
	elseif (spell.Skill == 'Dark Magic') then
		gFunc.EquipSet(sets.dark_magic);
	elseif (spell.Skill == 'Enfeeble Magic') then
		gFunc.EquipSet(sets.matk_default);
	else
		gFunc.EquipSet(sets.matk_default);
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local player = gData.GetPlayer(); -- Info about the player if needed
	local ws = gData.GetAction(); -- Determines the action you're taking
	
	if (ws.Name == 'Resolution') then
		gFunc.EquipSet('ws_str_' .. tpvarianttable[settings.tpvariant]);
	elseif (ws.Name == 'King\'s Justice') then
		--gFunc.EquipSet(sets.ws_kingsjustice);
	elseif (ws.Name == 'Weapon Break') then
		--gFunc.EquipSet(sets.fullbreak);
    elseif (ws.Name == 'Armor Break') then
		--gFunc.EquipSet(sets.fullbreak);
	elseif (ws.Name == 'Ground Strike') then
		gFunc.EquipSet('ws_str_' .. tpvarianttable[settings.tpvariant]);
	elseif (ws.Name == 'Guillotine') then
		gFunc.EquipSet('ws_guillotine_' .. tpvarianttable[settings.tpvariant]);
	elseif (ws.Name == 'Cross Reaper') then
		gFunc.EquipSet('ws_cr_' .. tpvarianttable[settings.tpvariant]);
	elseif (ws.Name == 'Sturmwind') then
		gFunc.EquipSet('ws_strum_' .. tpvarianttable[settings.tpvariant]);
	elseif (ws.Name == 'Steel Cyclone') then
		gFunc.EquipSet('ws_str_' .. tpvarianttable[settings.tpvariant]);
    elseif (ws.Name == 'Ground Strike') then
		gFunc.EquipSet(sets.ws_groundstrike);
    else
		-- This is a catch all/default set
		gFunc.EquipSet(sets.ws_medacc);
	end
end

return profile;