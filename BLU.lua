local profile             = {}; -- Don't touch this line
-- Name your profile sets when making them the same as the sets names below
local sets                = {
    ['tp_lowacc'] = {
        Head = 'Walahra Turban',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Ethereal Earring',
        Body = 'Mirage Jubbah',
        Hands = 'Homam Manopolas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Homam Gambieras',
    },
    ['tp_medacc'] = {
        Head = 'Walahra Turban',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Astral Earring',
        Body = 'Mirage Jubbah',
        Hands = 'Homam Manopolas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Denali Kecks',
        Feet = 'Homam Gambieras',
    },
    ['tp_highacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Peacock Amulet',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Mirage Jubbah',
        Hands = 'Homam Manopolas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Oneiros Annulet',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Mirage Shalwar',
        Feet = 'Homam Gambieras',
    },
    ['ws_lowacc'] = {
    },
    ['ws_medacc'] = {
    },
    ['ws_highacc'] = {
    },
    ['di_lowacc'] = {
    },
    ['di_medacc'] = {
    },
    ['di_highacc'] = {
    },
    ['idle'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Homam Zucchetto',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Mirage Jubbah',
        Hands = 'Homam Manopolas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Mirage Mantle',
        Waist = 'Desert Rope',
        Legs = 'Blood Cuisses',
        Feet = 'Homam Gambieras',
    },
    ['idle_town'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Mirage Jubbah',
        Hands = 'Mirage Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Aesir Mantle',
        Waist = 'Desert Rope',
        Legs = 'Mirage Shalwar',
        Feet = 'Mirage Charuqs',
    },
    ['rest'] = {
    },
    ['precast'] = {
        Head = 'Furia Tam', -- 2% FC
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring', --2% or 0.02
        Body = 'Mirage Jubbah',
        Hands = 'Homam Manopolas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Mirage Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Blood Cuisses',
        Feet = 'Homam Gambieras',
    },
    ['midcast'] = {
        Head = 'Homam Zucchetto',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        --Body = 'Mirage Jubbah',
        Hands = 'Mirage Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Mirage Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Denali Kecks',
        Feet = 'Shrewd Pumps',
    },
    ['preshot'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Crested Torque',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Mirage Jubbah',
        Hands = { Name = 'Blood Fng. Gnt.', Augment = { [1] = '"Subtle Blow"+4', [2] = '"Snapshot"+3' } },
        Ring1 = 'Breeze Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Denali Kecks',
        Feet = 'Homam Gambieras',
    },
    ['midshot'] = { -- does this work on BLU, fuck if I know
        Head = 'Mirage Keffiyeh',
        Neck = 'Crested Torque',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Mirage Jubbah',
        Hands = { Name = 'Blood Fng. Gnt.', Augment = { [1] = '"Subtle Blow"+4', [2] = '"Snapshot"+3' } },
        Ring1 = 'Breeze Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Denali Kecks',
        Feet = 'Homam Gambieras',
    },
    ['movement'] = { -- Remove anything that slows you down (like Dusk gear) and replace with what doesn't
        Hands = 'Mirage Bazubands',
        Legs = 'Blood Cuisses',
        Feet = 'Homam Gambieras',
    },
    ['ws_str_mnd'] = {
        Head = 'Homam Zucchetto',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Astral Earring',
        Body = 'Mirage Jubbah',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Karka Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Denali Kecks',
        Feet = 'Agrona\'s Leggings',
    },
    ['mnd'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Denali Bonnet',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Mirage Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = 'Vendor\'s Slops',
        Feet = 'Homam Gambieras',
    },
    ['cure'] = {
        --Ammo = 'Hedgehog Bomb',
        Head = 'Maat\'s Cap',
        --Neck = 'Aife\'s Medal',
		Neck = 'Incanter\'s Torque',
        Ear1 = 'Aqua Earring',
        Ear2 = 'Aqua Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Mirage Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Dew Silk Cap +1',
        Waist = 'Salire Belt',
        Legs = 'Vendor\'s Slops',
        Feet = 'Medium\'s Sabots',
    },
    ['cannonball'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Homam Zucchetto',
        Neck = 'Peacock Amulet',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Pagondas Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Flame Ring',
        Ring2 = 'Phalanx Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = { Name = 'Blood Cuisses', Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+3' } },
        Feet = 'Dusk Ledelsens',
    },
    ['str'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Assault Jerkin',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Ryl. Army Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Mirage Shalwar',
        Feet = 'Homam Gambieras',
    },
    ['hp'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Parrying Torque',
        Ear1 = 'Crimson Earring',
        Ear2 = 'Cassie Earring',
        Body = 'Mirage Jubbah',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Bomb Queen Ring',
        Ring2 = 'Bloodbead Ring',
        Back = 'Behemoth Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = 'Blood Cuisses',
        Feet = 'Homam Gambieras',
    },
    ['bluphysical'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Peacock Amulet',
        Ear1 = 'Astral Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Magus Jubbah',
        Hands = 'Homam Manopolas',
        Ring1 = 'Zilant Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Desert Rope',
        Legs = 'Vendor\'s Slops',
        Feet = 'Homam Gambieras',
    },
    ['bluskill'] = {
        Head = 'Mirage Keffiyeh',
		Neck = 'Incanter\'s Torque',
        Body = 'Magus Jubbah',
    },
    ['blumagical'] = {
        Head = 'Mirage Keffiyeh',
    },
    ['blumagacc'] = {
        Head = 'Mirage Keffiyeh',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        Ring1 = 'Insect Ring',
        Ring2 = 'Karka Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Salire Belt',
        Legs = 'Mirage Shalwar',
        Feet = 'Shrewd Pumps',
    },
    ['req'] = {
        Ammo = 'Jasper Tathlum',
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Aqua Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Mirage Bazubands',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Karka Ring',
        Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Vendor\'s Slops',
        Feet = 'Medium\'s Sabots',
    },
    ['SIRD'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Homam Zucchetto',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Colossus\'s Earring',
        Body = 'Magus Jubbah',
        Hands = 'Mirage Bazubands',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
        Back = 'Shadow Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Denali Kecks',
        Feet = 'Shrewd Pumps',
    },
    ['swordset'] = {
        Main = 'Concordia',
        Sub = 'Mimesis',
        Range = '',
        Ammo = 'Hedgehog Bomb',
    },
    ['singleswordset'] = {
        Main = 'Mimesis',
        Sub = 'Genbu\'s Shield',
        Range = '',
        Ammo = 'Hedgehog Bomb',
    },
    ['staffset'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Range = '',
        Ammo = 'Hedgehog Bomb',
    },
    ['freeset'] = { -- Best not have anything here so you can freely change weapons
    },
    ['learningset'] = {
        Main = '',
        Sub = '',
        Ear2 = 'Colossus\'s Earring',
        Ring2 = 'Succor Ring',
        Back = 'Shadow Mantle',
    },
    ['curepotency'] = {
        Neck = 'Fylgja Torque +1',
        Back = 'Dew Silk Cape +1',
    },
};

