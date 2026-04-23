-- Update 4/18/2026: Removed auto maneuvers and auto repair as I've been working on an addon with this functionality

-- Add a check for resting and then pause


--require('common');
--require('common\pupui');
local puplib = gFunc.LoadFile('puplib.lua');
local profile = {};

local sets = {
    ['tp_lowacc_Priority'] = {
        Range = '',
        Head = { 'Uk\'uxkaj Cap', 'Optical Hat', 'Voyager Sallet', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Bushinomimi', 'Wilderness Earring', 'Cassie Earring' },
        Ear2 = { 'Brutal Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Optical Earring' },
        Body = { 'Pup. Tobe +1', 'Enkidu\'s Harness', 'Pln. Khazagand', 'Ebur Harness', 'Aega\'s Doublet', 'Eminence Doublet' },
        Hands = { 'Enkidu\'s Mittens', 'Combat Mittens +1', 'Garrison Gloves', 'Battle Gloves' },
        Ring1 = { 'Strigoi Ring', 'Flame Ring', 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Mars\'s Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring', 'Bastokan Ring' },
		Back = { 'Aesir Mantle', 'Ryl. Army Mantle', 'Fidelity Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Headlong Belt', 'Griot Belt' },
        Legs = { 'Enkidu\'s Subligar', 'Herder\'s Subligar', 'Brais +1', 'Galkan Braguette' },
        Feet = { 'Promptitude Solea', 'Mtt. Leggings +1', 'Fisherman\'s Boots' },
    },
    ['tp_medacc'] = {
        Range = '',
        Head = 'Shinku Hatsuburi',-- STR+3 ACC+3 ATK+5
        Neck = 'Chivalrous Chain',
        Ear1 = 'Luminous Earring',-- ACC+2
        Ear2 = 'Brutal Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Enkidu\'s Mittens',-- Acc+5 Atk+5
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',-- ACC+5 STR+2
        Feet = 'Promptitude Solea',
    },
	['tp_highacc'] = {
        Range = '',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Megasco Earring',-- ACC+2
        Ear2 = 'Bushinomimi',
        Body = 'Pantin Tobe +1',
        Hands = 'Enkidu\'s Mittens',-- Acc+5 Atk+5
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Pantin Churidars',-- ACC+5 STR+2
        Feet = 'Promptitude Solea',
    },
    ['idle_Priority'] = {
        Range = { 'Animator +1', 'Turbo Animator', 'Animator' },
        Ammo = { 'Automat. Oil +2', 'Automat. Oil +1', 'Automaton Oil' },
        Head = { 'Pantin Taj +1', 'Destrier Beret' },
        Neck = 'Orochi Nodowa',
        Ear1 = { 'Bushinomimi', 'Cassie Earring' },
        Ear2 = { 'Brutal Earring', 'Ethereal Earring', 'Wilder. Earring +1', 'Optical Earring' },
        Body = { 'Pantin Tobe +1', 'Aega\'s Doublet', 'Eminence Doublet' },
        Hands = { 'Pup. Dastanas +1', 'Combat Mittens +1', 'Garrison Gloves', 'Battle Gloves', 'Fsh. Gloves' },
        Ring1 = 'Succor Ring',
        Ring2 = 'Warp Ring',
        Back = 'Shadow Mantle',
        Waist = 'Beastly Girdle',
        Legs = { 'Pup. Churidars +1', 'Herder\'s Subligar', 'Brais +1', 'Galkan Braguette' },
        Feet = { 'Pup. Babouches +1', 'Mtt. Leggings +1', 'Fisherman\'s Boots' },
    },
    ['idle_magesub'] = {
        Head = 'Displaced',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Vermillion Cloak',
        Hands = 'Pup. Dastanas +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars +1',
        Feet = 'Pup. Babouches +1',
    },
    ['idle_town'] = {
        Head = 'Pantin Taj +1',
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Luminous Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pup. Dastanas +1',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars +1',
        Feet = 'Pup. Babouches +1',
    },
    ['ws_default_lowacc'] = {
        Head = 'Maat\'s Cap',-- STR+7
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Bushinomimi',-- STR+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mittens',-- Acc+5 Atk+5
        Ring1 = 'Rajas Ring',-- STR+5
        Ring2 = 'Strigoi Ring',-- STR+6
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Enkidu\'s Subligar',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
    ['ws_default_medacc'] = {
        Head = 'Shinku Hatsuburi',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir ear pendant',
        Body = 'Pln. Khazagand',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Pup. Babouches +1',
    },
    ['ws_default_highacc'] = {
        Head = 'Shinku Hatsuburi',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir ear pendant',
        Body = 'Pln. Khazagand',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',
    },
	['ws_shijin_lowacc'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Delta Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Zilant Ring',
        Back = 'Pantin Cape',
        Waist = 'Potent Belt',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Agrona\'s Leggings',
    },
    ['ws_shijin_medacc'] = {
        Head = 'Optical Hat',-- DEX+3
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Hollow Earring',-- DEX+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mittens',-- DEX+4
        Ring1 = 'Rajas Ring',-- DEX+5
        Ring2 = 'Zilant Ring',-- DEX+6
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
    ['ws_shijin_highacc'] = {
        Head = 'Optical Hat',-- DEX+3
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Hollow Earring',-- DEX+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mittens',-- DEX+4
        Ring1 = 'Zilant Ring',-- DEX+6
        Ring2 = 'Rajas Ring',-- DEX+5
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
	['ws_pummel_lowacc'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Brutal Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Pup. Dastanas +1',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Agrona\'s Leggings',
    },
    ['ws_pummel_medacc'] = {
        Head = 'Shinku Hatsuburi',-- STR+3 ACC+3 ATK+5
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Bushinomimi',-- STR+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Enkidu\'s Harness',
        Hands = 'Enkidu\'s Mittens',-- Acc+5 Atk+5
        Ring1 = 'Rajas Ring',-- STR+5
        Ring2 = 'Strigoi Ring',-- STR+6
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
    ['ws_pummel_highacc'] = {
        Head = 'Optical Hat', -- +10 ACC
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Bushinomimi',-- STR+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Pln. Khazagand',-- Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mittens',-- Acc+5 Atk+5
        Ring1 = 'Oneiros Annulet',-- ACC+8
        Ring2 = 'Strigoi Ring',-- STR+5
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
    ['rest_Priority'] = {
        Head = 'Puppetry Taj +1',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Aesir ear pendant',
        Body = 'Pantin Tobe +1',
        Hands = 'Pup. Dastanas +1',
        Ring1 = 'Succor Ring',
        Ring2 = 'Rajas Ring',
		Back = 'Aesir Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars +1',
        Feet = 'Pup. Babouches +1',
    },
	['repair_set'] = {
        Feet = 'Pup. Babouches +1',
		--Ammo = 'Automaton Oil +2',
    },
	['di_set'] = {
        Main = 'Maochinoli',
		--Feet = 'Pup. Babouches +1',
		--Ammo = 'Automaton Oil +2',
    },
    ['stylelock'] = {
        Main = 'Kenkonken',
        Head = 'Shinku Hatsuburi',
        Body = 'Pup. Tobe +1',
        Hands = 'Pup. Dastanas +1',
        Legs = 'Pup. Churidars +1',
        Feet = 'Pup. Babouches +1',
    },
    ['pet_only_melee_Priority'] = {
        Head = { 'Puppetry Taj +1', 'Entrancing Ribbon' },
        Neck = 'Shepherd\'s Chain',
		Ear1 = {  'Wilderness Earring' },
		Ear2 = 'Wilder. Earring +1',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Back = { 'Oneiros Cappa', 'Fidelity Mantle' },
        Waist = { 'Beastly Girdle', 'Selemnus Belt' },
        Legs = { 'Pup. Churidars +1', 'Herder\'s Subligar' },
        Feet = { 'Pup. Babouches +1', 'Mtt. Leggings' },
    },
	-- Addon set will go over a your base melee set
    ['pet_melee_addon_Priority'] = {
        Head = 'Puppetry Taj +1',
        Neck = 'Shepherd\'s Chain',
        --Body = 'Pantin Tobe +1',
        --Hands = 'Pup. Dastanas +1',
        Back = 'Pantin Cape',
        --Waist = 'Selemnus Belt',
        --Legs = 'Pup. Churidars +1',
    },
    ['pet_matk_Priority'] = {
        Head = 'Oneiros Headgear',
        Neck = 'Shepard\'s Chain',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Back = 'Fidelity mantle',
        Waist = { 'Beastly Girdle', 'Selemnus Belt' },
        Legs = 'Pantin Churidars',
        Feet = 'Ptn. Babouches +1',
    },
	['pet_macc_Priority'] = {
        Head = 'Oneiros Headgear',
        Neck = 'Chivalrous Chain',
        Body = 'Pup. Tobe +1',
        Hands = 'Pantin Dastanas',
        Back = 'Fidelity mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Ptn. Babouches +1',
    },
    ['pet_cure_Priority'] = {
        Head = 'Puppetry Taj +1',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars +1',
        Feet = 'Aife\'s Pumps',
    },
	-- CHR = Light Maneuvers
    ['chr'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Temp. Torque',
        Ear1 = 'Delta Earring',
        Ear2 = 'Roundel Earring',
        Body = 'Pup. Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Light Ring',
        Ring2 = 'Veela Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Corsette',
        Legs = 'Pup. Churidars +1',
        Feet = 'Dance Shoes +1',
    },
	-- STR = Fire Maneuvers
    ['str'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Ire Torque',
        Ear1 = 'Flame Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Enkidu\'s Harness',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Ryl. Army Mantle',
        Waist = 'Buccaneer\'s Belt',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Agrona\'s Leggings',
    },
	-- VIT = Earth Maneuvers
	['vit'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fortitude Torque',
        Ear1 = 'Cassie Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Garden Bangles',
        Ring1 = 'Portus Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Oneiros Cappa',
        Waist = 'Beastly Girdle',
        Legs = 'Pantin Churidars',
        Feet = 'Pup. Babouches +1',
    },
	-- AGI = Wind Maneuvers
	['agi'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Wilhelm\'s Earring',
        Ear2 = 'Helenus\'s Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Pup. Dastanas +1',
        Ring1 = 'Moepapa Ring',
        Ring2 = 'Blobnag Ring',
        Back = 'Aesir Mantle',
        Waist = 'Beastly Girdle',
        Legs = 'Acrobat\'s Breeches',
        Feet = 'Pup. Babouches +1',
    },
	-- DEX = Thunder Maneuvers
	['dex'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Halting Stole',
        Ear1 = 'Delta Earring',
        Ear2 = 'Pixie Earring',
        Body = 'Ebur Harness',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Zilant Ring',
        Back = 'Pantin Cape',
        Waist = 'Beastly Girdle',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Mtt. Leggings +1',
    },
	-- INT = Ice Maneuvers
	['int'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Brutal Earring',
        Body = 'Pup. Tobe +1',
        Hands = 'Dune Bracers',
        Ring1 = 'Aife\'s Annulet',
        Ring2 = 'Galdr Ring',
        Back = 'Gleeman\'s Cape',
        Waist = 'Desert Rope',
        Legs = 'Pup. Churidars +1',
        Feet = 'Rostrum Pumps',
    },
	-- MND = Water Maneuvers
	['mnd'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Aqua Earring',
        Ear2 = 'Aqua Earring',
        Body = 'Pup. Tobe +1',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Karka Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Pup. Churidars +1',
        Feet = 'Aife\'s Pumps',
    },
    ['whmsub'] = {
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
    },
	['cure'] = {
		Neck = 'Fylgja Torque +1',
        Ear1 = 'Roundel Earring',
        Ear2 = 'Loquac. Earring',
		Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
    },
	['maneuver'] = {
		Neck = 'Buffoon\'s Collar',
		Hands = 'Pup. Dastanas +1',
    },
	['repair_oils_Priority'] = {
		Ammo = { 'Automat. Oil +2', 'Automat. Oil +1', 'Automaton Oil' },
    },
	-- Low level 30 and below, you can just use just the Kupo Suit here, uncomment out the 2 commented lines and remove/comment out the Head
	['movement1'] = {
		Head = 'Destrier Beret',
		--Body = 'Kupo Suit',
		--Legs = 'Displaced',
    },
	-- Mid level 31-69
	['movement2'] = {
		Body = 'Kupo Suit',
		Legs = 'Displaced',
    },
	-- High level 70+
	['movement3'] = {
		Feet = 'Hermes\' Sandals',
    },
	-- Add pieces that specifically boost Waltz, this will combine with the chr set.
	['waltz'] = {
		Ear1 = 'Roundel Earring',
    },
	-- Accuracy helps for steps
	['step'] = {
		Ear1 = 'Choreia Earring',
    },
    ['ws_str_vit'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Flame Earring',
        Body = 'Enkidu\'s Harness',
        Hands = { Name = 'Pup. Dastanas +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Oneiros Cappa',
        Waist = 'Beastly Girdle',
        Legs = 'Pantin Churidars',
        Feet = 'Agrona\'s Leggings',
    },
	['charmed'] = {
		Ring1 = 'Jelly Ring',
		Ring2 = 'Succor Ring',
		Back = 'Shadow Mantle',
    },
    

};

local pet_ele_spells = T{
		'Stone', 'Stone II', 'Stone III', 'Stone IV', 'Stone V',
		'Water', 'Water II', 'Water III', 'Water IV', 'Water V',
		'Aero', 'Aero II', 'Aero III', 'Aero IV', 'Aero V',
		'Fire', 'Fire II', 'Fire III', 'Fire IV', 'Fire V',
		'Blizzard', 'Blizzard II', 'Blizzard III', 'Blizzard IV', 'Blizzard V',
		'Thunder', 'Thunder II', 'Thunder III', 'Thunder IV', 'Thunder V',
};
local pet_debuff_spells = T{'Slow', 'Paralyze', 'Silence', 'Blind', 'Bio', 'Bio II', 'Dia', 'Dia II', 'Poison', 'Poison II',};
local pet_dark_spells = T{'Aspir', 'Drain', 'Absorb-INT', 'Dread Spikes', 'Absorb-Attri'};
local pet_healing_spells = T{'Cure', 'Cure II', 'Cure III', 'Cure IV', 'Cure V', 'Cure VI',};

local towns = T{'Aht Urhgan Whitegate','Al Zahbi','Bastok Markets [S]','Bastok Markets','Bastok Mines','Bastok-Jeuno Airship','Celennia Memorial Library','Chateau d\'Oraguille','Eastern Adoulin','Heavens Tower','Kazham','Kazham-Jeuno Airship','Lower Jeuno','Metalworks','Mhaura','Mog Garden','Nashmau','Norg','Northern San d\'Oria','Port Bastok','Port Jeuno','Port San d\'Oria','Port Windurst','Rabao','Ru\'Lude Gardens','San d\'Oria-Jeuno Airship','Selbina','Southern San d\'Oria [S]','Southern San d\'Oria','Tavnazian Safehold','Upper Jeuno','Western Adoulin','Windurst Walls','Windurst Waters [S]','Windurst Waters','Windurst Woods','Windurst-Jeuno Airship',};

local mageSubs = T{'BLM', 'BLU', 'PLD', 'RUN', 'RDM', 'WHM', 'SCH', 'SMN'};

local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    --[4] = 'lowacc'
};

local manelements = {
	i = 'Ice',
	f = 'Fire',
	wi = 'Wind',
	wa = 'Water',
	t = 'Thunder',
	l = 'Light',
	d = 'Dark',
	e = 'Earth',
};

local settings = {
	tpvariant = 1,
	diset = false;
	currentlevel = 0, -- Used for Levelsync gear determination
	isCharmed = false,
	
	-- Manual change the below settings to your prefered behavior
	EngagedNoMoveSwap = false, -- If you're engaged, setting this to true will stop the swapping of movement speed set when moving.
	
    autoWS = {
        active = false,
        minTP = 1200,
        minHP = 35,
        useWS = 'Stringing Pummel',
    },
	
	
};

profile.Sets = sets;

profile.Packer = {
};

function CancelAftermath()
	--May not work after future updates in LSB
    local AM1 = gData.GetBuffCount(270);
    local AM2 = gData.GetBuffCount(271);
    local AM3 = gData.GetBuffCount(272);
    local TP = gData.GetPlayer().TP;

    if (AM3 > 0 and TP >= 2000) then
        --Cancels Lv.3 Aftermath for PUP
        AshitaCore:GetChatManager():QueueCommand(1, '/cancel 272');
    elseif (AM2 > 0 and TP >= 1375) then
        --Cancels Lv.2 Aftermath for PUP
        AshitaCore:GetChatManager():QueueCommand(1, '/cancel 271');
    elseif (AM1 > 0 and TP >= 1000) then
        --Cancels Lv.1 Aftermath for PUP
        AshitaCore:GetChatManager():QueueCommand(1, '/cancel 270');
    end
end

local function HandlePetAction(PetAction)
	
	if (PetAction == nil) then
		return;
	end
	
	if (pet_ele_spells:contains(PetAction.Name)) then
		gFunc.EquipSet(sets.pet_matk);
	elseif (pet_debuff_spells:contains(PetAction.Name)) then
		gFunc.EquipSet(sets.pet_macc);
	elseif (pet_dark_spells:contains(PetAction.Name)) then
		gFunc.EquipSet(sets.pet_macc);
	elseif (pet_healing_spells:contains(PetAction.Name)) then
		gFunc.EquipSet(sets.pet_cure);
	else
	end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local pet = gData.GetPet();
	local player = gData.GetPlayer()
	
	AshitaCore:GetChatManager():QueueCommand(1, '/addon load pupassist');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 4');
	
	if (player.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	elseif (player.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

	-- Binds Start
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /pup /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /ps /pupset');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /psl /pupset load');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /pss /pupset save');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	gFunc.Message('Active Alias - /pup [/lac fwd]');
	gFunc.Message('Active Binds - Alt+F1 to cycle TP sets');
	gFunc.Message('Active Binds - Alt+F2 to cycle DI set');
	-- Binds End
	
    -- Sets the delay for the Pupsets addon to be slower than the safe  mode
    AshitaCore:GetChatManager():QueueCommand(1, '/pupset delay 1.5');
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 001');
	--gFunc.LockStyle(sets.stylelock);
	
end

profile.OnUnload = function()

	AshitaCore:GetChatManager():QueueCommand(1, '/addon unload pupassist');
	
	-- Bind clean up
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /pup');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /pss');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /ps');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /psl');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
end

profile.HandleCommand = function(args)

	if (args[1] == 'tpset') then
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvarianttable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. tpvarianttable[settings.tpvariant]);
	elseif (args[1] == 'diset') then
		if (settings.diset == true) then
			settings.diset = false;
		else
			settings.diset = true;
		end
		gFunc.Message('DI Set is now set to ' .. tostring(settings.diset));
	elseif (args[1] == 'autorepair') then
		if (args[2] ~= nil) then
			if (args[2] == 'on') then
				settings.autorepair = true;
			else
				settings.autorepair = false;
			end
		end
	elseif (args[1] == 'autowstp') then --Cancel Aftermath
        if (args[2] ~= '' or args[2] ~= nil) then
            settings.autoWS.minTP = args[2];
        end
        gFunc.Message('AutoWS Minimum TP is set to: ' .. chat.success(tostring(settings.autoWS.minTP)));
    elseif (args[1] == 'autowshp') then
        if (args[2] ~= '' or args[2] ~= nil) then
            settings.autoWS.minHP = args[2];
        end
        gFunc.Message('AutoWS Minimum HP is set to: ' .. chat.success(tostring(settings.autoWS.minHP)));
    elseif (args[1] == 'autowsws') then
        if (args[2] ~= '' or args[2] ~= nil) then
            settings.autoWS.useWS = args[2];
        end
        gFunc.Message('AutoWS Weapon SKill is set to: ' .. chat.success(tostring(settings.autoWS.useWS)));
    elseif (args[1] == 'autows') then
        if (args[2] == '' or args[2] == nil) then
            gFunc.Message('Auto Weapon Skill is currently: ' .. chat.success(tostring(settings.autoWS.active)));
        elseif (args[2] == 'on') then
            settings.autoWS.active = true;
            gFunc.Message('Auto Weapon Skill is currently: ' .. chat.success(tostring(settings.autoWS.active)));
        elseif (args[2] == 'off') then
            settings.autoWS.active = false;
            gFunc.Message('Auto Weapon Skill is currently: ' .. chat.success(tostring(settings.autoWS.active)));
        end
    end
end

profile.HandleDefault = function()
	-- This section handles if the Auto is doing something
	local petAction = gData.GetPetAction();
	if (petAction ~= nil) then
        HandlePetAction(petAction);
		return;	
	end

	local player = gData.GetPlayer();
	local pet = gData.GetPet();
	local place = gData.GetEnvironment();
	local target = gData.GetTarget();
	local charmed = gData.GetBuffCount(14);
    local frame = puplib.GetFrameName();
	
	
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
		gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
		-- If you have a pet out
		if (pet ~= nil) then
			if (pet.Status == 'Engaged') then
                if target ~= nil then
                    if target.Distance >= 5 then -- You far but engaged and auto is engaged
                        gFunc.EquipSet(sets.pet_only_melee); -- A set with gear just for your Auto and whatever -DT gear for yourself or regen.
                    elseif target.Distance < 5 then -- You near and engaged and auto is engaged
                        gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]); -- Master gear set
				        gFunc.EquipSet(sets.pet_melee_addon); -- Auto gear addon item set
                    end
                end
			end
		end
        --Auto Player Weapon Skill
        if (settings.autoWS.active == true) then
            if (target ~= nil) then
                if (target.HPP <= tonumber(settings.autoWS.minHP) and player.TP > tonumber(settings.autoWS.minTP)) then
                    AshitaCore:GetChatManager():QueueCommand(1, '/ws "' .. settings.autoWS.useWS .. '" <t>');
                end
            end
        end

	elseif (player.Status == 'Resting') then
		gFunc.EquipSet(sets.rest);

	elseif (player.Status == 'Idle') then
        if (towns:contains(place.Area)) then -- If youre in a town and want to wear different armor, maybe an nation Aketon
            gFunc.EquipSet(sets.idle_town);
        else
		    gFunc.EquipSet(sets.idle);
            if mageSubs:contains(player.SubJob) then
                gFunc.EquipSet(sets.idle_magesub);
            end
            if (pet ~= nil) then -- If you have a pet
                if (pet.Status == 'Engaged') then -- if your pet is fighting? Yes.
                    gFunc.EquipSet(sets.pet_only_melee); -- A set with gear just for your Auto and whatever -DT gear for yourself or regen.
                else -- If pet not engaged
                    if (frame ~= nil) then
                        if (string.match(frame, 'Stormwaker') or string.match(frame, 'Harlequin')) then
                            gFunc.Equip('Head', 'Oneiros Headgear');
                        else
                            --Do nothing instead of throwing an error when zoning with a pet out
                        end
                    end
                end
            end
		end
	end
	
	if (settings.diset == true) then
		gFunc.EquipSet(sets.di_set);
	end

    if (player.SubJob == 'WHM') then
        gFunc.EquipSet(sets.whmsub);
    end

    if (player.IsMoving and settings.EngagedNoMoveSwap ~= true)  then
		if (myLevel <= 30) then
			gFunc.EquipSet(sets.movement1);
		elseif (myLevel > 30 and myLevel < 69) then
			gFunc.EquipSet(sets.movement2);
		else
			gFunc.EquipSet(sets.movement3);
		end
    end
	
	-- Checks on status effects and make gear changes
	if (charmed > 0) and (settings.isCharmed == false) then -- if Charmed remove all gear and swap to a -DT set
        AshitaCore:GetChatManager():QueueCommand(1, '/p ### I\'m CHARMED and getting naked! ###');
        settings.isCharmed = true;
		AshitaCore:GetChatManager():QueueCommand(1, '/lac naked');
    elseif (charmed <= 0) and (settings.isCharmed == true) then
        settings.isCharmed = false;
        AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable');
    end

end

profile.HandleAbility = function()

	local action = gData.GetAction();
	local aName = {gData.GetAction().Name,};

		if (aName[1]:contains(' Maneuver')) then
		
			if (aName[1]:contains('Fire')) then
				gFunc.EquipSet(sets.str);
			elseif (aName[1]:contains('Water')) then
				gFunc.EquipSet(sets.mnd);
			elseif (aName[1]:contains('Earth')) then
				gFunc.EquipSet(sets.vit);
			elseif (aName[1]:contains('Wind')) then
				gFunc.EquipSet(sets.agi);
			elseif (aName[1]:contains('Thunder')) then
				gFunc.EquipSet(sets.dex);
			elseif (aName[1]:contains('Ice')) then
				gFunc.EquipSet(sets.int);
			elseif (aName[1]:contains('Light')) then
				gFunc.EquipSet(sets.chr);
			elseif (aName[1]:contains('Dark')) then
				-- Dark has no associated stat
			end
			
			gFunc.EquipSet(sets.maneuver); -- This is for generic pieces like Baffoon Collar and AF gloves, these overwrite pieces in the above sets.
			
		elseif (aName[1]:contains('Repair')) then
            gFunc.EquipSet(sets.repair_oils);
			gFunc.EquipSet(sets.repair_set);
        elseif (aName[1]:contains('Maintenance')) then
            gFunc.EquipSet(sets.repair_set);
		elseif (aName[1]:contains('Waltz')) then -- Covers all Waltz abilities
			gFunc.EquipSet(sets.chr);
			gFunc.EquipSet(sets.waltz); -- Overwrites the chr set with pieces that specifically boost Waltz
		end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
	local sInfo = {spell.Name, spell.Element};

    if (sInfo[1]:contains('Cure')) then -- Covers all Waltz abilities
		gFunc.EquipSet(sets.mnd);
		gFunc.EquipSet(sets.cure); -- Overwrites the mnd set with pieces that specifically boost Cure
    end
	
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()

	local action = gData.GetAction();
    local AM1 = gData.GetBuffCount(270);
    local AM2 = gData.GetBuffCount(271);
    local AM3 = gData.GetBuffCount(272);
    local TP = gData.GetPlayer().TP;
    local buffId;
    local packet;
	
		if (action.Name == 'Stringing Pummel') then
            if (AM3 > 0 and TP >= 1500) then
                --Cancels Lv.3 Aftermath for PUP
                buffId = 272;
                packet = struct.pack('LHH', 0, buffId, 0);
                AshitaCore:GetPacketManager():AddOutgoingPacket(0xF1, packet:totable());
            elseif (AM2 > 0 and TP >= 1335) then
                --Cancels Lv.2 Aftermath for PUP
                buffId = 271;
                packet = struct.pack('LHH', 0, buffId, 0);
                AshitaCore:GetPacketManager():AddOutgoingPacket(0xF1, packet:totable());
            elseif (AM1 > 0 and TP >= 1000) then
                --Cancels Lv.1 Aftermath for PUP
                buffId = 270;
                packet = struct.pack('LHH', 0, buffId, 0);
                AshitaCore:GetPacketManager():AddOutgoingPacket(0xF1, packet:totable());
            end

			gFunc.EquipSet('ws_pummel_' .. tpvarianttable[settings.tpvariant]);
		elseif (action.Name == 'Shijin Spiral') then
			gFunc.EquipSet('ws_shijin_' .. tpvarianttable[settings.tpvariant]);
		else
			gFunc.EquipSet(sets.ws_str_vit);
		end
		
end

return profile;