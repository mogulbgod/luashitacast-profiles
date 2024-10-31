local profile = {};
local lacinc = gFunc.LoadFile('lacinc.lua');
local sets = {
    ['tp_lowacc'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Pln. Seraweels',
        Feet = 'Dusk Ledelsens',
    },
    ['idle'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = { Name = 'Dalmatica', Augment = { [1] = '"Fast Cast"+3', [2] = 'Occ. quickens spellcasting +3%', [3] = '"Mag. Atk. Bns."+3' } },
        Hands = 'Dune Bracers',
        Ring1 = 'Serket Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Blood Cuisses',
        Feet = { Name = 'Zenith Pumps', Augment = { [1] = 'Summoning magic skill +3', [2] = 'Healing magic skill +5', [3] = 'Pet: "Mag. Atk. Bns."+4' } },
    },
    ['resting'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Beak Necklace',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Astral Earring',
        Body = { Name = 'Dalmatica', Augment = { [1] = '"Fast Cast"+3', [2] = 'Occ. quickens spellcasting +3%', [3] = '"Mag. Atk. Bns."+3' } },
        Hands = 'Genie Gages',
        Ring1 = 'Serket Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = 'Dune Sandals',
    },
    ['resting_weapon'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Range = '',
        Ammo = 'Hedgehog Bomb',
    },
    ['midcast'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = 'Chasuble',
        Hands = 'Dusk Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Ninurta\'s Sash',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = 'Dusk Ledelsens',
    },
    ['idle_town'] = {
        Head = 'Duelist\'s Chapeau',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard',
        Hands = 'Duelist\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = 'Duelist\'s Tights',
        Feet = 'Duelist\'s Boots',
    },
    ['precast'] = {
        Head = { Name = 'Shadow Hat', Augment = { [1] = 'Pet: "Mag. Atk. Bns."+3', [2] = 'Elem. magic skill +4', [3] = 'Pet: Mag. Acc.+4' } },
        Neck = 'Aesir Torque',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard',
        Hands = 'Dusk Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = 'Blood Cuisses',
        Feet = 'Shrewd Pumps',
    },
    ['lockstyle'] = {
        Head = 'Duelist\'s Chapeau',
        Body = 'Duelist\'s Tabard',
        Hands = 'Duelist\'s Gloves',
        Legs = 'Duelist\'s Tights',
        Feet = 'Duelist\'s Boots',
    },
    ['magic_acc'] = {
        Ammo = 'Jasper Tathlum',
        Head = 'Shadow Hat',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        Body = 'Chasuble',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = { Name = 'Zenith Pumps', Augment = { [1] = 'Summoning magic skill +3', [2] = 'Healing magic skill +5', [3] = 'Pet: "Mag. Atk. Bns."+4' } },
    },
    ['magic_atk'] = {
        Ammo = 'Jasper Tathlum',
        Head = 'Shadow Hat',
        Neck = 'Aesir Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Crapaud Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Duelist\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Salire Belt',
        Legs = 'Nimue\'s Tights',
        Feet = 'Shrewd Pumps',
    },
    ['enhancing'] = {
        Ammo = 'Jasper Tathlum',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Enhancing Torque',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Duelist\'s Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = 'Duelist\'s Tights',
        Feet = 'Duelist\'s Boots',
    },
    ['req'] = {
        Ammo = 'Jasper Tathlum',
        Head = 'Duelist\'s Chapeau',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Melaco Mittens',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Duelist\'s Boots',
    },
    ['chat_staff'] = {
        Main = 'Chatoyant Staff',
    },
    ['cure'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Fylgja Torque +1',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Duelist\'s Tabard',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Errant Cape',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Duelist\'s Boots',
    },
};

local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };
local Swords = T{'Enhancing Sword', 'Joyeuse', 'Xiutleato'}; -- Put the swords in order Main then Sub
local Staves = T{};

