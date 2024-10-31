--require('common');
--require('common\pupui');
local puplib = gFunc.LoadFile('puplib.lua');
local profile = {};

local sets = {
    ['tp_lowacc'] = {
        Range = '',
        Head = 'Walahra turban',-- Haste+5%
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',-- ACC+2
        Ear2 = 'Bushinomimi',
        Body = 'Pup. Tobe +1',
        Hands = 'Enkidu\'s Mittens',-- Acc+5 STR/DEX+4 SB+2
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Enkidu\'s Subligar',-- STR/DEX+4 STP+5 SB+5
        Feet = 'Promptitude Solea',
    },
    ['tp_medacc'] = {
        Range = '',
        Head = 'Shinku Hatsuburi',-- STR+3 ACC+3 ATK+5
        Neck = 'Chivalrous Chain',
        Ear1 = 'Megasco Earring',-- ACC+2
        Ear2 = 'Brutal Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Enkidu\'s Mitten',-- Acc+5 Atk+5
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
        Body = 'Pln. Khazagand',
        Hands = 'Enkidu\'s Mitten',-- Acc+5 Atk+5
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Pantin Churidars',-- ACC+5 STR+2
        Feet = 'Promptitude Solea',
    },
    ['idle'] = {
        Range = 'Animator +1',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj +1',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Pup. Tobe +1',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars',
        Feet = 'Pup. Babouches',
    },
    ['idle_magesub'] = {
        Range = 'Animator +1',
        Ammo = 'Automat. Oil +2',
        Head = 'Displaced',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Vermillion Cloak',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars',
        Feet = 'Pup. Babouches',
    },
    ['idle_town'] = {
        Range = 'Animator +1',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj +1',
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Pup. Tobe +1',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars',
        Feet = 'Pup. Babouches',
    },
    ['ws_default_lowacc'] = {
        Head = 'Shinku Hatsuburi',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir ear pendant',
        Body = 'Pln. Khazagand',
        Hands = 'Enkidu\'s Mitten',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Pup. Babouches',
    },
    ['ws_default_medacc'] = {
        Head = 'Shinku Hatsuburi',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir ear pendant',
        Body = 'Pln. Khazagand',
        Hands = 'Enkidu\'s Mitten',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Pup. Babouches',
    },
    ['ws_default_highacc'] = {
        Head = 'Shinku Hatsuburi',
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir ear pendant',
        Body = 'Pln. Khazagand',
        Hands = 'Enkidu\'s Mitten',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',
    },
	['ws_shijin_lowacc'] = {
        Head = 'Maat\'s Cap',-- DEX+7
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',-- DEX+2
        Ear2 = 'Pixie Earring',-- DEX+3
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mitten',-- DEX+2
        Ring1 = 'Rajas Ring',-- DEX+5
        Ring2 = 'Zilant Ring',-- DEX+6
		Back = 'Pantin Cape',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Enkidu\'s Subligar',--DEX+4 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
    ['ws_shijin_medacc'] = {
        Head = 'Optical Hat',-- DEX+3
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Hollow Earring',-- DEX+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mitten',-- DEX+4
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
        Hands = 'Enkidu\'s Mitten',-- DEX+4
        Ring1 = 'Zilant Ring',-- DEX+6
        Ring2 = 'Rajas Ring',-- DEX+5
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
	['ws_pummel_lowacc'] = {
        Head = 'Maat\'s Cap',-- STR+7
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Bushinomimi',-- STR+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mitten',-- Acc+5 Atk+5
        Ring1 = 'Rajas Ring',-- STR+5
        Ring2 = 'Strigoi Ring',-- STR+6
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Enkidu\'s Subligar',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
    ['ws_pummel_medacc'] = {
        Head = 'Shinku Hatsuburi',-- STR+3 ACC+3 ATK+5
        Neck = 'Fotia Gorget',-- STR+3 ACC+5
        Ear1 = 'Bushinomimi',-- STR+2
        Ear2 = 'Aesir ear pendant',-- ATK+7
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mitten',-- Acc+5 Atk+5
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
        Body = 'Pln. Khazagand',--Acc+10 Crit Rate +
        Hands = 'Enkidu\'s Mitten',-- Acc+5 Atk+5
        Ring1 = 'Oneiros Annulet',-- ACC+8
        Ring2 = 'Strigoi Ring',-- STR+5
		Back = 'Aesir Mantle',
        Waist = 'Potent Belt',-- STR+3 ACC+8
        Legs = 'Pln. Seraweels',--STR+3 ACC+4
        Feet = 'Agrona\'s Leggings',-- STR+3
    },
    ['rest'] = {
        Range = '',
        Head = 'Pup. Taj',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Aesir ear pendant',
        Body = 'Pup. Tobe +1',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Setae Ring',
        Ring2 = 'Rajas Ring',
		Back = 'Aesir Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars',
        Feet = 'Pup. Babouches',
    },
	['repair_set'] = {
        Feet = 'Pup. Babouches',
		--Ammo = 'Automaton Oil +2',
    },
	['di_set'] = {
        Main = 'Maochinoli',
		--Feet = 'Pup. Babouches',
		--Ammo = 'Automaton Oil +2',
    },
    ['stylelock'] = {
        Main = 'Kenkonken',
        Head = 'Shinku Hatsuburi',
        Body = 'Pup. Tobe +1',
        Hands = 'Pup. Dastanas',
        Legs = 'Pup. Churidars',
        Feet = 'Pup. Babouches',
    },
    ['pet_only_melee'] = {
        Head = 'Spurrer Beret',
        Neck = 'Shepherd\'s Chain',
        Body = 'Pup. Tobe +1',
        Hands = 'Pup. Dastanas',
        Back = 'Pantin Cape',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars',
        Feet = 'Pup. Babouches',
    },
    ['pet_melee_addon'] = {
        Head = 'Spurrer Beret',
        Neck = 'Shepherd\'s Chain',
        --Body = 'Pup. Tobe +1',
        --Hands = 'Pup. Dastanas',
        Back = 'Pantin Cape',
        --Waist = 'Selemnus Belt',
        --Legs = 'Pup. Churidars',
    },
    ['pet_matk'] = {
        Head = 'Oneiros Headgear',
        Neck = 'Shepard\'s Chain',
        Body = 'Pup. Tobe +1',
        Hands = 'Pantin Dastanas',
        Back = 'Fidelity mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
    },
	['pet_macc'] = {
        Head = 'Oneiros Headgear',
        Neck = 'Chivalrous Chain',
        Body = 'Pup. Tobe +1',
        Hands = 'Pantin Dastanas',
        Back = 'Fidelity mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
    },
    ['pet_cure'] = {
        Head = 'Spurrer Beret',
        Body = 'Pup. Tobe +1',
        Hands = 'Pantin Dastanas',
        Waist = 'Selemnus Belt',
        Legs = 'Pup. Churidars',
        Feet = 'Aife\'s Pumps',
    },
    ['chr'] = {
        Head = 'Maat\'s Cap', --CHR+7
        Neck = 'Flower Necklace', --CHR+3
        Ear1 = 'Delta Earring', --CHR+2
        Ear2 = 'Roundel Earring',
        Body = { Name = 'Pup. Tobe +1', Augment = { [1] = '"Store TP"+3', [2] = '"Martial Arts"+2' } },
        Hands = 'Pup. Dastanas',
        Ring1 = 'Light Ring', --CHR+5
        Ring2 = 'Angel\'s Ring', --CHR+4
        Back = 'Jester\'s Cape +1', --CHR+10
        Waist = 'Corsette', --CHR+5
        Legs = 'Pup. Churidars', --CHR+3
        Feet = 'Dance Shoes +1', --CHR+5
    },
    ['str'] = {
        Head = 'Maat\'s Cap', -- STR+7
        Neck = 'Ire Torque', --STR+4
        Ear1 = 'Giant\'s Earring', --STR+1
        Ear2 = 'Bushinomimi', --STR+2
        Body = 'Pup. Tobe +1',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Rajas Ring', --STR+5
        Ring2 = 'Strigoi Ring',-- STR+6
        Back = 'Ryl. Army Mantle',
        Waist = 'Buccaneer\'s Belt',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Pup. Babouches',
    },
    ['whmsub'] = {
        Ear1 = 'Astral Earring',
        Ear2 = 'Loquac. Earring',
        Ring1 = 'Succor Ring',
        Ring2 = 'Serket Ring',
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
local pet_dark_spells = T{'Aspir', 'Drain', 'Absorb-INT', 'Dread Spikes',};
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
	automan = false,
	autorepair = false,
	repairpercent = 20,
	maneuver = {};
    usedrepair = false,
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
	local petaction = PetAction;
	
	if (PetAction ~= nil) and pet_ele_spells:contains(PetAction.Name) then
		gFunc.EquipSet(sets.pet_matk);
	elseif (PetAction ~= nil) and pet_debuff_spells:contains(PetAction.Name) then
		gFunc.EquipSet(sets.pet_macc);
	elseif (PetAction ~= nil) and pet_dark_spells:contains(PetAction.Name) then
		gFunc.EquipSet(sets.pet_macc);
	elseif (PetAction ~= nil) and pet_healing_spells:contains(PetAction.Name) then
		gFunc.EquipSet(sets.pet_cure);
	else
	end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local pet = gData.GetPet();


	local player = gData.GetPlayer()
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
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /autorepair /lac fwd autorepair');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /ps /pupset');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /psl /pupset load');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	gFunc.Message('Active Alias - /pup [/lac fwd]');
	gFunc.Message('Active Binds - Alt+F1 to cycle TP sets');
	gFunc.Message('Active Binds - Alt+F2 to cycle DI set');
	-- Binds End
	
    -- Sets the delay for the Pupsets addon to be slower than the safe  mode
    AshitaCore:GetChatManager():QueueCommand(1, '/pupset delay 1.2');
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 001');
	--gFunc.LockStyle(sets.stylelock);
	
end

profile.OnUnload = function()

	-- Bind clean up
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /pup');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /autorepair');
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
	elseif (args[1] == 'automan') then
		n = 1;
		if (#args > 2) then
			while n <= #args do
				settings.maneuver[n] = args[n];
				n = n+1;
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
            gFunc.Messages('Auto Weapon Skill is currently: ' .. chat.success(tostring(settings.autoWS.active)));
        elseif (args[2] == 'on') then
            settings.autoWS.active = true;
            gFunc.Messages('Auto Weapon Skill is currently: ' .. chat.success(tostring(settings.autoWS.active)));
        elseif (args[2] == 'off') then
            settings.autoWS.active = false;
            gFunc.Messages('Auto Weapon Skill is currently: ' .. chat.success(tostring(settings.autoWS.active)));
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
    local frame = puplib.GetFrameName();

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
        --Auto Weapon Skill
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
        if (towns:contains(place.Area)) then
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
	
	if (pet ~= nil) then -- If you have a pet out
        -- If the automan is true we'll do stuff here
        if (settings.automa == true) then
            
        end
        -- If autorepair is true we handle here
        if (settings.autorepair == true) and (pet.HPP <= settings.repairpercent) and settings.usedrepair == false then
            if string.match(gData.GetEquipment.Range.Name, 'Automat. Oil') then
                AshitaCore:GetChatManager():QueueCommand(1, '/ja "repair" <me>');
                settings.usedrepair = true;
            end
        end

        if settings.usedrepair == true and (pet.HPP > settings.repairpercent) then
            settings.usedrepair = false;
        end
    
    end

    if (player.SubJob == 'WHM') then
        gFunc.EquipSet(sets.whmsub);
    end

    if player.IsMoving then
        gFunc.Equip('Feet', 'Hermes\' Sandals')
    end

end

profile.HandleAbility = function()

	local action = gData.GetAction();

		if string.match(action.Name, ' Maneuver') then
			gFunc.Equip('Hands', 'Pup. Dastanas');
			gFunc.Equip('Neck', 'Baffoon\'s Collar');
			if (settings.diset == true) then
				gFunc.EquipSet(sets.di_set);
			end
		elseif (action.Name == 'Repair') then
            gFunc.Equip('Ammo', 'Automat. Oil +2');
			gFunc.EquipSet(sets.repair_set);
        elseif (action.Name == 'Maintenance') then
            gFunc.Equip('Ammo', 'Automaton Oil');
            gFunc.EquipSet(sets.repair_set);
		elseif string.match(action.Name, 'Waltz') then
			gFunc.EquipSet(sets.chr);
		end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();

    if (string.match(spell.Name, 'Cure')) then
        gFunc.Equip('Ear1', 'Roundel Earring');
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
            if (AM3 > 0 and TP >= 2000) then
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
			gFunc.EquipSet('ws_default_' .. tpvarianttable[settings.tpvariant]);
		end
		
end

return profile;