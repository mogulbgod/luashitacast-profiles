local profile = {};

--lachelperlib = gFunc.LoadFile('lachelperlib.lua');
local chat = require('chat');

local sets = {
    ['idle'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Desert Bracers',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['idle_with_pet'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Serket Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
	['idle_town'] = {
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Summoner\'s Dblt.',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['default'] = {
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['dt'] = {
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['refresh'] = {
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['precast'] = {
        Head = 'Walahra Turban',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Veela Cape',
        Waist = 'Al Zahbi Sash',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['midcast'] = {
        Head = 'Walahra Turban',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Veela Cape',
        Waist = 'Al Zahbi Sash',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['bp_minus_delay'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Summoner\'s Dblt.',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['resting'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Summoner\'s Horn',
        Neck = 'Beak Necklace',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Dalmatica',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['only_pet_engaged'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Ammo = 'Hedgehog Bomb',
        Head = 'Spurrer Beret',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Wilder. Earring +1',
        Body = 'Summoner\'s Dblt.',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Beastly Girdle',
        Legs = 'Summoner\'s Spats',
        Feet = 'Koschei Crackows',
    },
	['master_pet_engaged'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Ammo = 'Hedgehog Bomb',
        Head = 'Spurrer Beret',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Wilder. Earring +1',
        Body = 'Summoner\'s Dblt.',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Beastly Girdle',
        Legs = 'Summoner\'s Spats',
        Feet = 'Koschei Crackows',
    },
    ['stylelock'] = {
        Head = 'Summoner\'s Horn',
        Neck = 'Morgana\'s Choker',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Summoner\'s Dblt.',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Eidolon Ring',
        Back = 'Summoner\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Dune Sandals',
    },
    ['cure'] = {
        Neck = 'Fylgja Torque +1',
        Ear2 = 'Roundel Earring',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Druid\'s Slops',
        Feet = 'Medium\'s Sabots',
    },
    ['enhancing'] = {
    },
    ['spirit_taker'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Omni Grip',
        Ammo = 'Jasper Tathlum',
        Head = 'Maat\'s Cap',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Dalmatica', Augment = { [1] = '"Fast Cast"+3', [2] = 'Occ. quickens spellcasting +3%', [3] = '"Mag. Atk. Bns."+3' } },
        Hands = 'Dune Bracers',
        Ring1 = 'Aife\'s Annulet',
        Ring2 = 'Eidolon Ring',
        Back = 'Grapevine Cape',
        Waist = 'Desert Rope',
        Legs = { Name = 'Zenith Slacks', Augment = { [1] = 'Song spellcasting time -3%', [2] = '"Resist Poison"+5', [3] = 'HP recovered while healing +5' } },
        Feet = 'Rostrum Pumps',
    },
	['shattersoul'] = {
    },
    ['onload'] = {
        Main = '',
        Sub = '',
        Range = '',
        Ammo = '',
    },
    ['summonskill'] = {
        Neck = 'Smn. Torque',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Eidolon Ring',
        Legs = 'Oracle\'s Braconi',
        Feet = { Name = 'Zenith Pumps', Augment = { [1] = 'Summoning magic skill +3', [2] = 'Healing magic skill +5', [3] = 'Pet: "Mag. Atk. Bns."+4' } },
    },
};

local idlevarianttable = {
    [1] = 'default',
    [2] = 'dt',
    [3] = 'refresh',
};

local settings = {
	idlevariant = 1,
	diset = false,
	macro_set = 1,
    pause_macro_switching = false,
    pref_avatar = 'none',
};

local SpiritsByElement = T{
    ['Light']   = 'Light Spirit',
    ['Dark']    = 'Dark Spirit',
    ['Earth']   = 'Earth Spirit',
    ['Water']   = 'Water Spirit',
    ['Wind']    = 'Air Spirit',
    ['Fire']    = 'Fire Spirit',
    ['Ice']     = 'Ice Spirit',
    ['Thunder'] = 'Thunder Spirit',
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

local BloodPactMagic = T{ 'Searing Light', 'Howling Moon', 'Inferno', 'Earthen Fury', 'Tidal Wave', 'Aerial Blast', 'Diamond Dust', 'Judgment Bolt', 'Ruinous Omen', 'Altana\'s Favor', 'Healing Ruby', 'Fire II', 'Stone II', 'Water II', 'Aero II', 'Blizzard II', 'Thunder II', 'Raise II', 'Thunderspark', 'Somnolence', 'Shining Ruby', 'Aerial Armor', 'Mewing Lullaby', 'Frost Armor', 'Nightmare', 'Reraise II', 'Rolling Thunder', 'Lunar Roar', 'Slowga', 'Whispering Wing', 'Ultimate Terror', 'Crimson Howling', 'Sleepga', 'Lightening Armor', 'Ecliptic Growl', 'Glittering Ruby', 'Earthen Ward', 'Spring Water', 'Hastega', 'Noctoshield', 'Ecliptic Howl', 'Meteorite', 'Eerie Eye', 'Dream Shroud', 'Fire IV', 'Stone IV', 'Water IV', 'Aero IV', 'Blizzard IV', 'Thunder IV', 'Healing Ruby II', 'Nether Blast', 'Meteor Strike', 'Heavenly Strike', 'Wind Blade', 'Geocrush', 'Thunderstorm', 'Grand Fall', 'Perfect Defense', 'Zantetsuken', 'Level ? Holy', 'Holy Mist', 'Lunar Bay', 'Night Terror', 'Earthen Armor', 'Tidal Roar', 'Fleet Wind', 'Inferno Howl', 'Diamond Storm', 'Shock Squall', 'Soothing Ruby', 'Heavenward Howl', 'Pavor Nocturnus', 'Impact' };

local BloodPactPhysical = T{ 'Punch', 'Rock Throw', 'Barracuda Dive', 'Claw', 'Axe Kick', 'Shock Strike', 'Camisado', 'Regal Scratch', 'Poison Nails', 'Moonlit Charge', 'Crescent Fang', 'Rock Buster', 'Burning Strike', 'Tail Whip', 'Double Punch', 'Megalith Throw', 'Double Slap', 'Eclipse Bite', 'Flaming Crush', 'Mountain Buster', 'Spinning Dive', 'Predator Claws', 'Rush', 'Chaotic Strike', 'Blindside', 'Regal Gash' };

local BloodPactHybrid = T{ 'Flaming Crush', 'Burning Strike' };

local AvatarElements = T{
    ['Carbuncle'] = 'Light',
    ['Cait Sith'] = 'Light',
    ['Diabolos'] = 'Dark',
    ['Fenrir'] = 'Dark',
    ['Titan'] = 'Earth',
    ['Shiva'] = 'Ice',
    ['Garuda'] = 'Wind',
    ['Ramuh'] = 'Thunder',
    ['Ifrit'] = 'Fire',

};

profile.Sets = sets;

profile.Packer = {
};

local function AutoElementalSiphon()

	local wElement = gData.GetEnvironment().WeatherElement;
	local dElement = gData.GetEnvironment().DayElement;
	local player = gData.GetPlayer();
    local pet = gData.GetPet();
	local hadPet = false;
	local noPetTimings = {1, 5, 8, 11};
	local petTimings = {3, 8, 11, 14};

    -- Using local functions allows for waits to be used
	local function summonspirit(ele)
		-- We pass either dElement for day or wElement for weather elements.
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. SpiritsByElement[ele] .. '" <me>');
    end

    local function siphon()
        AshitaCore:GetChatManager():QueueCommand(1, '/ja "Elemental Siphon" <me>');
    end


    local function releasepet()
        AshitaCore:GetChatManager():QueueCommand(1, '/pet "Release" <me>');
    end
	
	local function resummonavatar()
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. settings.pref_avatar .. '" <me>');
	end
	-- End local functions


	--gFunc.Message(wElement .. ' | ' .. dElement);
	if (player.MainJob == 'SMN') and (player.MainJobLevel >= 50) then
		if (wElement == 'None') or (wElement == 'Unknown') then
			gFunc.Message('day element is unknown or none.'); -- for testing remove when done
			
			-- if no weather element is up we look at the DayElement
			if (dElement ~= 'Unknown') then -- If there is a day element present and not Unknown
                
				if (pet ~= nil) then -- If you have an avatar active
					
					-- Write what avatar or spirit you had our previously
					settings.pref_avatar = pet.Name;
					
					-- Set the hadPet flag to true
					hadPet = true;
					
					-- Dismiss your current pet
					releasepet();
				end
				
				-- Increase the numbers in brackets by the same amount if one of these stalls due to lag or latency
				-- if adding 1 to siphon then add 1 to all after siphon
				summonspirit:bind(dElement):once(3);
				siphon:bind():once(8);
				releasepet:bind():once(11);
				
				-- If the hadPet flag is true then we'll need to resummon the last summons
				if hadPet == true then
					resummonavatar:bind():once(14);
				end
				
			else
				-- If the day element is "unknown" then something is wrong
				gFunc.Message('There was an error casting Spirit spell; No day element found.');
			end
		else
			-- If there is a weather element present
			if (pet ~= nil) then -- If you have an avatar active
				settings.pref_avatar = pet.Name;
				hadPet = true;
				releasepet();
            end
			summonspirit:bind(wElement):once(3);
			siphon:bind():once(8);
			releasepet:bind():once(11);
			if hadPet == true then
				resummonavatar:bind():once(14);
			end
		end
	else
		return
	end

end

local function HandlePetAction(PetAction)

	if (PetAction ~= nil) then -- This makes sure the pet is doing an action
        if BloodPactMagic:contains(PetAction.Name) then -- This checks if the BP is a magical one
		    --gFunc.EquipSet(sets.pet_bp_magical);
	    elseif BloodPactPhysical:contains(PetAction.Name) then -- This checks if the BP is a physical one
		    gFunc.Equip('Waist', 'Mujin Obi');
        elseif BloodPactHybrid:contains(PetAction.Name) then
            --gFunc.EquipSet(sets.bp_hybrid); -- A mix of magic and physical
        end
	end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

	AshitaCore:GetChatManager():QueueCommand(1, '/macro book 10');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');

	-- Keybindings
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /smn /lac fwd');

    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd idleset'); -- ALT + F1
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset'); -- ALT + F2
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd siphon'); -- ALT + F3

    gFunc.Equip('Main','Chatoyant Staff');
    gFunc.Equip('Sub','Staff Strap');
    gFunc.Equip('Ammo','Hedgehog Bomb');

    --lachelperlib.SetAliasList();
	gFunc.LockStyle(sets.stylelock); -- Will lockstyle you to the set called 'stylelock'

end

profile.OnUnload = function()

	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /smn');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');

    --lachelperlib.Unload()
end

profile.HandleCommand = function(args)

    --if (args[1] == nil or '') then return; end

    if (args[1] == 'pause') then
        if (settings.pause_macro_switching == false) then
            settings.pause_macro_switching = true;
            gFunc.Message('Automatic macro switching is now PAUSED');
        else
            settings.pause_macro_switching = false;
            gFunc.Message('Automatic macro switching is now UNPAUSED');
        end
    elseif (args[1] == 'diset') then -- Turns on DI mode which will equip a specific set
        if (settings.diset == true) then
            settings.diset = false;
            gFunc.Message('DI Settings now set to FALSE.');
        else
            settings.diset = true;
            gFunc.Message('DI Settings now set to TRUE.');
        end
    elseif (args[1] == 'idleset') then
        if (args[2] ~= nil) then
            if (type(args[2] == 'number')) then
                if (args[2] == 1) then -- default set
                    settings.idlevariant = 1;
                    gFunc.Message('IDLE set now set to ' .. tostring(args[2]) .. ' - ' .. string.upper(idlevarianttable[args[2]] .. '.'));
                elseif (args[2] == 2) then -- DT set
                    settings.idlevariant = 2;
                    gFunc.Message('IDLE set now set to ' .. tostring(args[2]) .. ' - ' .. string.upper(idlevarianttable[args[2]] .. '.'));
                elseif (args[2] == 3) then -- Refresh set
                    settings.idlevariant = 3
                    gFunc.Message('IDLE set now set to ' .. tostring(args[2]) .. ' - ' .. string.upper(idlevarianttable[args[2]] .. '.'));
                else
                    gFunc.Message('You must use a valid whole number 1-' .. tostring(#args) .. ' to switch to a specific set.');
                end
            end
        else
            -- This cycles through a setting to allow switching of idle gear sets
            settings.idlevariant = settings.idlevariant + 1;
		    if (settings.idlevariant > #idlevarianttable) then
			    settings.idlevariant = 1;
		    end
		    gFunc.Message('IDLE Set: ' .. string.upper(idlevarianttable[settings.idlevariant])); -- Reused from a melee profile

        end
    elseif (args[1] == 'siphon') then
		AutoElementalSiphon()
		gFunc.Message('/echo Using ElementalSiphon');
    elseif (args[1] == '') then
    elseif (args[1] == 'test') then
		gFunc.Message('/echo pref_avatar = ' .. settings.pref_avatar ); -- for testing remove when done
    end

    --lachelperlib.HandleCommands(args)
end

profile.HandleDefault = function()

	local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local place = gData.GetEnvironment(); -- This is to find what zone you're in by using place.Area
	local pet = gData.GetPet();
    local petAction = gData.GetPetAction();
	local target = gData.GetTarget();

    if (petAction ~= nil) then
        HandlePetAction(petAction);
        return; -- This is so we don't go changing gear and screw up the gear swap for our pet action
    end

	if (player.Status == 'Engaged') then

		-- Pet is active
		if (pet ~= nil) then
			if (pet.Status == 'Engaged') then
                if target ~= nil then
                    if target.Distance >= 5 then -- You far but engaged and avatar is engaged
                        gFunc.EquipSet(sets.only_pet_engaged); -- A set with gear just for your Auto and whatever -DT gear for yourself or regen.
                    elseif target.Distance < 5 then -- You near and engaged and avatar is engaged
                        --gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]); -- Master gear set; not used yet
				        gFunc.EquipSet(sets.pet_melee_addon); -- Auto gear addon item set
                    end
                end
			end
		end
		-- End pet is active
		
		gFunc.EquipSet(idlevarianttable[settings.idlevariant]);

		if (settings.diset == true) then -- If you turned on DI mode
		-- Make sets like tp_sets but use 'di_'
			gFunc.EquipSet('di_' .. idlevarianttable[settings.idlevariant]);

		end

	elseif (player.Status == 'Resting') then

		gFunc.EquipSet(sets.resting);

	else -- If idle, dead, zoning, or unknown
		if (towns:contains(place.Area)) then
			-- Idle in a town/city
			gFunc.EquipSet(sets.idle_town);

		else
			-- Idle outside of a town/city
			if (pet ~= nil) then -- If you have a pet
				if (pet.Status == 'Engaged') then -- if you aren't engaged (idle) but your avatar is fighting

                    --gFunc.EquipSet(sets.idle_pet);
					gFunc.EquipSet(sets.only_pet_engaged);
				else
					gFunc.EquipSet(sets.idle_with_pet); -- Avatar is idle
				end
            else
                gFunc.EquipSet(sets.idle); -- This is just you doing nothing while not in a town
            end

		end

	end

    -- Special rules when avatar is active
	if (pet ~= nil) then
        
		-- Gear for specific avatars
		if (pet.Name == 'Carbuncle') then
            gFunc.Equip('Hands', 'Carbuncle Mitts');
        elseif (pet.Name == 'Shiva') then

        end
		-- End gear specific avatars
		
		-- If avatar is active and want specific gear to match the DayElement
		if (place.DayElement == AvatarElements[pet.Name]) then
			gFunc.Equip('Body', 'Summoner\'s Dblt.'); -- Avatar perp -3
		end
		-- End gear specific for day
		
		-- If avatar element matches the current weather
		if (place.RawWeatherElement == AvatarElements[pet.Name]) then
			gFunc.Equip('Head', 'Summoner\'s Horn'); -- Avatar perp -3
		end
		-- End gear specific for weather
		
    end

	if (pet == nil) and (settings.macro_set ~= 1) and (player.Status ~= 'Dead') then
        -- If no pet (because it got killed or you ran out of mp) and you're not dead
		if (settings.pause_macro_switching == false) then
            AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1'); -- go back to your first macro page
        end
	end

    if (player.IsMoving) then
        gFunc.Equip('Feet', 'Herald\'s Gaiters');
    end

end

profile.HandleAbility = function()

	local ability = gData.GetAction();

	if (ability.Name == 'Release') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
        settings.macro_set = 1;
    elseif (ability.Type == 'Blood pact: Rage' or 'Blood Pact: Ward') then
        gFunc.EquipSet(sets.bp_minus_delay);
    elseif (ability.Name == 'Attack') then

    elseif (ability.Name == 'Apogee') then

    elseif (ability.Name == 'Astral Flow') then

    elseif (ability.Name == 'Release') then

    end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.precast);
end

profile.HandleMidcast = function()

	local action = gData.GetAction();

	if (action.Name == 'Carbuncle') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
		settings.macro_set = 2;
	elseif (action.Name == 'Shiva') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
		settings.macro_set = 3;
	elseif (action.Name == 'Garuda') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
		settings.macro_set = 4;
	elseif (action.Name == 'Ramuh') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 5');
		settings.macro_set = 5;
	elseif (action.Name == 'Titan') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 6');
		settings.macro_set = 6;
	elseif (action.Name == 'Leviathan') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 7');
		settings.macro_set = 7;
	elseif (action.Name == 'Fenrir') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 8');
		settings.macro_set = 8;
	elseif (action.Name == 'Diabolos') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 9');
		settings.macro_set = 9;
	elseif (action.Name == 'Ifrit') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');
		settings.macro_set = 10;
	elseif string.match(action.Name, 'Elemental') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif string.match(action.Name, 'Cure') then
        gFunc.EquipSet(sets.cure);
	else
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();

    if (ws.Name == 'Shattersoul') then
        gFunc.EquipSet(sets.shattersoul);
    elseif (ws.Name == 'Spirit Taker') then
        gFunc.EquipSet(sets.spirit_taker);
    end
end

return profile;