local settings = {
	tpvariant = 1,
	lastweapon = T{
        ['Main'] = '',
        ['Sub'] = '',
        ['Range'] = '',
        ['Ammo'] = '',
    },
    mode = 2, -- 1 = mage, 2 = melee. Modes used for mage or melee mode. melee keeps TP, mage changes weapons.
    remlastweapon = false, -- a toggle to show a weapon was remembered already
    diset = false,
    shield = 'Sipar', -- The preferred shield to use during melee
    staff = 'Chatoyant Staff',
    time = 0;
    amt = 0;
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

local function RememberLastWeapon()
    local eqp = gData.GetEquipment();
    if (settings.remlastweapon == false) then
        settings.lastweapon.Main = '';
        settings.lastweapon.Sub = '';
        settings.lastweapon.Range = '';
        settings.lastweapon.Ammo = '';

        if (eqp.Main ~= nil) then
            settings.lastweapon.Main = eqp.Main.Name;
        end

        if (eqp.Sub ~= nil) then
            settings.lastweapon.Sub = eqp.Sub.Name;
        end

        if (eqp.Range ~= nil) then
            settings.lastweapon.Range = eqp.Range.Name;
        end

        if (eqp.Ammo ~= nil) then
            settings.lastweapon.Ammo = eqp.Ammo.Name;
        end
        settings.remlastweapon = true;
    end

end

local function EquipWeapons(Main, Sub, Range, Ammo)
    gFunc.Equip('Main', Main);
    gFunc.Equip('Sub', Sub);
    gFunc.Equip('Range', Range);
    gFunc.Equip('Ammo', Ammo);
end

local function SetLastWeapon()
    local wSlot = settings.lastweapon;
    EquipWeapons(wSlot.Main, wSlot.Sub, wSlot.Range, wSlot.Ammo);
end


profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    local player = gData.GetPlayer();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 20');

	if (player.SubJob == 'WHM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /rdm /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd mode');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd diset');

    lacinc.SetAliasList();
    --gFunc.LockStyle(sets.lockstyle);
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 017');

end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /rdm');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');

    lacinc.ClearAliasList();

end

profile.HandleCommand = function(args)

    local player = gData.GetPlayer();
    local eqp = gData.GetEquipment();

    if (args[1] == 'tpset') then -- ALT+F1
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvarianttable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. tpvarianttable[settings.tpvariant]);
    elseif (args[1] == 'diset') then
        if (settings.diset == true) then
            settings.diset = false;
        else
            settings.diset = true;
        end
        gFunc.Message('DI Mode is now set to: ' .. tostring(settings.diset));
    elseif (args[1] == 'mode') then -- ALT+F2
        if (#args > 1) then
            if (args[2] == 'mage') then
                settings.mode = 1;
                gFunc.Message('Battle Mode is now set to: MAGE');
            elseif (args[2] == 'melee') then
                settings.mode = 2;
                gFunc.Message('Battle Mode is now set to: MELEE');
            else
                gFunc.Message('That is not a valid command. Command must be MAGE or MELEE.')
            end
        else
            if (settings.mode == 1) then
                settings.mode = 2;
                gFunc.Message('Battle Mode is now set to: MELEE');
                if (player.SubJob == 'NIN') or (player.SubJob == 'DNC') then
                    EquipWeapons(Swords[1], Swords[2], nil, nil);
                else
                    EquipWeapons(Swords[1], settings.shield, nil, nil);
                end
            else
                settings.mode = 1;
                EquipWeapons(settings.staff, 'Omni Grip', nil, nil);
                gFunc.Message('Battle Mode is now set to: MAGE');
            end
        end
    elseif (args[1] == 'test') then
        gFunc.Message(settings.lastweapon.Main);
    end

    lacinc.HandleCommands(args);
end

profile.HandleDefault = function()

    local player = gData.GetPlayer();
    local zone = gData.GetEnvironment();
    local eqp = gData.GetEquipment();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.tp_lowacc);
        if (player.SubJob == 'NIN') or (player.SubJob == 'DNC') then
            gFunc.Equip('Ear2', 'Suppanomimi');
        end

    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.resting);
        if (settings.mode == 1) then
            RememberLastWeapon();
            gFunc.EquipSet(sets.resting_weapon);
        end
    else -- Idle and other stuff like dead or zoning
        if towns:contains(zone.Area) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
        end

        if (settings.mode == '2') then
            if not Swords:contains(eqp.Main.Name) then
                SetLastWeapon();
                gFunc.Message('Put on swords is triggered.');
            end
        end
        settings.remlastweapon = false;
    end

    if (player.IsMoving) then
        gFunc.Equip('Legs', 'Blood Cuisses');
    end

end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.precast);
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.midcast);

    if spell.Type == 'Enhancing Magic' then
        gFunc.EquipSet(sets.enhancing);
    elseif spell.Type == 'Enfeebling Magic' then
        gFunc.EquipSet(sets.magic_acc);
    elseif spell.Type == 'Healing Magic' then
        gFunc.EquipSet(sets.cure);
    elseif spell.Type == 'Elemental Magic' then
        gFunc.EquipSet(sets.magic_atk);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local ws = gData.GetAction();

    if (ws.Name == 'Requiescat') then
        gFunc.EquipSet(sets.req);
    end

end

return profile;