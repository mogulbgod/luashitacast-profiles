-- Luashitacast Original Generic Template v0.1 by @Mogul

-- License: Share it, change it, use it as you like, just don't change the first line
-- or claim you made it.
-- Originally created for the CatsEyeXI server but it will work on other private servers as well
-- as retail but for current retail it will need a lot of work.

-- Comments are left throughout the file to let you know what things do and what to do when editing it.
-- IMPORTANT: READ THE COMMENTS IN THE FILE! It will be helpeful to you. Comments have a double hyphen (--)
-- before then like these lines.

-- This file will change over time so if you have suggestions or comments or issues reach out to me on Discord.

local profile = {}; -- Don't touch this line
-- Name your profile sets when making them the same as the sets names below
local sets = {
	['tp_lowacc'] = {
    },
	['tp_medacc'] = {
    },
	['tp_highacc'] = {
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
    },
	['idle_town'] = {
    },
	['rest'] = {
    },
	['precast'] = {
    },
	['midcast'] = {
    },
	['preshot'] = {
    },
	['midshot'] = {
    },
};

-- A list (or 'table' in Lua terms) of towns/cities
local towns = T{'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship',};

-- Some simple settings to keep track of things
local settings = {
	tpvariant = 1,
	diset = false,
};

-- Use these names when creating tp sets
-- like tp_lowacc when you add a set via the /lac addset command
-- ex. /lac addset tp_lowacc
-- This will allow you to switch between different tp gear sets
local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    --[4] = 'add_another_set_here'
};

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local player = gData.GetPlayer();
	-- Below code will change your macro book to the specified macro book when you load this job
	-- Change the macro book # to your main jobs macro set
	-- Change the macro set # to the palatte for the sub job
	if (player.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'RDM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'NIN') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

	-- This will look at your current main job and make a /command for it
	-- so you can type '/war tpset' if you were a WAR main job.
	-- Also Alt+F1 allows you to change tp sets on the fly and
	-- Alt+F2 allows for toggling diset on/off.
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /' .. string.lower(player.MainJob) .. ' /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	
end

profile.OnUnload = function()

	local player = gData.GetPlayer();
	-- This is just clean up so your binds and aliases don't get crossed
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /' .. string.lower(player.MainJob));
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	
end

profile.HandleCommand = function(args)

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

	end	
	
end

profile.HandleDefault = function()

	local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local place = gData.GetEnvironment();
	
	if (player.Status == 'Engaged') then

		gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
		
		if (settings.diset == true) then -- If you turned on DI mode
		-- Make sets like tp_sets but use 'di_'
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
	
end

profile.HandleAbility = function()

	local player = gData.GetPlayer();
	local ability = gData.GetAction();
	
	if (ability.Name == 'Provoke') then

		gFunc.EquipSet(sets.putsetnamehere);
		--gFunc.Equip('Slot_Name', 'Item_Name'); -- Use something like this for a single piece of gear

	elseif (ability.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (ability.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (ability.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (ability.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (ability.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (ability.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	else
		-- This is a catch all/default set
		gFunc.EquipSet(sets.putsetnamehere);

	end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

	local player = gData.GetPlayer();
	local spell = gData.GetAction();

	-- A precast set
	gFunc.EquipSet(sets.precast);
	
	if string.match(spell.Name, 'Cure') then -- This works on ALL Cure spells
		-- Add a Cure set below it will be used on all 'Cure' spells
		gFunc.EquipSet(sets.putsetnamehere);

	elseif string.match(spell.Name, 'Utsusemi') then -- Will work with all Utsusemi tiers

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	else
		-- This is a catch all/default set
		gFunc.EquipSet(sets.putsetnamehere);

	end

end

profile.HandleMidcast = function()

	local player = gData.GetPlayer();
	local spell = gData.GetAction();
	
	if (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	elseif (spell.Name == '') then

		gFunc.EquipSet(sets.putsetnamehere);

	else
		-- This is a catch all/default set
		gFunc.EquipSet(sets.putsetnamehere);

	end
	
end

profile.HandlePreshot = function()

	--gFunc.EquipSet(sets.preshot);

end

profile.HandleMidshot = function()

	--gFunc.EquipSet(sets.midshot);

end

profile.HandleWeaponskill = function()

	local player = gData.GetPlayer(); -- Info about the player if needed
	local wskill = gData.GetAction(); -- Determines the action you're taking
	
	-- Removing the double hyphen to 'uncomment' the gFunc lines
	if (wskill.Name == '') then

		--gFunc.EquipSet(sets.putsetnamehere);

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

	elseif (wskill.Name == '') then

		--gFunc.EquipSet(sets.putsetnamehere);

	else
		-- This is a catch all/default set
		--gFunc.EquipSet(sets.putsetnamehere);
	end
	
end

return profile;