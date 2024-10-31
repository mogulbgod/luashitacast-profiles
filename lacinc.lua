local chat = require('chat');
local lacinc = T{};


lacinc.tempsettings = {
    warp = T{}, -- zone name, time
    time = T{},
};



lacinc.towns = T{'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship',};

lacinc.TeleRings = {['dem'] = 'Teleport Ring: Dem', ['holla'] = 'Teleport Ring: Holla', ['mea'] = 'Teleport Ring: Mea', ['vahzl'] = 'Teleport Ring: Vahzl', ['yhoat'] = 'Teleport Ring: Yhoat', ['altep'] = 'Teleport Ring: Altep',};
-- List of Domain Invasion zones for the CatsEyeXI Server or Reives zones on retail
lacinc.DI_zones = T{'Ceizak Battlegrounds', 'Foret de Hennetiel', 'Morimar Basalt Fields', 'Yorcia Weald', 'Marjami Ravine', 'Kamihr Drifts', 'Ra\'Kaznar Turris'};

lacinc.Aliases = T{'cancel', 'nexus', 'telering', 'wr'};

-- List of jobs that use "spells", used to check for auto echo drops
lacinc.MagicJobs = T{'WHM', 'White Mage', 'BLM', 'Black Mage', 'RDM', 'Red Hage', 'BLU', 'Blue Mage', 'PLD', 'Paladin', 'DRK', 'Dark Knight', 'RUN', 'Rune Fencer', 'SCH', 'Scholar', 'GEO', 'Geomancer', 'NIN', 'Ninja', 'BRD', 'Bard', 'SMN', 'Summoner'};

function lacinc.Cancel(id) -- Function from HealsCodes' StatusTimers addon
    -- unconditional cancel but only works on IDs that can be canceled
    local status_hi = bit.rshift(id, 8);
    local status_lo = bit.band(id, 0xff);

    AshitaCore:GetPacketManager():AddOutgoingPacket(0xf1, { 0x00, 0x00, 0x00, 0x00, status_lo, status_hi, 0x00, 0x00 });
end

function lacinc.UseWarpRing()
	local zone = gData.GetEnvironment();
    --[[
    local function warpring()
		gFunc.Equip('Ring2', 'Warp Ring');
        AshitaCore:GetChatManager():QueueCommand(1, '/lac disable ring2');
	end

    gFunc.Equip('Ring2', 'Warp Ring');
    AshitaCore:GetChatManager():QueueCommand(1, '/lac disable ring2');
	lacinc.tempsettings.warp[1] = true;
	lacinc.tempsettings.warp[2] = zone.Area;
    lacinc.tempsettings.warp[3] = os.time;
	gFunc.Message(chat.success('Warp Ring ') .. 'equipped.');
	--warpring:once(8);
	--AshitaCore:GetChatManager():QueueCommand(1, '/item "Warp Ring"');
    repeat
        if (os.time >= lacinc.tempsettings.warp[3] + 10) then
            AshitaCore:GetChatManager():QueueCommand(1, '/item "Warp Ring"');
        end
    until os.time >= lacinc.tempsettings.warp[3] + 12;

    repeat
        if (zone.Name ~= lacinc.tempsettings.warp[2]) then
            AshitaCore:GetChatManager():QueueCommand(1, '/lac enable ring2"');
        end
    until zone.Name ~= lacinc.tempsettings.warp[2]
	]]
end

function lacinc.HandleCommands(args)

	local zone = gData.GetEnvironment();

	local x = 1;
	local largs = T{};
	for x,v in ipairs(args) do
		largs[x] = string.lower(args[x])
	end

	if (largs[1] == 'helix') then
		if (lacinc.tempsettings.Auto_Helix_Element == true) then
			lacinc.AutoCastHelix();
		else
			gFunc.Message('lacinc - Auto Helix Element is turned [ OFF ]');
		end
	elseif (largs[1] == 'cancel') and (largs[2] ~= "" or nil) then
		if (largs[2] == 'sneak') or (largs[2] == 's')then
			lacinc.Cancel(71);
		elseif (largs[2] == 'invis') or (largs[2] == 'invisable') or (largs[2] == 'i') then
			lacinc.Cancel(69);
		end
	elseif (largs[1] == 'echad') then
		lacinc.UseEchad();

	elseif (args[1] == 'warp' or 'wr') then
		lacinc.UseWarpRing();
	end

end

function lacinc.SetAliasList() -- Function from GetAwayyCoxn
	for _, v in ipairs(lacinc.Aliases) do
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /' .. v .. ' /lac fwd ' .. v);
	end
end

function lacinc.ClearAliasList() -- Function from GetAwayyCoxn
	for _, v in ipairs(lacinc.Aliases) do
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias del /' .. v);
	end
end

return lacinc;