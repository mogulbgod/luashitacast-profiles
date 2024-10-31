local chat = require('chat');
local lachelperlib = T{};

--[[ ###########################################################
   This is a helper library for semi-advanced Luashitacast profiles.
It's meant to be used on any job or sub job and just adds features
to your own Luashitacast Lua Profiles.

	This work takes heavily from the great work by GetAwayCoxn which
can be found on his GitHub at:

https://github.com/GetAwayCoxn/Luashitacast-Profiles/tree/main



########################################################### ]]--

lachelperlib.sets = T{

	['Echad'] = {
		Ring2 = 'Echad Ring',
	},
	['WarpRing'] = {
		Ring2 = 'Warp Ring',
	},
};




lachelperlib.settings = {

	Default_Tele_Ring = 'Dim. Ring (Dem)', -- The Tele Ring you use the most.
	Warp_Ring = 'Warp Ring',
	Warp_Item = 'Instant Warp', -- Can add the Warp Cudgel here was well.
	Nexus_Cape = 'Nexus Cape',
	EXP_Ring = 'Echad Ring',
	Auto_Helix_Element = false, -- Cast Helix spell by weather element first if not then day element.
	Auto_Echo_Drops = true, -- Auto use Echo Drops when silenced.
	Auto_Holy_Water = true, -- Auto use Holy Water when Doomed or Cursed.
	warping = T{},

};

lachelperlib.Reporting_Settings = {

	Stop_All_Messages = false, -- Will stop all the reporting messages
	Use_Message_Reporting = true, -- Will give you messages about what is auto being done.

};
-- Contains all the town/city names. Useful to tell if you are in town or not.
lachelperlib.towns = T{'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship',};

lachelperlib.TeleRings = T{['dem'] = 'Teleport Ring: Dem', ['holla'] = 'Teleport Ring: Holla', ['mea'] = 'Teleport Ring: Mea', ['vahzl'] = 'Teleport Ring: Vahzl', ['yhoat'] = 'Teleport Ring: Yhoat', ['altep'] = 'Teleport Ring: Altep',};
-- List of Domain Invasion zones for the CatsEyeXI Server or Reives zones on retail
lachelperlib.DI_zones = T{'Ceizak Battlegrounds', 'Foret de Hennetiel', 'Morimar Basalt Fields', 'Yorcia Weald', 'Marjami Ravine', 'Kamihr Drifts', 'Ra\'Kaznar Turris'};

lachelperlib.Aliases = T{'cancel', 'echad', 'helix', 'nexus', 'nuke', 'storm', 'telering', 'warpitem', 'warpring', 'warp'};

-- List of jobs that use "spells", used to check for auto echo drops
lachelperlib.MagicJobs = T{'WHM', 'White Mage', 'BLM', 'Black Mage', 'RDM', 'Red Hage', 'BLU', 'Blue Mage', 'PLD', 'Paladin', 'DRK', 'Dark Knight', 'RUN', 'Rune Fencer', 'SCH', 'Scholar', 'GEO', 'Geomancer', 'NIN', 'Ninja', 'BRD', 'Bard', 'SMN', 'Summoner'};

lachelperlib.WeatherSpellType = T{
	-- [key] = [1]helix, [2]storm spell, [3]elemental nuke, [4]smn spirit
	-- 'none' is a place holder so the table doesn't fail to load past that entry due to being nil
	['Wind'] = { 'Anemohelix', 'Windstorm', 'Aero', 'Air Spirit' },
	['Ice'] = { 'Cryohelix', 'Hailstorm', 'Blizzard', 'Ice Spirit' },
	['Earth'] = { 'Geohelix', 'Sandstorm', 'Stone', 'Earth Spirit' },
	['Water'] = { 'Hydrohelix', 'Rainstorm', 'Water', 'Water Spirit' },
	['Fire'] = { 'Pyrohelix', 'Firestorm', 'Fire', 'Fire Spirit' },
	['Thunder'] = { 'Ionohelix', 'Thunderstorm', 'Thunder', 'Thunder Spirit' },
	['Light'] = { 'Luminohelix', 'Aurorastorm', 'none', 'Light Spirit' },
	['Dark'] = { 'Noctohelix', 'Voidstorm', 'none', 'Dark Spirit' },
};

-- Table of BLU breath spells
local BLUSpellTypeBreath = T{ 'Poison Breath', 'Magnetite Cloud', 'Hecatomb Wave', 'Radiant Breath', 'Flying Hip Press', 'Bad Breath', 'Frost Breath', 'Heat Breath' };

-- SMN BP damage type for Lv.75 cap servers
local BloodPactMagic = T{ 'Searing Light', 'Howling Moon', 'Inferno', 'Earthen Fury', 'Tidal Wave', 'Aerial Blast', 'Diamond Dust', 'Judgment Bolt', 'Ruinous Omen', 'Altana\'s Favor', 'Healing Ruby', 'Fire II', 'Stone II', 'Water II', 'Aero II', 'Blizzard II', 'Thunder II', 'Raise II', 'Thunderspark', 'Somnolence', 'Shining Ruby', 'Aerial Armor', 'Mewing Lullaby', 'Frost Armor', 'Nightmare', 'Reraise II', 'Rolling Thunder', 'Lunar Roar', 'Slowga', 'Whispering Wing', 'Ultimate Terror', 'Crimson Howling', 'Sleepga', 'Lightening Armor', 'Ecliptic Growl', 'Glittering Ruby', 'Earthen Ward', 'Spring Water', 'Hastega', 'Noctoshield', 'Ecliptic Howl', 'Meteorite', 'Eerie Eye', 'Dream Shroud', 'Fire IV', 'Stone IV', 'Water IV', 'Aero IV', 'Blizzard IV', 'Thunder IV', 'Healing Ruby II', 'Nether Blast', 'Meteor Strike', 'Heavenly Strike', 'Wind Blade', 'Geocrush', 'Thunderstorm', 'Grand Fall', 'Perfect Defense', 'Zantetsuken', 'Level ? Holy' };
local BloodPactPhysical = T{ 'Punch', 'Rock Throw', 'Barracuda Dive', 'Claw', 'Axe Kick', 'Shock Strike', 'Camisado', 'Regal Scratch', 'Poison Nails', 'Moonlit Charge', 'Crescent Fang', 'Rock Buster', 'Burning Strike', 'Tail Whip', 'Double Punch', 'Megalith Throw', 'Double Slap', 'Eclipse Bite', 'Flaming Crush', 'Mountain Buster', 'Spinning Dive', 'Predator Claws', 'Rush', 'Chaotic Strike' };

function lachelperlib.Wait(seconds)
	local waittime = os.clock() + seconds/10;
	repeat until os.clock() > waittime
end

function lachelperlib.Cancel(id) -- Function from HealsCodes' StatusTimers addon
    -- unconditional cancel but only works on IDs that can be canceled
    local status_hi = bit.rshift(id, 8);
    local status_lo = bit.band(id, 0xff);

    AshitaCore:GetPacketManager():AddOutgoingPacket(0xf1, { 0x00, 0x00, 0x00, 0x00, status_lo, status_hi, 0x00, 0x00 });
end

function lachelperlib.UseItem(item)
	AshitaCore:GetChatManager():QueueCommand(1, '/item "' .. item .. '" <me>');
end

function lachelperlib.AutoRemoveDebuffWithItem()
	
	local doom = gData.GetBuffCount(15);
	local curse = gData.GetBuffCount(9);
	local silence = gData.GetBuffCount(6);
	local mute = gData.GetBuffCount(29);
	local zone = gData.GetEnvironment();

	if (silence > 0) (mute > 0) and (lachelperlib.settings.Auto_Echo_Drops == true) and (zone.Area ~= 'Empyreal Paradox') then
		lachelperlib.UseItem('Echo Drops');
	elseif (doom > 0) or (curse > 0) and (lachelperlib.settings.Auto_Holy_Water == true) then
		lachelperlib.UseItem('Holy Water');
	end
end

function lachelperlib.SetAliasList() -- Function from GetAwayyCoxn
	for _, v in ipairs(lachelperlib.Aliases) do
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /' .. v .. ' /lac fwd ' .. v);
	end
end

function lachelperlib.ClearAliasList() -- Function from GetAwayyCoxn
	for _, v in ipairs(lachelperlib.Aliases) do
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias del /' .. v);
	end
end

function lachelperlib.CheckAbilityRecast(check) -- Function from GetAwayyCoxn
	local RecastTime = 0;

	for x = 0, 31 do
		local id = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimerId(check);
		local timer = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimer(check);

		if ((id ~= 0 or check == 0) and timer > 0) then
			local ability = AshitaCore:GetResourceManager():GetAbilityByTimerId(id);
			if ability == nil then return end
			if (ability.Name[1] == check) and (ability.Name[1] ~= 'Unknown') then
				RecastTime = timer;
			end
		end
	end

	return RecastTime;
end

function lachelperlib.SendToChat(What)
	if (What ~= '' or nil) then
		 --AshitaCore:GetChatManager():QueueCommand(1, What);
		 print(chat.header(lachelperlib):append(chat.message(What)));
	else
		return;
	end
end

function lachelperlib.SendToAshita(What)
	if (What ~= '' or nil) then 
		 AshitaCore:GetChatManager():QueueCommand(-1, What);
	else
		return;
	end
end

function lachelperlib.ReportMessages(What)
	if (lachelperlib.Reporting_Settings.Use_Message_Reporting == true) then
		lachelperlib.SendToChat(What);
	end
end
	
function lachelperlib.HandleCommands(args)

	local zone = gData.GetEnvironment();

	local x = 1;
	local largs = T{};
	for x,v in ipairs(args) do 
		largs[x] = string.lower(args[x])
	end
	
	if (largs[1] == 'helix') then
		if (lachelperlib.settings.Auto_Helix_Element == true) then
			lachelperlib.AutoCastHelix();
		else
			gFunc.Message('lachelperlib - Auto Helix Element is turned [ OFF ]');
		end
	elseif (largs[1] == 'cancel') and (largs[2] ~= "" or nil) then
		if (largs[2] == 'sneak') or (largs[2] == 's')then
			lachelperlib.Cancel(71);
		elseif (largs[2] == 'invis') or (largs[2] == 'invisable') or (largs[2] == 'i') then
			lachelperlib.Cancel(69);
		end	
	elseif (largs[1] == 'echad') then
		lachelperlib.UseEchad();
		
	elseif (args[1] == 'warp') then
		lachelperlib.UseWarpRing();
	end
	
end

function lachelperlib.HandleDefault()
	local zone = gData.GetEnvironment();

	-- Makes sure the Warp Ring stays in the slot until it's used.
	if (lachelperlib.settings.warping[1] == true) and (lachelperlib.settings.warping[2] == zone.Area) then
        
        gFunc.Equip('Ring2', 'Warp Ring');

    else
        lachelperlib.settings.warping[1] = false;
    end
end

function lachelperlib.AutoCastHelix()

	local wElement = gData.GetEnvironment().WeatherElement;
	local dElement = gData.GetEnvironment().DayElement;
	local player = gData.GetPlayer();
	--gFunc.Message(wElement .. ' | ' .. dElement);
	if (player.MainJob == 'SCH') and (player.MainJobLevel >= 18) or (player.SubJob == 'SCH') and (player.SubJobLevel >= 18) then
		if (wElement == 'None') or (wElement == 'Unknown') then
			-- if no weather element is up we look at the DayElement
			if (dElement ~= 'Unknown') then
				lachelperlib.SendToChat('/ma ' .. lachelperlib.WeatherSpellType[dElement][1] .. ' <t>');
			else
				lachelperlib.SendToChat('lachelperlib - There was an error casting Helix spell');
			end
		else
			lachelperlib.SendToChat('/ma ' .. lachelperlib.WeatherSpellType[wElement][1] .. ' <t>');
		end
	else
		return
	end
	
end

function lachelperlib.AutoElementalSiphon()

	local wElement = gData.GetEnvironment().WeatherElement;
	local dElement = gData.GetEnvironment().DayElement;
	local player = gData.GetPlayer();
	--gFunc.Message(wElement .. ' | ' .. dElement);
	if (player.MainJob == 'SMN') and (player.MainJobLevel >= 50) then
		if (wElement == 'None') or (wElement == 'Unknown') then
			-- if no weather element is up we look at the DayElement
			if (dElement ~= 'Unknown') then
				lachelperlib.SendToChat('/ma ' .. lachelperlib.WeatherSpellType[dElement][4] .. ' <t>');
			else
				lachelperlib.SendToChat('lachelperlib - There was an error casting Spirit spell');
			end
		else
			lachelperlib.SendToChat('/ma ' .. lachelperlib.WeatherSpellType[wElement][4] .. ' <t>');
		end
	else
		return
	end
	
end

function lachelperlib.UseWarpRing()
	local zone = gData.GetEnvironment();
	local function warpring()
		gFunc.Equip('Ring2', 'Warp Ring');
	end

	lachelperlib.settings.warping[1] = true;
	lachelperlib.settings.warping[2] = zone.Area;
	--gFunc.EquipSet(lachelperlib.sets.WarpRing);
	gFunc.Message('Ring equiped.');
	warpring:once(8);
	AshitaCore:GetChatManager():QueueCommand(1, '/item "Warp Ring" <me>');
end

function lachelperlib.UseWarpItem()

end

function lachelperlib.UseEchad()
	
end

function lachelperlib.Load()
	lachelperlib.SetAliasList();
end

function lachelperlib.Unload()
	lachelperlib.ClearAliasList();
end

return lachelperlib;