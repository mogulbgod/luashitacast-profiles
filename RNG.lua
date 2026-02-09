-- Updated 09.29.2024 (MM.DD.YYYY)
-- Small code clean up.
-- Added functioning auto berserk.
-- Added more comments.
local profile = {};
require('common');
-- tp_xxxx - are for normal melee attack sets; lowacc, medacc, highacc
-- ws_xxxx_xxxx - these are for specific WS sets ws_name_accset; lowacc, medacc, highacc
-- ws_slug_sidewinder - only one set for both slug shot and sidewinder due to specific acc build
-- range_xxxx - these are normal range attack sets; lowacc, medacc, highacc
local sets = {
	['idle_Priority'] = {
        Head = { 'Scout\'s Beret', 'Destrier Beret' },
        Neck = { 'Orochi Nodowa', 'Ranger\'s Necklace' },
        Ear1 = { 'Altdorf\'s Earring', 'Optical Earring' },
        Ear2 = { 'Wilhelm\'s Earring', 'Cassie Earring' },
        Body = { 'Kirin\'s Osode', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Blood Fng. Gnt.', '', 'Garrison Gloves', 'Ryl.Ftm. Gloves' },
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Warp Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = { 'Pln. Seraweels',  'Enkidu\'s Subligar', 'Phl. Trousers', 'Solid Cuisses', 'Galkan Braguette' },
        Feet = { 'Hachiryu Sune-Ate', 'Trotter Boots', 'Leaping Boots' }
    },
    ['idle_town'] = {
        Head = 'Scout\'s Beret',
        Neck = 'Crested Torque',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Denali Kecks',
        Feet = 'Hachiryu Sune-Ate',
    },
	['tp_lowacc_Priority'] = {
        Head = { 'Optical Hat', 'Voyager Sallet', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Hollow Earring', 'Optical Earring' },
        Ear2 = { 'Megasco Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Cassie Earring' },
        Body = { 'Pln. Khazagand', 'Brigandine +1', 'Eminence Doublet' },
        Hands = { 'Blood Fng. Gnt.', 'Garrison Gloves', 'Ryl.Ftm. Gloves' },
        Ring1 = { 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring' },
        Back = { 'Psilos Mantle', 'Ryl. Army Mantle', 'Nomad\'s Mantle +1', 'Traveler\'s Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt', 'Leather Belt' },
        Legs = { 'Byakko\'s Haidate', 'Enkidu\'s Subligar', 'Bastokan Cuisses', 'Phl. Trousers', 'Solid Cuisses', 'Galkan Braguette' },
        Feet = { 'Hachiryu Sune-Ate', 'Leaping Boots' }
    },
	['tp_medacc'] = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
	['tp_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Oneiros Annulet',
        Back = 'Psilos Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
	['ws_apex_lowacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Breeze Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Oily Trousers',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['ws_apex_medacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Breeze Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Oily Trousers',
        Feet = 'Hachiryu Sune-Ate',
    },
	['ws_apex_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Marid Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Oily Trousers',
        Feet = 'Hachiryu Sune-Ate',
    },
	['ws_reful_lowacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Potent Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['ws_reful_medacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Potent Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['ws_reful_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Marid Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Potent Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['ws_namas_lowacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['ws_namas_medacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['ws_namas_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['ws_coronach_lowacc'] = {
	};
	['ws_coronach_medacc'] = {
	};
	['ws_coronach_highacc'] = {
	};
	['ws_laststand_lowacc'] = {
	};
	['ws_laststand_medacc'] = {
	};
	['ws_laststand_highacc'] = {
	};
	['ws_slug_sidewinder'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Marid Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['range_ws_lowacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Ranger\'s Necklace',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['range_ws_medacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['range_ws_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Marid Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Scout\'s Braccae',
        Feet = 'Hachiryu Sune-Ate',
    },
	['range_lowacc_Priority'] = {
        Head = { 'Optical Hat', 'Emperor Hairpin' },
        Neck = 'Ranger\'s Necklace',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Blood Fng. Gnt.',
        Ring1 = { 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Merman\'s Ring', 'Jalzahn\'s Ring', 'Jaeger Ring', 'Shikaree Ring' },
        Back = { 'Psilos Mantle', 'Nomad\'s Mantle +1' },
        Waist = { 'Scout\'s Belt', 'Precise Belt' },
        Legs = { 'Byakko\'s Haidate', 'Bastokan Cuisses' },
        Feet = { 'Hachiryu Sune-Ate', 'Leaping Boots' }
    },
	['range_medacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Crested Torque',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Jalzahn\'s Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['range_highacc'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Crested Torque',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Blood Fng. Gnt.',
        Ring1 = 'Jalzahn\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Lynx Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
	['preshot'] = { -- Job Trait and 'triggered' gear
        Head = 'Scout\'s Beret',
        Neck = 'Crested Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Denali Kecks',
        Feet = 'Hachiryu Sune-Ate',
    },
	['barrage'] = {
        Head = 'Optical Hat',
        Neck = 'Crested Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Scout\'s Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['kite_set'] = {
        Main = 'Earth Staff',
        Feet = 'Trotter Boots',
    },
	['movement'] = {
        Feet = 'Trotter Boots',
    },
	['sleepset'] = {
        Neck = 'Opo-opo Necklace',
    },
	['low_health_set'] = {
        Head = 'Genbu\'s Kabuto',
        Body = 'Kirin\'s Osode',
        Neck = 'Orochi Nodowa',
		Ear1 = 'Tracker\'s Earring',
	},
	['normal_ammo'] = {
        Ammo = 'Kabura Arrow',
    },
	['bow_set'] = {
		Range = 'Yoichinoyumi',
        Ammo = 'Kabura Arrow',
    },
	['gun_set'] = {
		Range = 'Annihilator',
        Ammo = 'Silver Bullet',
    }, 
	['xbow_set'] = {
		Range = 'Othinus\' Bow',
        Ammo = 'Acid Bolt',
    },
    ['throw_set'] = {
		--Range = 'Othinus\' Bow',
        --Ammo = 'Zephyr',
    },
	['main_staff_set'] = {
        Main = 'Fire Staff',
		Sub = 'Staff Grip',
    },
	['main_axe_set'] = {
        Main = 'Kriegsbeil',
		Sub = 'Fransisca',
		--Sub = '',
    },
	['diset'] = {
		Main = 'Atoyac',
		Sub = 'Hatxiik',
		Range = 'Atetepeyong',
		Ammo = 'Holy Bolt',
	},
    ['mab'] = {
        Head = 'Denali Bonnet',
        Ear1 = 'Helenus\'s Earring',
        Ear2 = 'Cass. Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Ring1 = 'Karka Ring',
        Ring2 = 'Galdr Ring',
        Waist = 'Salire Belt',
        Legs = 'Denali Kecks',
    },
    ['precast'] = {
	},
    ['midcast'] = {
	},
};

local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };

local rangeWS = T{'Flaming Arrow','Piercing Arrow','Dulling Arrow','Sidewinder','Blast Arrow','Arching Arrow','Empyreal Arrow','Refulgent Arrow','Apex Arrow','Namas Arrow','Jishnu\'s Randiance','Hot Shot','Split Shot','Sniper Shot','Slug Shot','Blast Shot','Heavy Shot','Detonator','Numbing Shot','Last Stand','Coronach','Wildfire','Trueflight','Leaden Salute','Myrkr','Dagan','Moonlight','Starlight'};

local MagicDamageAmmo = T{'Holy Bolt'};

local settings = {
    -- Settings for normal ranged and melee attacks and sets for battle
	tpvariant = 1, -- For the melee TP set
	rangevariant = 1, -- For range shots
	diset = false; -- If you use any specific equipment in DI turn this on
    kite = false, -- toggle for using your kite set
	currentlevel = 0, -- Used for Levelsync gear determination
    
    -- Auto whatever settings
	autoberserk = false, -- Will auto use Berserk if it isn't up
	autohasso = false, -- Will auto use Hasso if it isn't up
	auto_equip_debuff = true, -- This is for Poison, Paralyze, Silence, Petrification
	auto_equip_low_health = true, -- set to false if you don't want it to auto equip
    low_health_percent = 20, -- This is the percent ay which the low health set gets equiped
	AutoSwapAmmo = false, -- turn on to auto swap ammo to ones listed in ammo tables
    
    -- Range distance and warning settings
    MaxRangedWSDistance = 18, -- The distance in yalms furthest to allow for WS, over this its canceled
	ranged_distance_warning = 19.5, -- if more than this Yalms away you'll be warned
	distance_audio_warnings = true,
	cancelWScheck = true,
    
    --
	audible_low_ammo_warning = false, -- Set to true to have a sound play
    audible_zero_ammo_alert = true, -- When you run out of ammo it alerts you
    warn_low_ammo = false, -- Warns you in chat
	low_ammo_amount = 10, -- Warn you when ammo count is this amount or lower
	
};

local tpvartable = {
    [1] = 'lowacc', -- Haste, lots of Haste and Store TP
    [2] = 'medacc', -- The middle ground, accuracy some attack
    [3] = 'highacc', -- primarily accuracy, as much as you like
    --[4] = 'lowacc' -- Mostly attack and str
};

local rangevartable = {
    [1] = 'lowacc', -- Mostly AGI, DEX, STR, R.ATK for damage over accuracy
    [2] = 'medacc', -- The middle ground, range accuracy, some range attack
    [3] = 'highacc', -- primarily range accuracy, as much as you like
};
-- These are the ranged weapons you use on RNG
-- List them under the proper weapon type.
local ranged_weapons_bows = T{'Ajjub Bow', 'Yoichinoyumi'};

local ranged_weapons_guns = T{'Opprimo', 'Shark Gun', 'Martial Gun'};

local ranged_weapons_xbow = T{'Othinus\' Bow', 'Atetepeyorg'};

local ranged_weapons_throwing = T{};

-- The arrows you use from most used to least.
local arrows = {
	'Kabura Arrow',
	'Marid Arrow',
	'Fire Arrow',
};
-- Same as arrows above.
local bullets = {
	'Steel Bullet',
	'Silver Bullet',
	'Silver Bullet',
};

-- Same as above.
local bolts = {
    'Holy Bolt',
	'Acid Bolt',
	'Bloody Bolt',
	'Bronze Bolt',
};

local throwing = {};

-- Table of special ammo used for WS+US
local SpecialAmmo = {
    ['Cmb.Cst. Arrow'] = 'Cmb.Cst. Arrow',
    ['Animikii Bullet'] = 'Animikii Bullet',
    ['T.K. Arrow'] = 'T.K. Arrow',
};

--Checks a timer and returns a time or 0 if no timer is active
function CheckAbilityRecast(check)
	local RecastTime = 0;

	for x = 0, 31 do
		local id = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimerId(x);
		local timer = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimer(x);

		if ((id ~= 0 or x == 0) and timer > 0) then
			local ability = AshitaCore:GetResourceManager():GetAbilityByTimerId(id);

			if ability ~= nil and ability.Name[1] ~= 'Unknown' and (ability.Name[1] == check) then
				RecastTime = timer;
			end
		end
	end
	return RecastTime;
end

-- Counts items like the ammo it helps to check for
local function GetItemCount(container, id)
    local count = 0;
    local inv = AshitaCore:GetMemoryManager():GetInventory();
    for i = 1,80 do
        local invItem = inv:GetContainerItem(container, i);
        if (invItem.Id == id) then
            count = count + invItem.Count;
        end
    end
    return count;
end

-- Table of inventory and 8 wardrobes so keep ammo there
local equipBags = T{ 0, 8, 10, 11, 12, 13, 14, 15, 16 };

-- This counts the items in all bags, used to count ammo
local function GetEquippableCount(id)
    local count = 0;
    for _,bag in ipairs(equipBags) do
        count = count + GetItemCount(bag, id);
    end
    return count;
end

-- This will go thru the ammo tables list to find ammo to equip
-- if it can't find ammo to equip (you ran out or they're in quivers)
-- it will remove the 'special arrow' used for WS with Unlimited Shot up
local function SelectAmmo(TheAmmoTable)
    for _,entry in ipairs(TheAmmoTable) do
        local resource = AshitaCore:GetResourceManager():GetItemByName(entry, 0);
        if (resource) and (GetEquippableCount(resource.Id) > 0) then
            return entry;
        end
    end
	gFunc.Message('PANIC! Check awesome ammo to see if it\'s been lost - [Func: SelectAmmo]');
    return 'remove';
end

local function GetItemId(TheItemName)
    local resource = AshitaCore:GetResourceManager():GetItemByName(TheItemName, 0);
    if (resource.Id > 0) then
        return resource.Id;
    end

    return;

end

local function RemoveAmmo() -- Not used yet
    local i = 1;
    local TheAmmo = gData.GetEquipment().Ammo;
    for _,i in ipairs(SpecialAmmo) do
        if (SpecialAmmo[i] == TheAmmo) then return end
    end
end

local function GetAmmoCount(TheAmmoName)
    local AmmoId = GetItemId(TheAmmoName);
    local TheCount = GetEquippableCount(AmmoId);

    if (TheCount > 0) then
        return TheCount;
    end
    return 0;
end

local function SwapAmmo() -- Add this fucntion at the end of Pre and Mid shots and WS
	
	-- Looks at what ranged weapon you have equipped and will swap into one of the ammo you have
	-- have listed in the ammo t ables (bullets, arrows, bolts, throwings)
	
	local what_weapon = gData.GetEquipment().Range;
	local vAmmoTable = nil

	if (settings.AutoSwapAmmo == false) then
		return;
	end
	
	if ranged_weapons_guns:contains(what_weapon.Name) then
		vAmmoTable = bullets;
	elseif ranged_weapons_bows:contains(what_weapon.Name) then
		vAmmoTable = arrows;
	elseif ranged_weapons_xbow:contains(what_weapon.Name) then
		vAmmoTable = bolts;
	elseif ranged_weapons_throwing:contains(what_weapon.Name) then
		--vAmmoTable = bolts;
    else
		if (settings.currentlevel >= 60) then 
			gFunc.Error('Listed ranged weapon not found, no auto ammo swap will happen. [Func: SwapAmmo] - ' .. 'Current: ' .. what_weapon.Name);
			return;
		end
    end
	
	gFunc.Equip('Ammo', SelectAmmo(vAmmoTable));
end
-- Checks your distance from the mob to see if you're too far for a WS
-- will return 'true' if you can WS or 'false' if you  can't.
local function Abandon_Ranged_WS_Check()
	local mob_distance = gData.GetTarget();

    if (mob_distance.Distance > settings.MaxRangedWSDistance) then
        return false;
    else
        return true;
    end

end

local function Play_Sound(TheFile)
	local path = string.format('%sconfig\\addons\\luashitacast\\resources\\sounds\\' .. TheFile, AshitaCore:GetInstallPath());
	ashita.misc.play_sound(path);
end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local player = gData.GetPlayer();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 8');
	
	if (player.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'NIN') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	elseif (player.SubJob == 'SAM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
	elseif (player.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end
	
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /rng /lac fwd');
  	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /bow /lac fwd bow');
  	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /gun /lac fwd gun');
  	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /xbow /lac fwd xbow'); 
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /test /lac fwd test'); -- used for testing
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd rangeset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd diset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd autoberserk');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd autohasso');
	
	gFunc.Message('Type "/rng help" for commands');
	-- If you want a set to lockon when this loads
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 011');
	
end

profile.OnUnload = function()
	-- Cleaning up the Aliases and Binds so they don't persist after unload
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /rng');
  	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /bow');
  	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /gun');
  	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /xbow');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /test'); -- Remove for testing
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5');

end

profile.HandleCommand = function(args)

	if (args[1] == 'tpset') then
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvartable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. string.upper(tpvartable[settings.tpvariant]));
	elseif (args[1] == 'rangeset') then
		settings.rangevariant = settings.rangevariant + 1;
		if (settings.rangevariant > #rangevartable) then
			settings.rangevariant = 1;
		end
		gFunc.Message('Range Set: ' .. string.upper(rangevartable[settings.rangevariant]));
	elseif (args[1] == 'diset') then
		if (settings.diset == true) then
			settings.diset = false;
		else
			settings.diset = true;
		end
		gFunc.Message('DI Set is now set to ' .. string.upper(tostring(settings.diset)));
	elseif (args[1] == 'autoberserk') then
		if (settings.autoberserk == true) then
			settings.autoberserk = false;
		else
			settings.autoberserk = true;
		end
		gFunc.Message('Auto Berserk (Work In Progress) is now set to ' .. string.upper(tostring(settings.autoberserk)));
	elseif (args[1] == 'autoberserk') then
		if (settings.autohasso == true) then
			settings.autohasso = false;
		else
			settings.autohasso = true;
		end
		gFunc.Message('Auto Hasso is now set to ' .. string.upper(tostring(settings.autohasso)));
	elseif (args[1] == 'kite') then
		if (settings.kite == true) then
			settings.kite = false;
		else
			settings.kite = true;
		end
		gFunc.Message('Kite Mode is now set to ' .. string.upper(tostring(settings.kite)));
	elseif (args[1] == 'bow') then
	    gFunc.EquipSet(sets.bow_set);
	    if (settings.diset == true) then
	      gFunc.Equip('Range', 'Ajjub');
	    end  
	elseif (args[1] == 'gun') then
	  gFunc.EquipSet(sets.gun_set);
	    if (settings.diset == true) then
	      --gFunc.Equip('Range', '');
	    end
	elseif (args[1] == 'xbow') then
	  gFunc.EquipSet(sets.xbow_set)
	    if (settings.diset == true) then
	      --gFunc.Equip('Range', '');
	    end
	elseif (args[1] == 'staff') then
        gFunc.EquipSet(sets.main_staff_set);
    elseif (args[1] == 'axe') then
        gFunc.EquipSet(sets.main_axe_set);
    elseif (args[1] == 'dagger') then
        -- No dagger set yet
    elseif (args[1] == 'commands') or (args[1] == 'help') then
		gFunc.Message('ALT+F1 - Cycles melee TP sets');
		gFunc.Message('ALT+F2 - Cycles Range Attack sets');
		gFunc.Message('ALT+F3 - Toggles On/Off the DI set');
		gFunc.Message('ALT+F4 - Toggles On/Off the Auto Bersek');
		gFunc.Message('ALT+F5 - Toggles On/Off the Auto Hasso');
		gFunc.Message('settings - Will show you the current settings');
	elseif (args[1] == 'settings') or (args[1] == 'setting') then
		gFunc.Message('TP Set: ' .. string.upper(tpvartable[settings.tpvariant]));
		gFunc.Message('Range Set: ' .. string.upper(rangevartable[settings.rangevariant]));
		gFunc.Message('DI Set is set to: ' .. string.upper(tostring(settings.diset)));
		gFunc.Message('Auto Berserk is set to: ' .. string.upper(tostring(settings.autoberserk)));
		gFunc.Message('Auto Hasso is set to: ' .. string.upper(tostring(settings.autohasso)));
	elseif (args[1] == 'test') then
		--local theplayer = GetPlayerEntity();
        --if (theplayer ~= nil) then
        --    gFunc.Message(theplayer.Heading);
        --  end    
	else
		gFunc.Message(args[1] .. ' is an UNKNOWN Command');
	end
	
end

profile.HandleDefault = function()

	local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local hasso = gData.GetBuffCount('Hasso');
	local berserk = gData.GetBuffCount('Berserk');
	local isSleep = gData.GetBuffCount('Sleep');
	local isPoisoned = gData.GetBuffCount('Poison');
	local isParalyzed = gData.GetBuffCount('Paralyze');
	local isPetrified = gData.GetBuffCount('Petrified');
    local zone = gData.GetEnvironment();
	local berserkRecast = CheckAbilityRecast('Berserk');
	
	-- *****************************************************
	-- ********Used for Levelsync gear determination********
	local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	
    if (myLevel ~= settings.currentlevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        settings.currentlevel = myLevel;
	end
	-- *************************End*************************
	-- *****************************************************
	
	if (player.Status == 'Engaged') then
		-- Hasso will only start when engaged
		if (settings.autohasso == true) and (hasso == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Hasso" <me>');
		end
		-- Berserk will only start when engaged
		if (settings.autoberserk == true) and (berserkRecast == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ja "Berserk" <me>');
		end
		-- Melee set
		gFunc.EquipSet('tp_' .. tpvartable[settings.tpvariant]);
		
		-- DI Set stays after your normal melee set is loaded so it overwrites
		-- some pieces of your normal melee set. I equip DI weapons
		if (settings.diset == true) then
			--gFunc.EquipSet(sets.diset);
		end
		
	elseif (player.Status == 'Resting') then
	
		gFunc.EquipSet(sets.rest);
	
	elseif (player.Status == 'Dead') then
	
		--gFunc.EquipSet(sets.setname);
	
	elseif (player.Status == 'Zoning') then
	
		--gFunc.EquipSet(sets.setname);
	
	elseif (player.Status == 'Idle') then
        if towns:contains(zone.Area) then
		    gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
        end
	
	end
	
	if (player.IsMoving == true) and (settings.kite == false) then -- put your fast movement gear to move faster
		gFunc.EquipSet(sets.movement);
	end
	
	if (settings.kite == true) then
		-- This set can be changed to a kiting set and it will equipment
		-- any pieces over your melee set
		gFunc.EquipSet(sets.movement);
	end
	
	if (player.HPP <= settings.low_health_percent and settings.auto_equip_low_health == true) then
		gFunc.EquipSet(sets.low_health_set);
	end
	
	if (isSleep > 0) then
		gFunc.EquipSet(sets.sleepset);
	end
	
	if (isPoisoned > 0) then
		--gFunc.EquipSet(sets.poisonset);
	end
	
	if (isParalyzed > 0) then
		--gFunc.EquipSet(sets.paralyzeset);
	end
	
	if (isPetrified > 0) then
		--gFunc.EquipSet(sets.petrifiedset);
	end
		
end

profile.HandleAbility = function()
	
	local ability = gData.GetPlayer();
		
	if (ability.Name == 'Eagle Eye Shot') then
		gFunc.EquipSet(sets.ees);
	elseif (ability.Name == 'Scavenge') then
		
	elseif (ability.Name == 'Shadowbind') then
	
	elseif (ability.Name == 'Camouflage') then
	
	elseif (ability.Name == 'Sharpshot') then
	
	elseif (ability.Name == 'Barrage') then
        gFunc.EquipSet(sets.barrage);
	elseif (ability.Name == 'Unlimited Shot') then
	
	--elseif (ability.Name == '') then
	
	elseif string.match(ability.Name, 'Waltz') then
	-- CHR equipment to boost Waltz heal
	end
	
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	local spell = gData.GetPlayer();
	
	if string.match(spell.Name, 'Utsusemi') then
	-- use SIR, Fast Cast, and Haste build
		--gFunc.EquipSet(sets.SetName);
	elseif string.match(spell.Name, 'Tonko') then
		--gFunc.EquipSet(sets.SetName);
	elseif string.match(spell.Name, 'Monomi') then
		--gFunc.EquipSet(sets.SetName);
	end

end

profile.HandleMidcast = function()
	local spell = gData.GetPlayer();
	
	if string.match(spell.Name, 'Utsusemi') then
		--gFunc.EquipSet(sets.SetName);
	elseif string.match(spell.Name, 'Tonko') then
		--gFunc.EquipSet(sets.SetName);
	elseif string.match(spell.Name, 'Monomi') then
		--gFunc.EquipSet(sets.SetName);
	end
	
end

profile.HandlePreshot = function()
	
	local action = gData.GetAction();
	local isBarrage = gData.GetBuffCount('Barrage');


	-- Low ammo check
    if (settings.warn_low_ammo == true) then
        local AmmoCount = GetAmmoCount(gData.GetEquipment().Ammo)
        if (AmmoCount < settings.low_ammo_amount) then
            gFunc.Message('Current ammo count[ ' .. tostring(AmmoCount) .. ' ] is below minimum[ ' .. tostring(settings.low_ammo_amount) .. ' ] allowed.');
            if (settings.audible_low_ammo_warning == true) then Play_Sound('low_ammo.wav') end
        elseif (AmmoCount == 0) then
            gFunc.Error('You are out of ammo.')
            if (settings.audible_zero_ammo_alert == true) then Play_Sound('out_of_ammo.wav') end
            gFunc.CancelAction();
        end
        
    end
    
    -- No conditionals for preshot, every ranged attack
	-- will have this set equip
	gFunc.EquipSet(sets.preshot);
	
	if (isBarrage > 0) then
		gFunc.EquipSet(sets.barrage);
	end
	
	SwapAmmo();

end

profile.HandleMidshot = function()
	
	local UnlimitedShot = gData.GetBuffCount('Unlimited Shot');
	local action = gData.GetAction();
	local isBarrage = gData.GetBuffCount('Barrage');
    local ammoName = gData.GetEquipment().Ammo;
		
	gFunc.EquipSet('range_' .. rangevartable[settings.rangevariant]); -- Normal range attacks
	
	if (isBarrage > 0) then
		gFunc.EquipSet(sets.barrage);
	end

	if (ammoName.Name ~= nil) then
		if MagicDamageAmmo:contains(ammoName.Name) then
			gFunc.EquipSet(sets.mab);
		end
		
		-- Count the ammo and report is setting is set
		
	else
		gFunc.Message('Ammo is at 0. [Func: MidShot]');
	end
	
	SwapAmmo();
	
end

profile.HandleWeaponskill = function()

	local action = gData.GetAction();
	local UnlimitedShot = gData.GetBuffCount('Unlimited Shot');
    local what_weapon = '';
    local vAmmoTable = nil;
    local useWS = Abandon_Ranged_WS_Check();

    -- This checks the distance you are from the mob to see if you're too far for a WS
    if (useWS == false) and (settings.cancelWScheck == true) then
        local mob_distance = gData.GetTarget().Distance;
        local md = string.find(mob_distance, '.');
        mob_distance = string.sub(mob_distance, 1, md + 1); --Removed everything past thetenths place after the decimal
        Play_Sound('out)of_range.wav');
        gFunc.Error('WS abandoned to save TP. Current Distance: ' .. mob_distance .. ' | Allowed: ' .. tostring(settings.MaxRangedWSDistance));
        gFunc.CancelAction()
       
    end
	
	if (action.Name == 'Apex Arrow') then -- Aeonic bow WS
		gFunc.EquipSet('ws_apex_' .. rangevartable[settings.rangevariant]);
	elseif (action.Name == 'Namas Arrow') then -- Relic bow WS
		gFunc.EquipSet('ws_namas_' .. rangevartable[settings.rangevariant]);
	elseif (action.Name == 'Refulgent Arrow') then
		gFunc.EquipSet('ws_reful_' .. rangevartable[settings.rangevariant]);
	elseif (action.Name == 'Coronach') then -- Relic gun WS
		gFunc.EquipSet('ws_coronach_' .. rangevartable[settings.rangevariant]);
	elseif (action.Name == 'Last Stand') then -- Aeonic gun WS
		gFunc.EquipSet('ws_laststand_' .. rangevartable[settings.rangevariant]);
    elseif (action.Name == 'Sidewinder') or (action.Name == 'Slug Shot') then
        gFunc.EquipSet(sets.ws_slug_sidewinder);
    else
		-- This handles ALL other WS not listed above
		-- Copy and paste from "elseif" to the end of the gFunc.EquipSet line
		-- to add other WSs including melee.
		gFunc.EquipSet('range_ws_' .. rangevartable[settings.rangevariant]);
	end

	-- Keep this at end of function but above the Unlimited Shot check below
	SwapAmmo();
	
	-- Looks to see if Unlimited Shot is active and if it is
	-- it will auto load the 'good' ammo.
	if UnlimitedShot > 0 then
		gFunc.EquipSet(sets.ws_special_ammo);
        gFunc.Message('Special Ammo| Unlimited Shot');
	end

end

return profile;