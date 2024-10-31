local profile = {};
local sets = {
	['idle'] = {
        Head = 'Conqueror\'s Helm',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Assault Earring',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
	['tp_lowacc'] = {
        Head = 'Walahra Turban', --5% haste
        Neck = 'Chivalrous Chain', --stp+1
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Askar Korazin', --stp+5
        Hands = 'Dusk Gloves', --3% haste
        Ring1 = 'Rajas Ring', --stp+5
        Ring2 = 'Mar\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash', --6% haste
        Legs = 'Byakko\'s Haidate', --5% haste
        Feet = 'Aurum Sabatons', --2% haste
    },
    ['tp_medacc'] = {
        Head = 'Conqueror\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jaeger Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Aurum Sabatons',
    },
	['tp_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Shadow Brstplate',
        Hands = 'Ryl.Kgt Mufflers',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Warrior\'s Cuisses',
        Feet = 'Aurum Sabatons',
    },
	['tp_tank'] = {
        Head = 'Oneiros Barbut',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Kirin\'s Osode',
        Hands = 'Melaco Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Warrior\'s Cuisses',
        Feet = 'Askar Gambieras',
    },
	['ws_default'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Conqueror\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Askar Gambieras',
    },
    ['ws_guillotine'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Conqueror\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Askar Gambieras',
    },
    ['ws_cr'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Conqueror\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Askar Gambieras',
    },
    ['ws_sturm'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Conqueror\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Body = 'Shadow Brstplate',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Askar Gambieras',
    },
    ['ws_scat'] = {
        Ammo = 'Fire Bomblet',
        Head = 'Conqueror\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Melaco Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Warrior\'s Cuisses',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+1', [2] = 'Haste+3' } },
    },
	['no_food'] = {
        Hands = 'Sadhu Bracelets',
    },
    ['str'] = {
        Head = 'Conqueror\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = 'Accuracy+3' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Warrior\'s Cuisses',
        Feet = 'Askar Gambieras',
    },
    ['movement'] = {
        Neck = 'Orochi Nodowa',
        Hands = 'Alkyoneus\'s Brc.',
        Feet = 'Hermes\' Sandals',
    },
    ['fell_set'] = {
        Main = 'Oneiros Axe',
        Sub = 'Pole Grip',
        Ammo = 'Fire Bomblet',
        Head = 'Oneiros Barbut',
        Neck = 'Fortitude Torque',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Pagondas Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = { Name = 'Shadow Gauntlets', Augment = { [1] = '"Dbl.Atk."+2', [2] = 'Great Axe skill +5', [3] = '"Resist Slow"+5' } },
        Ring1 = 'Succor Ring',
        Ring2 = 'Jelly Ring',
        Back = 'Shadow Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = { Name = 'Koenig Diechlings', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'DEX+2', [3] = 'Divine magic skill +4' } },
        Feet = 'Askar Gambieras',
    },
    ['ws_fell_cleave'] = {
        Main = 'Oneiros Axe',
        Sub = 'Pole Grip',
        Ammo = 'Bomb Core',
        Head = 'Conqueror\'s Helm',
        Neck = 'Fortitude Torque',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir Ear Pendant',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = { Name = 'Shadow Gauntlets', Augment = { [1] = '"Dbl.Atk."+2', [2] = 'Great Axe skill +5', [3] = '"Resist Slow"+5' } },
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Warrior\'s Cuisses',
        Feet = 'Askar Gambieras',
    },
    ['ws_vit_str'] = {
        Main = 'Oneiros Axe',
        Sub = 'Pole Grip',
        Ammo = 'Fire Bomblet',
        Head = 'Oneiros Barbut',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = 'Accuracy+3' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Mars\'s Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Aurum Cuisses',
        Feet = 'Askar Gambieras',
    },
};

local settings = {
	tpvariant = 1,
	diset = false,
    fellmode = false,
	autohasso = false,
	autoseigan = false,
	autoberserk = false,
    macro_book = 2,
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

function CheckAbilityRecast(check)
	local RecastTime = 0;

	for x = 0, 31 do
		local id = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimerId(x);
		local timer = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimer(x);

		if ((id ~= 0 or x == 0) and timer > 0) then
			local ability = AshitaCore:GetResourceManager():GetAbilityByTimerId(id);

			if ability ~= nil and ability.Name[1] ~= 'Unknown' and (ability.Name[1] == check) then
				RecastTime = timer;
			end
		end
	end
	return RecastTime;
end


profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	local player = gData.GetPlayer()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book ' .. tostring(settings.macro_book));
	
	if (player.SubJob == 'SAM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'MNK') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'NIN') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end
	
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /war /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd autohasso');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd autoseigan');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd autoberserk');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F6 /lac fwd fellmode');
	--gFunc.Message('Active Alias - /war [/lac fwd]');
	--gFunc.Message('Active Binds - Alt+F1 to cycle TP sets');
	
end

profile.OnUnload = function()

	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /war');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F6');

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
    elseif (args[1] == 'fellmode') then
		if (settings.fellmode == true) then
            settings.fellmode = false;
        else
            settings.fellmode = true;
        end
		gFunc.Message('Fell Mode Set to: ' .. string.upper(tostring(settings.fellmode)));
	elseif (args[1] == 'test') then

    end
