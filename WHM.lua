local profile = {};
local sets = {
    ['idle'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Ammo = 'Hedgehog Bomb',
        Head = 'Cleric\'s Cap',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Ebur Bliaut',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Blessed Trousers',
        Feet = 'Dune Sandals',
    },
    ['idle_town'] = {
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Ebur Bliaut',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Veela Cape',
        Waist = 'Desert Rope',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Dune Sandals',
    },
    ['hexastrike'] = {
        Neck = 'Chivalrous Chain',
        Ear1 = 'Coral Earring',
        Ear2 = 'Coral Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Dalmatica',
        Hands = 'Aiming Bracelets',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Ryl. Army Mantle',
        Waist = 'Potent Belt',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Cleric\'s Duckbills',
    },
    ['tp_lowacc'] = {
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Coral Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Dalmatica',
        Hands = 'Aiming Bracelets',
        Ring1 = 'Rajas Ring',
        Ring2 = { Name = 'Jaeger Ring', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+1' } },
        Back = 'Ryl. Army Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Dune Sandals',
    },
    ['tp_medacc'] = {
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Coral Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Dalmatica',
        Hands = 'Aiming Bracelets',
        Ring1 = 'Rajas Ring',
        Ring2 = { Name = 'Jaeger Ring', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+1' } },
        Back = 'Ryl. Army Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Dune Sandals',
    },
    ['tp_highacc'] = {
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Coral Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Dalmatica',
        Hands = 'Aiming Bracelets',
        Ring1 = 'Rajas Ring',
        Ring2 = { Name = 'Jaeger Ring', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+1' } },
        Back = 'Ryl. Army Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Dune Sandals',
    },
    ['enhancing'] = {
        Neck = 'Colossus\'s Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Dalmatica',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Grapevine Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Cleric\'s Duckbills',
    },
    ['cure'] = {
        Neck = 'Fylgja Torque +1',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Roundel Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Aristocrat\'s Coat',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Cure Clogs',
    },
    ['barspells'] = {
        Body = 'Blessed Brilaut',
        Legs = 'Cleric\'s Pantaln.',
    },
    ['resting'] = {
        Main = 'Chatoyant Staff',
        Neck = 'Beak Necklace',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Head = 'Cleric\'s Cap',
        Body = 'Dalmatica',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Dune Sandals',
    },
    ['precast'] = {
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Back = 'Veela Cape',
        Feet = 'Rostrum Pumps',
    },
    ['midcast'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Aristocrat\'s Coat',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Dune Sandals',
    },
    ['onload'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Range = '',
        Ammo = 'Hedgehog Bomb',
    },
    ['movement'] = {
        Feet = 'Herald\'s Gaiters',
    },
    ['realm'] = {
    },
    ['shattersoul'] = {
    },
    ['spirittaker'] = {
    },
};

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

    Tank = {
        Auto_Debuff = true,
        Index = nil,
        Name = nil,
        Auto_Cure = true,
        Auto_Calculate_Tier = true,
        Min_Health_Start_Cure = 85, -- Percentage
        Listen = false,
    },

    Auto_Refresh_Gear = true,
    Min_Auto_Refresh = 30, -- Percent
    Charmed = false,
};

local CureLevels = {
    [1] = { 8, 'Cure' },
    [2] = { 15, 'Cure II' },
    [3] = { 25, 'Cure III' },
    [4] = { 40, 'Cure IV' },
    [5] = { 50, 'Cure V' },
};

local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };


local function AutoCure()

    if (settings.Tank.Auto_Cure == false) then
        return;
    else
        if (settings.Tank.Name ~= nil) and (settings.Tank.Index ~= nil) then
            local tank = gData.GetEntity(settings.Tank.Index);
            if (tank.HPP <= settings.Tank.Min_Health_Start_Cure) then
                if (tank.HPP <= CureLevels[4]) then

                end
            end
        end
    end
end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    local player = gData.GetPlayer();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 18');

    if (player.SubJob == 'SCH') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    elseif (player.SubJob == 'BLM') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    elseif (player.SubJob == 'RDM') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
    elseif (player.SubJob == 'NIN') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
    else
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    end

    --gFunc.LockStyle(sets.idle_town);
    --AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 016');
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 019');

end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)

    if (args[1] == 'settank') then
        settings.Tank.Listen = true;
    end

end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local place = gData.GetEnvironment();
    local charmed = gData.GetBuffCount(14);

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.tp_lowacc);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.resting);
    elseif (player.Status == 'Idle') then
        if (towns:contains(place.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
        end
    end

    -- Tries to strip your gear if you're charmed
    if (charmed > 0) and (settings.Charmed == false) then
        AshitaCore:GetChatManager():QueueCommand(1, '/p ### I\'m CHARMED and getting naked! ###');
        settings.Charmed = true;
    elseif (charmed <= 0) and (settings.Charmed == true) then
        if (settings.Charmed == true) then
            settings.Charmed = false;
            AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable');
        end
    end

    if (player.IsMoving) then
        gFunc.EquipSet(sets.movement);
    end

end

profile.HandleAbility = function()
    local ability = gData.GetAction();
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.precast);
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();

    gFunc.EquipSet(sets.midcast);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.enhancing);
        if spell.Name:contains('Bar') then
            gFunc.EquipSet(sets.barspells);
        end
    elseif (spell.Skill == 'Healing Magic') then

    end

    if string.match(spell.Name, 'Cure') then
        gFunc.EquipSet(sets.cure);
    elseif string.match(spell.Name, 'Regen') then
        gFunc.Equip('Body', 'Cleric\'s Brilaut');
    elseif string.match(spell.Name, 'Stoneskin') then
        gFunc.Equip('Neck', 'Stone Gorget');
    elseif (spell.Name:contains('Protect') or spell.Name:contains('Shell')) then
        gFunc.Equip('Ear2', 'Brachyura Earring');
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();

    if (action.Name == 'Hexastrike') then
        gFunc.EquipSet(sets.hexastrike);
    elseif (action.Name == 'Spirit Taker') then
        -- INT and MND 50% physical based WS
        gFunc.EquipSet(sets.spirittaker);
    elseif (action.Name == 'Realmrazer') then
        gFunc.EquipSet(sets.realm);
    elseif (action.Name == 'Shattersoul') then
        gFunc.EquipSet(sets.shattersoul);
    end

end

return profile;