-- A list (or 'table' in Lua terms) of towns/cities
local towns               = T { 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };

-- A list of BLU breath spells
local BLUSpellTypeBreath  = T { 'Poison Breath', 'Magnetite Cloud', 'Hecatomb Wave', 'Radiant Breath', 'Flying Hip Press', 'Bad Breath', 'Frost Breath', 'Heat Breath' };
local BLUSpellTypePhys    = T { 'Foot Kick', 'Sprout Smack', 'Wild Oats', 'Power Attack', 'Queasyshroom', 'Battle Dance', 'Feather Storm', 'Helldive', 'Bludgeon', 'Claw Cyclone', 'Screwdriver', 'Grand Slam', 'Smite of Rage', 'Pinecone Bomb', 'Jet Stream', 'Uppercut', 'Terror Touch', 'Mandibular Bite', 'Sickle Slash', 'Dimensional Death', 'Spiral Spin', 'Death Scissors', 'Seedspray', 'Body Slam', 'Hydro Shot', 'Frenetic Rip', 'Spinal Cleave', 'Hysteric Barrage', 'Asuran Claws', 'Cannonball', 'Disseverment', 'Ram Charge', 'Vertical Cleave', 'Final Sting', 'Goblin Rush', 'Vanity Dive', 'Whirl of Rage', 'Benthic Typhoon', 'Quad. Continuum', 'Empty Thrash', 'Delta Thrust', 'Heavy Strike', 'Quadrastrike', 'Tourbillion', 'Amorphic Spikes', 'Barbed Crescent', 'Bilgestorm', 'Bloodrake', 'Glutinous Dart', 'Paralyzing Triad', 'Thrashing Assault', 'Sinker Drill', 'Sweeping Gouge', 'Saurian Slide' };
local BLUSpellTypeDebuff  = T { 'Filamented Hold', 'Cimicine Discharge', 'Demoralizing Roar', 'Venom Shell', 'Light of Penance', 'Sandspray', 'Auroral Drape', 'Frightful Roar', 'Enervation', 'Infrasonics', 'Lowing', 'CMain Wave', 'Awful Eye', 'Voracious Trunk', 'Sheep Song', 'Soporific', 'Yawn', 'Dream Flower', 'Chaotic Eye', 'Sound Blast', 'Blank Gaze', 'Stinking Gas', 'Geist Wall', 'Feather Tickle', 'Reaving Wind', 'Mortal Ray', 'Absolute Terror', 'Blistering Roar', 'Cruel Joke' };
local BLUSpellTypeStun    = T { 'Head Butt', 'Frypan', 'Tail Slap', 'Sub-zero Smash', 'Sudden Lunge' };
local BLUSpellTypeBuff    = T { 'Cocoon', 'Refueling', 'Feather Barrier', 'Memento Mori', 'Zephyr Mantle', 'Warm-Up', 'Amplification', 'Triumphant Roar', 'Saline Coat', 'Reactor Cool', 'Plasma Charge', 'Regeneration', 'Animating Wail', 'Battery Charge', 'Winds of Promy.', 'Barrier Tusk', 'Orcish Counterstance', 'Pyric Bulwark', 'Nat. Meditation', 'Restoral', 'Erratic Flutter', 'Carcharian Verve', 'Harden Shell', 'Mighty Guard' };
local BLUSpellTypeSkill   = T { 'Metallic Body', 'Diamondhide', 'Magic Barrier', 'Occultation', 'Atra. Libations' };
local BLUSpellTypeCure    = T { 'Pollen', 'Healing Breeze', 'Wild Carrot', 'Magic Fruit', 'Plenilune Embrace' }; -- Use MND (1:1.5hp), VIT (1:0.5hp), and Cure Pot gear to boost
local BLUSpellTypeEnmity  = T { 'Actinic Burst', 'Exuviation', 'Fantod', 'Jettatura', 'Temporal Shift' };
local BLUSpellTypeTH      = T { 'Actinic Burst', 'Dream Flower', 'Subduction' };