end

profile.HandleDefault = function()

	local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local hasso = gData.GetBuffCount('Hasso');
	local seigan = gData.GetBuffCount('Seigan');
	local berserk = gData.GetBuffCount('Berserk');
    local berserkRecast = CheckAbilityRecast('Berserk');
	
	if (player.Status == 'Engaged') then
		-- Auto Hasso works 100%
		if (settings.autohasso == true) and (hasso == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Hasso" <me>');
		end

		-- Auto Seigan works 100%
		if (settings.autoseigan == true) and (seigan == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Seigan" <me>');
		end

		-- Auto Berserk is a work in progress
		if (settings.autoberserk == true) and (berserkRecast == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Berserk" <me>');
		end

        if (settings.fellmode == false) then
			-- This line is what changes your gear to the set you've selected
		    gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
        end
	elseif (player.Status == 'Resting') then
		gFunc.EquipSet(sets.rest);
	else
		gFunc.EquipSet(sets.idle);
	end

    if (settings.fellmode == true) then
        gFunc.EquipSet(sets.fell_set);
    end

    if (player.IsMoving and settings.fellmode == false) then
        gFunc.EquipSet(sets.movement);
    end
	
end

profile.HandleAbility = function()

	local player = gData.GetPlayer();
	local ability = gData.GetAction();
	
	if (ability.Name == 'Provoke') then
		gFunc.EquipSet(sets.enmity);
	elseif (ability.Name == 'Berserk') then
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif (ability.Name == 'Defender') then
		--gFunc.EquipSet(sets.putsetnamehere);	
	elseif (ability.Name == 'Retaliation') then
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif (ability.Name == 'Warcry') then
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif (ability.Name == '') then
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif string.match(ability.Name, 'Waltz') then
		--gFunc.EquipSet(sets.putsetnamehere);
	else
		-- This is a catch all/default set
		--gFunc.EquipSet(sets.putsetnamehere);
	end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

	local player = gData.GetPlayer();
	local action = gData.GetAction();

    gFunc.EquipSet(sets.precast);
	
	if string.match(action.Name, 'Cure') then -- This works on ALL Cure spells
		-- Add a Cure set below it will be used on all 'Cure' spells
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif string.match(action.Name, 'Utsusemi') then -- This works on both Utsusemi spells
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif (action.Name == '') then
		--gFunc.EquipSet(sets.putsetnamehere);
	end

end

profile.HandleMidcast = function()

	local player = gData.GetPlayer();
	local action = gData.GetAction();

    gFunc.EquipSet(sets.midcast); --Generic midcast set
	
	if string.match(action.Name, 'Cure') then -- This works on ALL Cure spells
		-- Add a Cure set below it will be used on all 'Cure' spells
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif string.match(action.Name, 'Utsusemi') then -- This works on both Utsusemi spells
		-- Best to add as much Haste in a set as you can
		-- and any Spell Interuption Rate Down gear
		--gFunc.EquipSet(sets.putsetnamehere);
	elseif (action.Name == '') then
		--gFunc.EquipSet(sets.putsetnamehere);
	else
		-- This is a catch all/default set
		--gFunc.EquipSet(sets.putsetnamehere);
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
		gFunc.EquipSet(sets.ws_str);
        --gFunc.EquipSet(sets.str);
	elseif (ws.Name == 'King\'s Justice') then
		--gFunc.EquipSet(sets.ws_kingsjustice);
	elseif (ws.Name == 'Weapon Break') then
		--gFunc.EquipSet(sets.fullbreak);
    elseif (ws.Name == 'Armor Break') then
        --gFunc.EquipSet(sets.fullbreak);
    elseif (ws.Name == 'Fell Cleave') then
		gFunc.EquipSet(sets.ws_fell_cleave);
	elseif (ws.Name == 'Ground Strike') then
		gFunc.EquipSet(sets.ws_gs);
	elseif (ws.Name == 'Guillotine') then
		gFunc.EquipSet(sets.ws_guillotine);
	elseif (ws.Name == 'Cross Reaper') then
		gFunc.EquipSet(sets.ws_cr);
	elseif (ws.Name == 'Sturmwind') then
		gFunc.EquipSet(sets.ws_strum);
    elseif (ws.Name == 'Requiescat') then
		gFunc.EquipSet();
	elseif (ws.Name == 'Stardiver') then
        gFunc.EquipSet(sets.str);
    elseif (ws.Name == 'Ruinator') then
		gFunc.EquipSet(sets.str);
    elseif (ws.Name == 'Shattersoul') then
		gFunc.EquipSet();
    elseif (ws.Name == 'Upheavel') then
		gFunc.EquipSet(sets.ws_vit_str);
    elseif (ws.Name == '') then
		gFunc.EquipSet();
    else
		-- This is a catch all/default set
		--gFunc.EquipSet(sets.ws);
	end
	
end

return profile;