local profile = {};
local sets = {
    ['idle'] = {
        Ammo = 'Potestas Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Askar Korazin',
        Hands = 'Pln. Dastanas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Pln. Seraweels',
        Feet = 'Homam Gambieras',
    },
    ['tp_lowacc'] = {
        Ammo = 'Potestas Bomblet',
        Head = 'Ace\'s Helm', --7
        Neck = 'Peacock Charm', --5
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring', --3
        Body = 'Askar Korazin',
        Hands = 'Homam Manopolas', --4
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring', --8
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Aurum Cuisses', --7
        Feet = 'Homam Gambieras', --6
    },
    ['tp_medacc'] = {
        Ammo = 'Potestas Bomblet',
        Head = 'Ace\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Askar Korazin',
        Hands = 'Homam Manopolas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Accura Cape',
        Waist = 'Wyrm Belt',
        Legs = 'Aurum Cuisses',
        Feet = 'Homam Gambieras',
    },
    ['tp_highacc'] = {
        Ammo = 'Potestas Bomblet',
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Hecatomb Harness',
        Hands = 'Pln. Dastanas',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Virtuous Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Hydra Greaves',
    },
    ['ws_stardiver'] = {
        Ammo = 'Potestas Bomblet',
        Head = 'Ace\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        --Ear2 = 'Assault Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Hecatomb Harness',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Mar\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Potent Belt',
        Legs = 'Aurum Cuisses',
        Feet = 'Askar Gambieras',
    },
	['jump'] = {
        Ammo = 'Potestas Bomblet',
        Head = 'Askar Zucchetto',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Askar Korazin',
        Hands = 'Pln. Dastanas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Barone Cosciales',
        Feet = 'Volans Greaves',
    },
	['call_wyvern'] = {
		Body = 'Wyrm Mail',
	},
	['range'] = {
		Ammo = 'Angon',
	},
    ['movement'] = {
		Legs = 'Blood Cuisses',
	},
    ['precast'] = {
        Head = 'Walahra Turban',
        Neck = 'Enhancing Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Setae Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Blood Cuisses',
        Feet = 'Dusk Ledelsens',
    },
    ['tp_tank'] = {
        Head = 'Hydra Mask',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Megasco Earring',
        Body = 'Hydra Mail',
        Hands = 'Gavial Fng.Gnt. +1',
        Ring1 = 'Jelly Ring',
        Ring2 = 'Succor Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Hydra Cuisses',
        Feet = 'Askar Gambieras',
    },
    
};

local settings = {
	tpvariant = 1,
    diset= false,
	autohasso = false,
	autoseigan = false,
	autoberserk = false,
    autotankgear = true, -- If set to true will equip your tank set when HP reaches the autotankhp setting
    forceautotankgear = false, -- Forces your tank set to equip and stay equiped even at idle
    autotankhp = 30, -- HP% for when the tank gear will auto equip
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
	local subjob = gData.GetPlayer()
	
	if (subjob.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 12');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	elseif (subjob.SubJob == 'SAM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 12');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 12');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /drg /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd autohasso');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd autoseigan');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd autoberserk');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F6 /lac fwd forcetank');

end

profile.OnUnload = function()

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /drg');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F6');

end

profile.HandleCommand = function(args)
    local player = gData.GetPlayer();
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
    elseif (args[1] == 'forcetank') then
        if (settings.forceautotankgear == true) then
            settings.forceautotankgear = false;
        else
            settings.forceautotankgear = true;
        end
        gFunc.Message('Force Tank Set is now set to ' .. string.upper(tostring(settings.forceautotankgear)));
    elseif (args[1] == 'test') then
        gFunc.Message('My HPP = ' .. player.HPP);
	end

end

profile.HandleDefault = function()
	local pet = gData.GetPet();
    local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local hasso = gData.GetBuffCount('Hasso'); -- Checks if active
	local seigan = gData.GetBuffCount('Seigan'); -- Checks if active
    local berserkRecast = CheckAbilityRecast('Berserk');

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
		if (settings.autoberserk == true) and (berserkRecast == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Berserk" <me>');
		end

        gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);

	elseif (player.Status == 'Resting') then
		gFunc.EquipSet(sets.rest);
	elseif (player.Status == 'Zoning') then
		--If you have your wyvern out you need to have your call set on when zoning
        --so your wyvern gets your SJ buffs from your relic armor
        gFunc.EquipSet(sets.call_wyvern);
	else
		gFunc.EquipSet(sets.idle);
	end

    -- Auto tank gear logic start
    if (player.HPP <= settings.autotankhp) and (settings.autotankgear == true) then
        gFunc.EquipSet(sets.tp_tank);
        --gFunc.Message('HP less than')
    elseif (settings.forceautotankgear == true) then
            gFunc.EquipSet(sets.tp_tank);
            --gFunc.Message('HP less than')
    end
    -- Auto tank gear logic end

    if (player.IsMoving) then
        gFunc.EquipSet(sets.movement);
    end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
		if (action.Name == 'Jump') then
			gFunc.EquipSet(sets.jump);
        elseif (action.Name == 'High Jump') then
            gFunc.EquipSet(sets.jump);
            gFunc.Equip('Legs', 'Wyrm Brais');
		elseif (action.Name == 'Call Wyvern') then
			gFunc.EquipSet(sets.call_wyvern);
		elseif (action.Name == 'Angon') then
			gFunc.EquipSet(sets.range);
		end	
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.precast);
end

profile.HandleMidcast = function()
    gFunc.EquipSet(sets.precast);
end

profile.HandlePreshot = function()
	
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();

	if (ws.Name == 'Stardiver') then
		gFunc.EquipSet(sets.ws_stardiver);
	end

end

return profile;