-- Some simple settings to keep track of things
local settings            = {
    tpvariant = 1,
    diset = false,
    learning = false,
    weapontype = 2,
    reportCastTime = true,
    baseFC = 0.05, -- on CEXI can gain Fast Cast from RDM prestige. 5% at p5.
};

-- Use these names when creating tp sets
-- like tp_lowacc when you add a set via the /lac addset command
-- ex. /lac addset tp_lowacc and /lac addset di_lowacc
-- This will allow you to switch between different tp gear sets
local tpvarianttable      = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    --[4] = 'add_another_set_here'
};

local weapontypetable     = {
    [1] = 'swordset',
    [2] = 'singleswordset',
    [3] = 'staffset',
    [4] = 'freeset',
};

profile.Sets              = sets;

profile.Packer            = {
};

profile.OnLoad            = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(-1, '/addon load blusets');
    local player = gData.GetPlayer();
    -- Below code will change your macro book to the specified macro book when you load this job
    -- Change the macro book # to your main jobs macro set
    -- Change the macro set # to the palatte for the sub job

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 17'); -- Change this to your macro book number
    -- These auto switch to the sub job you are when the file loads
    -- if you change sub after you are BLU main it won't change automatically
    -- it's best to change sub first then go to switch main so it doesn't muck up the auto switching and locking
    if (player.SubJob == 'WAR') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    elseif (player.SubJob == 'DNC') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
        settings.weapontype = 1;
    elseif (player.SubJob == 'RDM') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    elseif (player.SubJob == 'NIN') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
        settings.weapontype = 1;
    else
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    end

    -- This will look at your current main job and make a /command for it
    -- so you can type '/blu tpset' if you were a BLU main job.
    -- Also Alt+F1 allows you to change tp sets on the fly and
    -- Alt+F2 allows for toggling diset on/off.
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /blu /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd wset');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd lset');
    -- You can set a lockstyle set in-game and use the below command to turn it on
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 014');
    gFunc.EquipSet(sets.onload);

    AshitaCore:GetChatManager():QueueCommand(-1, '/blusets delay 1.2');
