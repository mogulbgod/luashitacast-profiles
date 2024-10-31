-- Summoner Library v.2024.05.07 (smnlib.lua)
-- Originally by Mogul
-- License: Gnu Public License 3

local chat = require('chat');
local smnlib = T{};


-- Tables of information section

-- A table of cities to current 99 era
-- Example: if (smnlib.Towns:contains(ZoneName)) then <-- if you want it to be true, use 'if not' for false
-- Will return true if it finds the name there or false if not
smnlib.Towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };

-- a table of magical Blood Pacts
-- Example: if (smnlib.BloodPactMagic:contains(NameOfBP)) then <-- if you want it to be true, use 'if not' for false
-- Will return true if it finds the name there or false if not
smnlib.BloodPactMagic = T{ 'Searing Light', 'Howling Moon', 'Inferno', 'Earthen Fury', 'Tidal Wave', 'Aerial Blast', 'Diamond Dust', 'Judgment Bolt', 'Ruinous Omen', 'Altana\'s Favor', 'Healing Ruby', 'Fire II', 'Stone II', 'Water II', 'Aero II', 'Blizzard II', 'Thunder II', 'Raise II', 'Thunderspark', 'Somnolence', 'Shining Ruby', 'Aerial Armor', 'Mewing Lullaby', 'Frost Armor', 'Nightmare', 'Reraise II', 'Rolling Thunder', 'Lunar Roar', 'Slowga', 'Whispering Wing', 'Ultimate Terror', 'Crimson Howling', 'Sleepga', 'Lightening Armor', 'Ecliptic Growl', 'Glittering Ruby', 'Earthen Ward', 'Spring Water', 'Hastega', 'Noctoshield', 'Ecliptic Howl', 'Meteorite', 'Eerie Eye', 'Dream Shroud', 'Fire IV', 'Stone IV', 'Water IV', 'Aero IV', 'Blizzard IV', 'Thunder IV', 'Healing Ruby II', 'Nether Blast', 'Meteor Strike', 'Heavenly Strike', 'Wind Blade', 'Geocrush', 'Thunderstorm', 'Grand Fall', 'Perfect Defense', 'Zantetsuken', 'Level ? Holy', 'Holy Mist', 'Lunar Bay', 'Night Terror', 'Earthen Armor', 'Tidal Roar', 'Fleet Wind', 'Inferno Howl', 'Diamond Storm', 'Shock Squall', 'Soothing Ruby', 'Heavenward Howl', 'Pavor Nocturnus', 'Impact' };

-- a table of physical Blood Pacts
-- Example: if (smnlib.BloodPactPhysical:contains(NameOfBP)) then <-- if you want it to be true, use 'if not' for false
-- Will return true if it finds the name there or false if not
smnlib.BloodPactPhysical = T{ 'Punch', 'Rock Throw', 'Barracuda Dive', 'Claw', 'Axe Kick', 'Shock Strike', 'Camisado', 'Regal Scratch', 'Poison Nails', 'Moonlit Charge', 'Crescent Fang', 'Rock Buster', 'Burning Strike', 'Tail Whip', 'Double Punch', 'Megalith Throw', 'Double Slap', 'Eclipse Bite', 'Flaming Crush', 'Mountain Buster', 'Spinning Dive', 'Predator Claws', 'Rush', 'Chaotic Strike', 'Blindside', 'Regal Gash' };

-- This have both properties of being physical and magical attacks
smnlib.BloodPactHybrid = T{ 'Flaming Crush', 'Burning Strike' };

smnlib.AvatarNames = T{ 'Alexander', 'Atomos', 'Cait Sith', 'Carbuncle', 'Diabolos', 'Fenrir', 'Garuda', 'Ifrit', 'Leviathan', 'Ramuh', 'Shiva', 'Siren', 'Titan' };

-- A table of Avatar elements with the 'key' being the Avatar
smnlib.ElementByAvatar = T{
    ['Carbuncle']   = 'Light',
    ['Cait Sith']   = 'Light',
    ['Alexander']   = 'Light',
    ['Diabolos']    = 'Dark',
    ['Fenrir']      = 'Dark',
    ['Atomos']      = 'Dark',
    ['Odin']        = 'Dark',
    ['Titan']       = 'Earth',
    ['Shiva']       = 'Ice',
    ['Garuda']      = 'Wind',
    ['Siren']       = 'Wind',
    ['Ramuh']       = 'Thunder',
    ['Ifrit']       = 'Fire',

};

-- Keyed by element, use AvatarsByElement.TheElement[index]
-- so smnlib.AvatarsByElement.Light[2] would return 'Cait Sith'
-- #smnlib.AvatarsByElement.Element returns the amount of avatars under that element
smnlib.AvatarsByElement = T{
    ['Light']   = { 'Carbuncle', 'Cait Sith', 'Alexander' },
    ['Dark']    = { 'Fenrir', 'Diabolos', 'Atomos', 'Odin' },
    ['Earth']   = { 'Titan' },
    ['Water']   = { 'Leviathan' },
    ['Wind']    = { 'Garuda' },
    ['Fire']    = { 'Ifrit' },
    ['Ice']     = { 'Shiva' },
    ['Thunder'] = { 'Ramuh' },
};


smnlib.SpiritsByElement = T{
    ['Light']   = 'Light Spirit',
    ['Dark']    = 'Dark Spirit',
    ['Earth']   = 'Earth Spirit',
    ['Water']   = 'Water Spirit',
    ['Wind']    = 'Air Spirit',
    ['Fire']    = 'Fire Spirit',
    ['Ice']     = 'Ice Spirit',
    ['Thunder'] = 'Thunder Spirit',
};



function smnlib.SendToChat(What)
	if (What ~= '' or nil) then
		 print(chat.header(smnlib):append(chat.message(What)));
	else
		return;
	end
end

function smnlib.SendToAshita(What)
	if (What ~= '' or nil) then
		 AshitaCore:GetChatManager():QueueCommand(-1, What);
	else
		return;
	end
end

