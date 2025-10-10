local profile = {};
local lachelperlib = gFunc.LoadFile('lachelperlib.lua');
local sets = {
    ['idle'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Beak Necklace',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Argute Gown',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Argute Pants',
        Feet = 'Dune Sandals',
    },
    ['idle_town'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Argute M.board',
        Neck = 'Beak Necklace',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Argute Gown',
        Hands = 'Dune Bracers',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Serket Ring',
        Back = 'Errant Cape',
        Waist = 'Desert Rope',
        Legs = 'Druid\'s Slops',
        Feet = 'Dune Sandals',
    },
    ['sublimation'] = {
        Head = 'Scholar\'s M.board',
        Body = 'Argute Gown',
    },
    ['sublimation_on_use'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Walahra Turban',
        Neck = 'Parrying Torque',
        Ear2 = 'Loquac. Earring',
        Body = 'Argute Gown',
        Hands = 'Magical Mitts',
        Waist = 'Desert Sash',
        Legs = 'Argute Pants',
    },
    ['enhancing'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Argute M.board',
        Neck = 'Colossus\'s Torque',
        Ear1 = 'Astral Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Argute Gown',
        Hands = 'Scholar\'s Bracers',
        Ring1 = 'Tamas Ring',
        --Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Argute Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Dune Sandals',
    },
    ['enfeeble'] = {
        Main = 'Chatoyant Staff',
        Ammo = 'Jasper Tathlum',
        Head = 'Argute M.board',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        Body = 'Argute Gown',
        Hands = 'Argute Bracers',
        Ring1 = 'Tamas Ring',
        --Ring2 = 'Karka Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Salire Belt',
        Legs = 'Argute\'s Pants',
        Feet = 'Dune Sandals',
    },
    ['matk'] = {
        Main = 'Chatoyant Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Argute M.board',
        Neck = 'Aesir Torque',
        Ear1 = 'Crapaud Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Scholar\'s Gown',
        Hands = 'Genie Gages',
        Ring1 = 'Tamas Ring',
        --Ring2 = 'Galdr Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Shrewd Pumps',
    },
    ['cure'] = {
        Main = 'Tamaxchi',
        Sub = 'Genbu\'s Shield',
        Ammo = 'Hedgehog Bomb',
        Head = 'Argute M.board',
        Neck = 'Colossus\'s Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Scholar\'s Gown',
        Hands = 'Scholar\'s Bracers',
        Ring1 = 'Tamas Ring',
        --Ring2 = 'Karka Ring',
        Back = 'Grapevine Cape',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Argute Loafers',
    },
    ['dark'] = {
        Main = 'Chatoyant Staff',
        Ammo = 'Jasper Tathlum',
        Head = 'Argute M.board',
        Neck = 'Aesir Torque',
        Ear1 = 'Cass. Earring',
        Ear2 = 'Helenus\'s Earring',
        Body = 'Scholar\'s Gown',
        Hands = 'Argute Bracers',
        Ring1 = 'Tamas Ring',
        --Ring2 = 'Galdr Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Salire Belt',
        Legs = 'Argute Pants',
        Feet = 'Shrewd Pumps',
    },
    ['drain'] = {
        Ear1 = 'Hirudinea Earring',
        Ear2 = 'Loquac. Earring',
    },
    ['precast'] = {
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Back = 'Veela Cape',
        Feet = 'Rostrum Pumps',
    },
    ['realm'] = {
    },
    ['shattersoul'] = {
    },
    ['spirittaker'] = {
    },

};

