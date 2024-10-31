local profile = {};
local sets = {
    ['songdebuff'] = {
        Head = 'Bard\'s Roundlet',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Singing Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Sha\'ir Gages',
        Ring1 = 'Light Ring',
        Ring2 = 'Serket Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = 'Dance Shoes +1',
    },
    ['tp_lowacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Ethereal Earring',
        Body = 'Bard\'s Jstcorps',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Sniper\'s Ring +1',
        Back = 'Bard\'s Cape',
        Waist = 'Potent Belt',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Dusk Ledelsens',
    },
    ['precast'] = {
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Back = 'Veela Cape',
        Waist = 'Salire Belt',
        Legs = 'Bard\'s Cannions',
        Feet = 'Rostrum Pumps',
    },
    ['song_midcast'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Range = 'Horn +1',
        Head = 'Bard\'s Roundlet',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Singing Earring',
        Ear2 = 'Delta Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Bard\'s Cuffs',
        Ring1 = 'Light Ring',
        Ring2 = 'Insect Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = 'Dune Sandals',
    },
    ['idle'] = {
        Head = 'Sha\'ir Turban',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Singing Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Melaco Mittens',
        Ring1 = 'Light Ring',
        Ring2 = 'Insect Ring',
        Back = 'Cheviot Cape',
        Waist = 'Corsette',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Dune Sandals',
    },
    ['string'] = {
        Feet = 'Bard\'s Slippers',
    },
    ['wind'] = {
        Ring2 = 'Trumpet Ring',
    },
    ['idle_town'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Light Grip',
        Range = 'Horn +1',
        Head = 'Walahra Turban',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Sha\'ir Gages',
        Ring1 = 'Setae Ring',
        Ring2 = 'Serket Ring',
        Back = 'Cheviot Cape',
        Waist = 'Corsette',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Dune Sandals',
    },
    ['cure'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Morgana\'s Choker',
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
    [0] = { -- Wind Instruments
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
    [1] = { --String Instrunments
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

    LoadInstruments();

end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local zone = gData.GetEnvironment();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.tp_lowacc);
    elseif (player.Status == 'Idle') then
        if (towns:contains(zone.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
            if player.SubJob == 'WHM' or player.SubJob == 'RDM' then
                gFunc.Equip('Body', 'Dalmatica');
            end
        end
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local song = gData.GetAction();

    gFunc.EquipSet(sets.precast);

    if (song.Type == 'Bard Song') then
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

end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    local instr = gData.GetEquipment().Range;
    local weapon = gData.GetEquipment().Main;

    if (weapon.Name:contains('Staff')) then
        gFunc.Equip('Sub', elements[spell.Element][1]);
    end

    if (spell.Type == 'Bard Song') then
        gFunc.EquipSet(sets.song_midcast);
        if (WindInstr:contains(instr.Name)) then
            gFunc.EquipSet(sets.wind);
        end
        if (StringInstr:contains(instr.Name)) then
            gFunc.EquipSet(sets.string);
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
end

return profile;