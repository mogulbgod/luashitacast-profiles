local profile = {};
local sets = {
    ['idle_default'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Cheviot Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
    ['idle_hybrid'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Cheviot Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
    ['idle_pdt'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Jelly Ring',
        Ring2 = 'Serket Ring',
        Back = 'Cheviot Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
    ['idle_mdt'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Colossus\'s Mantle',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
    ['idle_with_pet'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Cheviot Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Bagua Sandals +1',
    },
	['idle_town'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Bagua Tunic +1',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Veela Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Bagua Sandals +1',
    },
	['rest'] = {
        Main = 'Chatoyant Staff',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Beak Necklace',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
	['engaged'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Veela Cape',
        Waist = 'Al Zahbi Sash',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
	['movement'] = {
        Feet = 'Herald\'s Gaiters',
    },
	['geo'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Bagua Tunic +1',
        Hands = 'Geomancy Mitaines',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Al Zahbi Sash',
        Legs = 'Geomancy Pants',
        Feet = 'Dune Sandals',
    },
	['indi'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Bagua Tunic +1',
        Hands = 'Geomancy Mitaines',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
	['matk'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Aesir Torque',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Bagua Tunic +1',
        Hands = 'Genie Gages',
        Ring1 = 'Galdr Ring',
        Ring2 = 'Serket Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Druid\'s Slops',
        Feet = 'Shrewd Pumps',
    },
	['macc'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Kafka Ring',
        Ring2 = 'Serket Ring',
        Back = 'Veela Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
	['cure'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Roundel Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Kafka Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
	['precast'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Veela Cape',
        Waist = 'Desert Rope',
        Legs = 'Geomancy Pants',
        Feet = 'Rostrum Pumps',
    },
	['debuff_light'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Kafka Ring',
        Ring2 = 'Serket Ring',
        Back = 'Veela Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
	['debuff_dark'] = {
        Range = 'Dunna',
        Head = 'Geomancy Galero',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Dalmatica',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Kafka Ring',
        Ring2 = 'Serket Ring',
        Back = 'Veela Cape',
        Waist = 'Desert Rope',
        Legs = 'Bagua Pants +1',
        Feet = 'Dune Sandals',
    },
    ['lockstyle'] = {
        Range = 'Dunna',
        Head = 'Bagua Galero',
        Body = 'Bagua Tunic +1',
        Hands = 'Bagua Mitaines +1',
        Legs = 'Bagua Pants +1',
        Feet = 'Bagua Sandals +1',
    },
    ['warp'] = {
        Ring2 = 'Warp Ring',
    },
    ['onload'] = {
        Main = '',
        Sub = '',
        Range = '',
        Ammo = '',
    },
    ['realm'] = {
    },
    ['shattersoul'] = {
    },
    ['spirittaker'] = {
    },
};

local towns = T{'Aht Urhgan Whitegate','Al Zahbi','Bastok Markets [S]','Bastok Markets','Bastok Mines','Bastok-Jeuno Airship','Celennia Memorial Library','Chateau d\'Oraguille','Eastern Adoulin','Heavens Tower','Kazham','Kazham-Jeuno Airship','Lower Jeuno','Metalworks','Mhaura','Mog Garden','Nashmau','Norg','Northern San d\'Oria','Port Bastok','Port Jeuno','Port San d\'Oria','Port Windurst','Rabao','Ru\'Lude Gardens','San d\'Oria-Jeuno Airship','Selbina','Southern San d\'Oria [S]','Southern San d\'Oria','Tavnazian Safehold','Upper Jeuno','Western Adoulin','Windurst Walls','Windurst Waters [S]','Windurst Waters','Windurst Woods','Windurst-Jeuno Airship',};

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

local settings = {
    warping = T{},
    setvar = 1,
};

local idleset = {
    [1] = 'default',
    [2] = 'hybrid',
    [3] = 'pdt',
    [4] = 'mdt',
};

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

	AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 002');

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /warp /lac fwd warp');

end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /warp');
end

profile.HandleCommand = function(args)
    local zone = gData.GetEnvironment();
    if (args[1] == 'warp') then
        AshitaCore:GetChatManager():QueueCommand(1, '/exec wring');
    end
end

profile.HandleDefault = function()
	local action = gData.GetAction();
	local player = gData.GetPlayer();
    local zone = gData.GetEnvironment();
    local pet = gData.GetPet();


    if (player.Status == 'Engaged') then

        gFunc.EquipSet(sets.idle_with_pet);

    elseif (player.Status == 'Resting') then

        gFunc.EquipSet(sets.rest);

    else

        if not (towns:contains(zone.Area)) then -- Checks your zone if it's a town
            gFunc.EquipSet('idle_' .. idleset[settings.setvar]);
        else
            gFunc.EquipSet(sets.idle_town);
        end

    end

    if (player.IsMoving == true) then
        gFunc.EquipSet(sets.movement);
    end

    if (pet ~= nil) then
        gFunc.Equip('Feet', 'Bagua Sandals +1');
    end

end

profile.HandleAbility = function()
    local skill = gData.GetAction();

    if (skill.Name == 'Full Circle') then

    elseif (skill.Name == 'Lasting Emanation') then

    elseif (skill.Name == 'Ecliptic Attrition') then

    elseif (skill.Name == 'Collimated Fervor') then

    elseif (skill.Name == 'Life Cycle') then

        gFunc.Equip('Body', 'Geomancy Tunic');

    elseif (skill.Name == 'Blaze of Glory') then

    elseif (skill.Name == 'Dematerialize') then

    elseif (skill.Name == 'Entrust') then

    elseif (skill.Name == 'Mending Halation') then

    elseif (skill.Name == 'Radical Arcana') then

    elseif (skill.Name == '') then

    elseif (skill.Name == '') then

    elseif (skill.Name == '') then
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

	local spellType = gData.GetAction();

    gFunc.EquipSet(sets.precast);

	if (spellType.Skill == 'Elemental Magic') then

	elseif (spellType.Skill == 'Geomancy') then

		if string.match(spellType.Name, 'Indi-') then

		else

		end

	elseif (spellType.Skill == 'Enfeebling Magic') then

    elseif (spellType.Skill == 'Enhancing Magic') then

	elseif (spellType.Skill == 'Dark Magic') then

    elseif (spellType.Skill == 'Healing Magic') then

	end

end

profile.HandleMidcast = function()
    local spellType = gData.GetAction();

	if (spellType.Skill == 'Elemental Magic') then
		gFunc.EquipSet(sets.matk);
	elseif (spellType.Skill == 'Geomancy') then
		if string.match(spellType.Name, 'Indi-') then
			gFunc.EquipSet(sets.indi);
		else
			gFunc.EquipSet(sets.geo);
		end
	elseif (spellType.Skill == 'Enfeebling Magic') then
        if (spellType.Element == 'Light') then
            gFunc.EquipSet(sets.debuff_light);
        elseif (spellType.Element == 'Dark') then
            gFunc.EquipSet(sets.debuff_dark);
        end
    elseif (spellType.Skill == 'Enhancing Magic') then
        gFunc.Equip('Neck', 'Enhancing Torque');
	elseif (spellType.Skill == 'Dark Magic') then
        if (spellType.Name == 'Drain' or 'Aspir') then
            gFunc.Equip('Ear1', 'Hirudinea Earring');
        end
    elseif spellType.Name:contains('Cure') then
        gFunc.EquipSet(sets.cure);
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();

    if (action.Name == 'Spirit Taker') then
        -- INT and MND 50% physical based WS
        gFunc.EquipSet(sets.spirittaker);
    elseif (action.Name == 'Realmrazer') then
        gFunc.EquipSet(sets.realm);
    elseif (action.Name == 'Shattersoul') then
        gFunc.EquipSet(sets.shattersoul);
    end
end

return profile;