local elements = T{
	-- Change these grips for the grips you prefer for those elements
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

local Towns = T{'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship',};
local Staves = T{'Chatoyant Staff', 'Baqil Staff', 'Iridial Staff'}; --Staves that you use from highest priority to lowest

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local player = gData.GetPlayer();

	-- These will change your macro book and page automatically depending on your subjob so pic subjob first.
	if (player.SubJob == 'RDM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'WHM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	elseif (player.SubJob == 'BLM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
	elseif (player.SubJob == 'SMN') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
	elseif (player.SubJob == 'GEO') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
    else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

	lachelperlib.SetAliasList();
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 018');

end

profile.OnUnload = function()
	lachelperlib.Unload()
end

profile.HandleCommand = function(args)
	lachelperlib.HandleCommands(args)
end

profile.HandleDefault = function()

    local sub_active = gData.GetBuffCount(187); -- ID: 187 = Sublimation: Active
    local sub_complete = gData.GetBuffCount(188); -- ID: 188 = Sublimation: Complete
    local player = gData.GetPlayer();
    local place = gData.GetEnvironment();

    if (sub_active > 0) then -- This checks to see if Sublimation is active and if it is it keeps the sublimation set on
        -- but this will not stay on since other gear for cure, nukes and such is more important
        gFunc.EquipSet(sets.sublimation);
    else
        gFunc.Equip('Body', 'Vermillion Cloak'); --Change your body to whatever refresh piece you have.
    end

    if (player.Status == 'Engaged') then

    elseif (player.Status == 'Zoning') then

    else -- Idle
        if (lachelperlib.towns:contains(place.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
			if (sub_active > 0) then -- This checks to see if Sublimation is active and if it is it keeps the sublimation set on
			-- but this will not stay on since other gear for cure, nukes and such is more important
				gFunc.EquipSet(sets.sublimation);
			elseif (sub_complete > 0) then
				gFunc.Equip('Body', 'Vermillion Cloak'); --Change your body to whatever refresh piece you have.
			else
				gFunc.EquipSet(sets.idle);
			end
            
        end
        
    end

    if (player.IsMoving) then
        gFunc.Equip('Feet', 'Herald\'s Gaiters'); -- Movement speed when moving
    end

    lachelperlib.HandleDefault();

end

profile.HandleAbility = function()

    local ability = gData.GetAction();
    local player = gData.GetPlayer();
    local sub_active = gData.GetBuffCount(187); -- ID: 187 = Sublimation: Active
    local sub_complete = gData.GetBuffCount(188); -- ID: 188 = Sublimation: Complete

    if (ability.Name == 'Sublimation') then
        if (sub_active == 0) then -- if no sublimation effect is active
            gFunc.EquipSet(sets.sublimation_on_use);
        elseif (sub_complete > 0) then -- if  sublimation is fully charged
            gFunc.EquipSet(sets.sublimation);
        else -- If sublimation is still charging
            gFunc.EquipSet(sets.sublimation);
        end

    elseif (ability.Name == 'Light Arts') then

    elseif (ability.Name == 'Dark Arts') then

    elseif (ability.Name == 'Modus Veritas') then

    elseif (ability.Name == 'Penury') then -- Lowers cost of next LIGHT spell by 50%

    elseif (ability.Name == 'Parsimony') then -- Lowers cost of next DARK spell by 50%

    elseif (ability.Name == 'Addendum: White') then -- Allows for additional LIGHT spells

    elseif (ability.Name == 'Addendum: Black') then -- Allows for additional DARK spells

    elseif (ability.Name == 'Celerity') then -- Shortens casting time by 50% for next LIGHT spell

    elseif (ability.Name == 'Alacrity') then -- Shortens casting time by 50% for next DARK spell

    elseif (ability.Name == 'Accession') then -- Turns next LIGHT spell into an AoE w/some restrictions

    elseif (ability.Name == 'Manifestation') then -- Turns next DARK spell into an AoE w/some restrictions

    elseif (ability.Name == 'Rapture') then -- Increases potency of certain types of white magic spells by 50%

    elseif (ability.Name == 'Ebullience') then -- Increases potency of certain types1 of black magic spells by 50%

    elseif (ability.Name == 'Perpetuance') then -- Increases the enhancement effect duration of your next white magic spell

    elseif (ability.Name == 'Immanence') then -- Makes it possible for your next elemental magic spell to be used in a skillchain, but not a magic burst

    elseif (ability.Name == '') then

    elseif (ability.Name == '') then

    end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

    local spell = gData.GetAction();
    local player = gData.GetPlayer();
    local ability = gData.GetBuffCount(); -- Looking for stratagems
    local weather = gData.GetEnvironment().WeatherElement; -- Gets the weather element

    gFunc.EquipSet(sets.precast)

    if (spell.Skill == 'Enhancing Magic') then

    elseif (spell.Skill == 'Healing Magic') then

    elseif (spell.Skill == 'Enfeebling Magic') then

    elseif (spell.Skill == 'Elemental Magic') then

    elseif (spell.Skill == 'Dark Magic') then

    end
    --[[
    local alacrity = gData.GetBuffCount(363);
    local celerity = gData.GetBuffCount(362);
    -- ID: 362 - Celerity, ID: 363 - Alacrity
    if (spell.Element == weather) and (alacrity or celerity > 0) then
        gFunc.Equip('Feet', 'Argute Loafers');
    end

    if (spell.Type == 'White Magic') then -- If the spell is White Magic then we'll put Light Arts gear on
        gFunc.Equip('Legs', 'Scholar\'s Pants'); -- Enhances Light Arts
        gFunc.Equip('Feet', 'Scholar\'s Loafers'); -- Enhances both Light and Dark Arts
        gFunc.Equip('Head', 'Argute Mortarboard'); -- Enhances both Light and Dark Arts
    elseif (spell.Type == 'Black Magic') then -- If the spell is Black Magic then we'll put Dark Arts gear on
        gFunc.Equip('Body', 'Scholar\'s Gown'); -- Enhances Dark Arts
        gFunc.Equip('Feet', 'Scholar\'s Loafers'); -- Enhances both Light and Dark Arts
        gFunc.Equip('Head', 'Argute Mortarboard'); -- Enhances both Light and Dark Arts
    end
    ]]
end

profile.HandleMidcast = function()

    local spell = gData.GetAction();
    local player = gData.GetPlayer();
    local ability = gData.GetBuffCount(); -- Looking for stratagems
    local weather = gData.GetEnvironment().WeatherElement; -- Gets the weather element

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.enhancing);
        if string.match(spell.Name, 'Regen') then
            --gFunc.Equip();
        elseif spell.Name == 'Stoneskin' then
            gFunc.Equip('Neck', 'Stone Gorget');
        end
    elseif (spell.Skill == 'Healing Magic') then
        local sLen = string.len(spell.Name); -- Gets the length of the spell name

        if string.match(spell.Name, 'Cure') then -- works on all cure spells
            gFunc.EquipSet(sets.cure);
            if player.MP < player.MaxMP - 49 then
                gFunc.Equip('Ring2', 'Karka Ring');
            end
        elseif string.match(string.sub(spell.Name, sLen - 2, 2), 'na') then -- works on all -na spells
            --gFunc.Message(sLen .. ' is the length returned for ' .. spell.Name); --Debugging purposes
        end

    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.enfeeble);
        gFunc.Equip('Sub', elements[spell.Element][1]);
        if player.MP < player.MaxMP - 49 then
            gFunc.Equip('Ring2', 'Galdr Ring');
        end

    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.matk);
        gFunc.Equip('Sub', elements[spell.Element][1]);
        if player.MP < player.MaxMP - 49 then
            gFunc.Equip('Ring2', 'Galdr Ring');
        end

    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.dark);
        gFunc.Equip('Sub', elements[spell.Element][1]);
        if player.MP < player.MaxMP - 49 then
            gFunc.Equip('Ring2', 'Galdr Ring');
        end
        if spell.Name == 'Drain' then
            gFunc.EquipSet(sets.drain);
        elseif spell.Name == 'Aspir' then
            gFunc.EquipSet(sets.drain);
        end

    end

    local alacrity = gData.GetBuffCount(363);
    local celerity = gData.GetBuffCount(362);
    -- ID: 362 - Celerity, ID: 363 - Alacrity

    if (spell.Type == 'White Magic') then -- If the spell is White Magic then we'll put Light Arts gear on
        gFunc.Equip('Legs', 'Scholar\'s Pants'); -- Enhances Light Arts
        gFunc.Equip('Feet', 'Scholar\'s Loafers'); -- Enhances both Light and Dark Arts
        gFunc.Equip('Head', 'Argute Mortarboard'); -- Enhances both Light and Dark Arts
    elseif (spell.Type == 'Black Magic') then -- If the spell is Black Magic then we'll put Dark Arts gear on
        gFunc.Equip('Body', 'Scholar\'s Gown'); -- Enhances Dark Arts
        gFunc.Equip('Feet', 'Scholar\'s Loafers'); -- Enhances both Light and Dark Arts
        gFunc.Equip('Head', 'Argute Mortarboard'); -- Enhances both Light and Dark Arts
    end

    if (spell.Element == weather and alacrity or celerity > 0) then
        gFunc.Equip('Feet', 'Argute Loafers');
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