end

profile.OnUnload          = function()
    -- This is just clean up so your binds and aliases don't get crossed
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /blu');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');

    AshitaCore:GetChatManager():QueueCommand(-1, '/addon unload blusets');
end

profile.HandleCommand     = function(args)
    if (args[1] == 'tpset') then
        settings.tpvariant = settings.tpvariant + 1;
        if (settings.tpvariant > #tpvarianttable) then
            settings.tpvariant = 1;
        end

        gFunc.Message('TP Set: ' .. string.upper(tpvarianttable[settings.tpvariant]));
    elseif (args[1] == 'diset') then
        -- This is a toggle and does if true then false or if false then true.
        if (settings.diset == true) then
            settings.diset = false;
        else
            settings.diset = true;
        end

        gFunc.Message('DI Set is now set to' .. string.upper(tostring(settings.diset)));
    elseif (args[1] == 'wset') then
        settings.weapontype = settings.weapontype + 1;
        if (settings.weapontype > #weapontypetable) then
            settings.weapontype = 1;
        end

        gFunc.Message('Weapon Type Set: ' .. string.upper(weapontypetable[settings.weapontype]));
    elseif (args[1] == 'lset') then
        local isActive = nil;
        if (settings.learning == true) then
            settings.learning = false;
            isActive = 'NOT ACTIVE';
        else
            settings.learning = true;
            isActive = 'ACTIVE';
        end

        gFunc.Message('Learning Set is: ' .. isActive);
    end
end

profile.HandleDefault     = function()
    local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
    local place = gData.GetEnvironment();
    local weapon = gData.GetEquipment();

    -- Switches to your preferred type of weapon set (swordset, staffset, or freeset)
    gFunc.EquipSet(weapontypetable[settings.weapontype]);

    if (player.Status == 'Engaged') then
        if (settings.diset == false) then -- diset is turned off so use normal Tp sets
            gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
            if (player.SubJob == 'NIN') or (player.SubJob == 'DNC') then
                if (weapon.Sub ~= nil) then -- If no sub weapon you can switch earring from Suppanomimi
                    gFunc.Equip('Ear2', 'Suppanomimi');
                end
            end
            -- A set for adding onto your TP set for when you learn spells
            if (settings.learning == true) then
                gFunc.EquipSet(sets.learningset);
            end
        else -- If you turned on DI mode
            -- Make sets like tp_sets but use 'di_'
            -- This uses a toggle to turn it on and off, can be used for other things too
            gFunc.EquipSet('di_' .. tpvarianttable[settings.tpvariant]);
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.rest);
    else -- If idle, dead, zoning, or unknown
        if (towns:contains(place.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
        end
    end

    if (player.IsMoving) then --This works during any mode, idle or engaged
        gFunc.EquipSet(sets.movement);
    end
end

profile.HandleAbility     = function()
    local player = gData.GetPlayer();
    local ability = gData.GetAction();

    if (ability.Name == 'Provoke') then
        --gFunc.EquipSet(sets.putsetnamehere);
        --gFunc.Equip('Slot_Name', 'Item_Name'); -- Use something like this for a single piece of gear
    elseif ability.Name:contains('Waltz') then
        gFunc.EquipSet(sets.chr);
    elseif ability.Name:contains('Cure') then
        gFunc.EquipSet(sets.cure);
    elseif (ability.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (ability.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (ability.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (ability.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    else
        -- This is a catch all/default set
        gFunc.EquipSet(sets.putsetnamehere);
    end
end

profile.HandleItem        = function()
end

profile.HandlePrecast     = function()
    -- Precast, things like Fastcast, Quickcast, or things that get checked BEFORE a spell is casted
    local player = gData.GetPlayer();
    local spell = gData.GetAction();
    local arts = gData.GetBuffCount(359);
    local FC;
    -- This will determine the FastCast value depending on sub job and status effect
    if player.SubJob == 'RDM' then
        FC = 0.15;
    elseif player.SubJob == 'SCH' and arts > 0 then
        FC = 0.10;
    else
        FC = 0; -- No sub job effect on FC
    end

    -- A precast set
    gFunc.EquipSet(sets.precast);

    --------------------------------
    --- set midcastdelay -----------
    --------------------------------
    local fastCastValue = (FC + settings.baseFC) + 0.02; --- adding fast cast
    local minimumBuffer = 0.1;                           -- mimimum buffer
    local packetDelay = 0.25;                            -- if using packetflow .25 else .4
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
    ---------------------------------
    local castTimeSeconds = math.floor((spell.CastTime * (1 - fastCastValue)) / 1000)
    local castTimeDecimal = ((spell.CastTime * (1 - fastCastValue)) / 1000) % 1
    local formattedCastTime = string.format("%.2f", castTimeSeconds + castTimeDecimal)

    if (settings.reportCastTime == true) then
        if (castDelay < packetDelay) then
            formattedCastTime = chat.warning(formattedCastTime);
        else
            formattedCastTime = chat.success(formattedCastTime);
        end

        AshitaCore:GetChatManager():QueueCommand(8, '/echo Cast Time: ' .. formattedCastTime .. ' seconds')
    end

    if string.match(spell.Name, 'Cure') then -- This works on ALL Cure spells
        -- Add a Cure set below it will be used on all 'Cure' spells
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif string.match(spell.Name, 'Utsusemi') then -- Will work with all Utsusemi tiers
        --dwgFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Cannonball') then
        gFunc.EquipSet(sets.cannonball);
    elseif BLUSpellTypeBreath:contains(spell.Name) then
        gFunc.EquipSet(sets.hp);
    end
end

profile.HandleMidcast     = function()
    -- Midcast for things like Haste (for shorter recast), M.ATK, M.ACC, stats, or things that get checked when the
    -- spell is done being casted.
    local player = gData.GetPlayer();
    local spell = gData.GetAction();
    local arts = gData.GetBuffCount(359);
    local FC;

    -- This will determine the FastCast value depending on sub job and status effect
    if player.SubJob == 'RDM' then
        FC = 0.15;
    elseif player.SubJob == 'SCH' and arts > 0 then
        FC = 0.10;
    else
        FC = 0; -- No sub job effect on FC
    end

    --Your fast cast, expressed as a percentage.  0.3 = 30% fast cast.
    local fastCastValue = (FC + settings.baseFC) + 0.09;
    --Minimum number of seconds to leave before spell completion.  Client can tack on up to 400ms wait due to packet interval..
    local minimumBuffer = 0.60;
    local packetDelay = 0.25; -- if using packetflow .25 else .4
    --Calculated delay for midcast..
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;

    --Buffer to store your equipment set for midcast.
    local midcastSet;

    --gFunc.EquipSet(sets.midcast);

    -- General sets for groupings of spells
    if BLUSpellTypeBreath:contains(spell.Name) then
        --gFunc.EquipSet(sets.hp);
        midcastSet = sets.hp;
    elseif BLUSpellTypeBuff:contains(spell.Name) then
        --gFunc.EquipSet(sets.bluskill);
        midcastSet = sets.bluskill;
    elseif BLUSpellTypeCure:contains(spell.Name) then
        --gFunc.EquipSet(sets.mnd);
        midcastSet = sets.cure;
    elseif BLUSpellTypeDebuff:contains(spell.Name) then
        --gFunc.EquipSet(sets.blumagacc);
        midcastSet = sets.blumagacc;
    elseif BLUSpellTypeEnmity:contains(spell.Name) then
        --gFunc.EquipSet(sets.blumagacc);
        midcastSet = sets.blumagacc;
    elseif BLUSpellTypePhys:contains(spell.Name) then
        --gFunc.EquipSet(sets.bluphysical);
        midcastSet = sets.bluphysical;
    elseif BLUSpellTypeSkill:contains(spell.Name) then
        --gFunc.EquipSet(sets.bluskill);
        midcastSet = sets.bluskill;
    elseif BLUSpellTypeStun:contains(spell.Name) then
        --gFunc.EquipSet(sets.blumagacc);
        midcastSet = sets.blumagacc;
    end

    --More specific sets for certain spells
    if (spell.Name == 'Cannonball') then -- DEF to modify attack, 50% STR, VIT
        --gFunc.EquipSet(sets.cannonball);
        midcastSet = sets.cannonball;
    elseif (spell.Name == 'Asuran Claws') then -- 10% STR, DEX
        --gFunc.EquipSet(sets.str);
        midcastSet = sets.str;
    elseif (spell.Name == 'Disserverment') then -- 20% STR, DEX
        --gFunc.EquipSet(sets.str);
        midcastSet = sets.str;
    elseif (spell.Name == 'Quad. Continuum') then  -- 32% STR, VIT
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Hysteric Barrage') then -- 30% DEX
        midcastSet = sets.str;
    elseif (spell.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Magic Hammer') then -- 30% MND
        --gFunc.EquipSet(sets.mnd);
        midcastSet = sets.mnd;
    elseif (spell.Name == 'Entomb') then           -- 80% VIT
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Spectral Floe') then    -- 80% INT
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Anvil Lightening') then -- 80% DEX
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Searing Tempest') then  -- 80% STR
        midcastSet = sets.str;
    elseif (spell.Name == 'Blinding Fulgor') then  -- 30% STR, DEX, AGI
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Scouring Spate') then   -- 80% MND
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Silent Storm') then     -- 80% AGI
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Tenebral Crush') then   -- 30% INT, MND, VIT
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == 'Glutinous Dart') then   -- 50% STR, VIT
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (spell.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    end

    --This handles the actual swapping.
    --Since packet interval is 0.4s, no need to do multiple swaps for spells lasting less than that duration.
    if (castDelay < packetDelay) then
        gFunc.EquipSet(midcastSet);

        --Otherwise, equip PDT immediately while waiting (or whatever set you want), then create a function to delay the rest.
    else
        gFunc.EquipSet(sets.SIRD); -- Use a PDT or SIRD set here
        local boundFunction = gFunc.ForceEquipSet:bind1(midcastSet);
        boundFunction:once(castDelay);
    end
end

profile.HandlePreshot     = function()
    --gFunc.EquipSet(sets.preshot);
end

profile.HandleMidshot     = function()
    --gFunc.EquipSet(sets.midshot);
end

profile.HandleWeaponskill = function()
    local player = gData.GetPlayer(); -- Info about the player if needed
    local wskill = gData.GetAction(); -- Determines the action you're taking

    -- Removing the double hyphen to 'uncomment' the gFunc lines
    if (wskill.Name == 'Savage Blade') then
        gFunc.EquipSet(sets.ws_str_mnd);
    elseif (wskill.Name == 'Requiescat') then
        gFunc.EquipSet(sets.req);
    elseif (wskill.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (wskill.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (wskill.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (wskill.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    elseif (wskill.Name == '') then
        --gFunc.EquipSet(sets.putsetnamehere);
    else
        -- This is a catch all/default set
        --gFunc.EquipSet(sets.putsetnamehere);
    end
end

return profile;
