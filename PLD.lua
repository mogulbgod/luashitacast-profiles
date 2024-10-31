-- Custom made for Astinos
-- Version 0.2
local profile = {};
local sets = {
    ['tp_lowacc'] = {
        Head = 'Askar Zucchetto',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = '"Zanshin"+3' } },
        Hands = 'Homam Manopolas',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Askar Dirs',
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
	['tp_medacc'] = {
		Head = 'Askar Zucchetto',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = '"Zanshin"+3' } },
        Hands = 'Homam Manopolas',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Askar Dirs',
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
	['tp_highacc'] = {
		Head = 'Askar Zucchetto',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Shadow Brstplate', Augment = { [1] = '"Triple Atk."+2', [2] = '"Zanshin"+3' } },
        Hands = 'Homam Manopolas',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Askar Dirs',
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
	['hybrid'] = {
        Head = 'Oneiros Barbut',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Koenig Cuirass',
        Hands = 'Valor Gauntlets',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Koenig Diechlings',
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
	['pdt'] = {
        Head = 'Oneiros Barbut',
        Neck = 'Fortitude Torque',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Ethereal Earring',
        Body = { Name = 'Koenig Cuirass', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -3%', [3] = 'Enmity+4' } },
        Hands = 'Melaco Mittens',
        Ring1 = 'Succor Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = { Name = 'Koenig Diechlings', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'CHR+3', [3] = 'Healing magic skill +4' } },
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
	['mdt'] = {
        Head = 'Oneiros Barbut',
        Neck = 'Fortitude Torque',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = { Name = 'Koenig Cuirass', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -3%', [3] = 'Enmity+4' } },
        Hands = 'Homam Manopolas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Colossus\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = { Name = 'Koenig Diechlings', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'CHR+3', [3] = 'Healing magic skill +4' } },
        Feet = 'Askar Gambieras',
    },
	['bdt'] = {
        Main = 'Brass Jadagna',
        Sub = 'Koenig Shield',
        Ammo = 'Hedgehog Bomb',
        Head = 'Oneiros Barbut',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Hands = 'Homam Manopolas',
        Ring1 = 'Dragon Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = { Name = 'Koenig Diechlings', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'CHR+3', [3] = 'Healing magic skill +4' } },
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
    ['idle'] = {
        Head = 'Oneiros Barbut',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Shadow Brstplate',
        Hands = 'Valor Gauntlets',
        Ring1 = 'Succor Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Koenig Diechlings',
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
	['idle_town'] = {
        Head = 'Oneiros Barbut',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Koenig Cuirass',
        Hands = 'Valor Gauntlets',
        Ring1 = 'Succor Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Shadow Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Koenig Diechlings',
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
    ['cure'] = {
        Head = 'Valor Coronet',
        Neck = 'Colossus\'s Torque',
        Ear1 = 'Magnetic Earring',
        Body = { Name = 'Crm. Scale Mail', Augment = { [1] = 'STR+5', [2] = 'AGI+3', [3] = 'Haste+2' } },
        Ring1 = 'Karka Ring',
        Waist = 'Al Zahbi Sash',
        Feet = { Name = 'Koenig Schuhs', Augment = { [1] = 'Haste+2', [2] = '"Regen"+2' } },
    },
    ['movement'] = {
		Head = 'Valor Coronet',
        Legs = 'Blood Cuisses',
    },
	['enmity'] = {
        Head = 'Hydra Salade',
        Body = 'Valor Surcoat',
        Hands = 'Valor Gauntlets',
        Ring2 = 'Corneus Ring',
        Back = 'Valor Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Valor Breeches',
        Feet = 'Askar Gambieras',
    },
	['precast'] = {
		Head = 'Walahra Turban',
        Ear2 = 'Loquac. Earring',
		Hands = 'Dusk Gloves',
        Ring1 = 'Succor Ring',
        Ring2 = 'Karka Ring',
        Back = 'Shadow Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = { Name = 'Blood Cuisses', Augment = { [1] = '"Fast Cast"+3', [2] = '"Mag.Def.Bns."+3' } },
		Feet = 'Homam Gambieras',
    },
	['midcast'] = {
        Head = 'Walahra Turban',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Loquac. Earring',
        Hands = 'Dusk Gloves',
        Ring1 = 'Succor Ring',
        Ring2 = 'Karka Ring',
        Back = 'Shadow Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Valor Breeches',
        Feet = 'Homam Gambieras',
    },
	['proshell'] = {
		Ear1 = 'Brachyura Earring',
		Neck = 'Enhancing Torque',
    },
    ['enhancing'] = {
		Neck = 'Enhancing Torque',
    },
	['scat'] = {
    },
	['atonement'] = {
    },
	['invincible'] = {
    },

};

local towns = T{'Aht Urhgan Whitegate','Al Zahbi','Bastok Markets [S]','Bastok Markets','Bastok Mines','Bastok-Jeuno Airship','Celennia Memorial Library','Chateau d\'Oraguille','Eastern Adoulin','Heavens Tower','Kazham','Kazham-Jeuno Airship','Lower Jeuno','Metalworks','Mhaura','Mog Garden','Nashmau','Norg','Northern San d\'Oria','Port Bastok','Port Jeuno','Port San d\'Oria','Port Windurst','Rabao','Ru\'Lude Gardens','San d\'Oria-Jeuno Airship','Selbina','Southern San d\'Oria [S]','Southern San d\'Oria','Tavnazian Safehold','Upper Jeuno','Western Adoulin','Windurst Walls','Windurst Waters [S]','Windurst Waters','Windurst Woods','Windurst-Jeuno Airship',};

local settings = {
	tpvar = 1,
	setvar = 1,
	idle_tank_set = false,
	tank_mode = true,
};

-- Use these names when creating tp sets
-- like tp_default when you add a set via the /lac addset command
-- i.e /lac addset tp_default
-- This will allow you to switch between different tp gear sets
-- To add more or different tp sets like MDT or PDT follow what it looks like
-- but change the number going up in order and add simple terms like mdt or pdt
local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc'
};

-- This is currently unused
local setvarianttable = T{
    [1] = 'hybrid',
    [2] = 'mdt',
    [3] = 'pdt',
    [4] = 'bdt'
};

local tempSetTable = T{};

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local player = gData.GetPlayer()
	
	-- Binds Start
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /pld /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd tankset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd idletank');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd tankmode');
	-- Binds End

	local player = gData.GetPlayer()
	
	-- Below code will change your macro book to the specified macro book when you load this job
	-- Change the macro book # to your main jobs macro set
	-- Change the macro set # to the palatte for the sub job
	if (player.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 16');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 16');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'RDM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 16');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (player.SubJob == 'NIN') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 16');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 16');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

	--Add all the tank sets to a tempTable
	for i=1, #setvarianttable do
		table.insert(tempSetTable, setvarianttable[i]);
	end

end

profile.OnUnload = function()

	-- Bind clean up
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /pld');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
	
end

profile.HandleCommand = function(args)
	local tempString = 'Set names are: ';
	-- This is to go through the different tp sets we have defined.
	-- Everything is CASE SENSITIVE
	if (args[1] == 'tpset') then
		settings.tpvar = settings.tpvar + 1;
		if (settings.tpvar > #tpvarianttable) then
			settings.tpvar = 1;
		end
		-- This tells you what set you are in in chat
		gFunc.Message('TP Set: ' .. tpvarianttable[settings.tpvar]);
	elseif (args[1] == 'tankset') then
		if (args[2] == nil) then
			settings.setvar = settings.setvar + 1;
			if (settings.setvar > #setvarianttable) then
				settings.setvar = 1;
			end
		elseif tempSetTable:contains(args[2]) then

			for i=1, #tempSetTable do --steps thru the table to match the arg to a set name

				if (args[2] == setvarianttable[i]) then
					settings.setvar = i;
					--gFunc.Message('Tank Set: ' .. setvarianttable[settings.setvar]);
					break;
				end
			end

		elseif not tempSetTable:contains(args[2]) then --If the arg doesn't exist

			for i=1, #tempSetTable do tempString = tempString .. tempSetTable[i] .. ', '; end
			gFunc.Message(string.upper(args[2]) .. ' is not a set name. The following are the set names: ' .. tempString);
			return;
		end
		-- This tells you what set you are in in chat
		gFunc.Message('Tank Set: ' .. setvarianttable[settings.setvar]);
	elseif (args[1] == 'idletank') then
		if (settings.idle_tank_set == true) then
			settings.idle_tank_set = false;
			gFunc.Message('Idle in Tank set to: FALSE');
		else
			settings.idle_tank_set = true;
			gFunc.Message('Idle in Tank set to: TRUE');
		end
	elseif (args[1] == 'tankmode') then
		if (settings.tank_mode == true) then
			settings.tank_mode = false;
			gFunc.Message('Engage Set Mode: TP');
		else
			settings.tank_mode = true;
			gFunc.Message('Engage Set Mode: TANK');
		end
	end

end

profile.HandleDefault = function()

	local player = gData.GetPlayer(); -- This gets the players info and holds it all in 'player'
	local zone = gData.GetEnvironment();
	
	-- Below is pretty self-explanatory
	-- Everything is CASE SENSITIVE
	if (player.Status == 'Engaged') then
		if (settings.tank_mode == true) then
			gFunc.EquipSet(setvarianttable[settings.setvar]);
		else
			gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvar]);
		end
	elseif (player.Status == 'Resting') then
		gFunc.EquipSet(sets.rest);
	elseif (player.Status == 'Zoning') then
	
	elseif (player.Status == 'Dead') then
	
	else -- This is for the idle set used as a catch all
		if towns:contains(zone.Area) then
			gFunc.EquipSet(sets.idle_town);
		elseif not towns:contains(zone.Area) and (settings.idle_tank_set == true) then
			gFunc.EquipSet(setvarianttable[settings.setvar]);
		else
			gFunc.EquipSet(sets.idle);
		end
	end

	if (player.IsMoving) then
		gFunc.EquipSet(sets.movement);
	end
	
end

profile.HandleAbility = function()

	local player = gData.GetPlayer();
	local ability = gData.GetAction();

	gFunc.EquipSet(sets.enmity);
	
	-- Remove or change any ability below or copy/paste to add more
	-- Everything is CASE SENSITIVE
	if (ability.Name == 'Provoke') then
		gFunc.EquipSet(sets.enmity);
	elseif (ability.Name == 'Shield Bash') then
		gFunc.Equip('Hands', 'Valor Gauntlets');
	elseif (ability.Name == 'Sentinel') then
		gFunc.Equip('Feet', 'Valor Leggings');
	elseif (ability.Name == 'Cover') then
		gFunc.Equip('Body', 'Valor Surcoat');
	elseif (ability.Name == 'Rampart') then
		gFunc.Equip('Head', 'Valor Coronet');
	elseif (ability.Name == 'Majesty') then

	elseif (ability.Name == 'Invincible') then

	elseif string.match(ability.Name, 'Waltz') then

	else
		-- This is a catch all/default set for anything not handled above
		gFunc.EquipSet(sets.putsetnamehere);
	end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

	local player = gData.GetPlayer();
	local spell = gData.GetAction();

	gFunc.EquipSet(sets.precast);

end

profile.HandleMidcast = function()

	local player = gData.GetPlayer();
	local spell = gData.GetAction();
	gFunc.EquipSet(sets.midcast);
	-- If a spell has lots of the same type but different tiers i.e Cure II, Cure III
	-- and so on we use string.match and the main word i.e 'Cure' to match all the spells
	-- with cure in the name. If it is a single spell like Stoneskin then we don't Use
	-- string.match just spell.Name == 'Spell Name'
	-- Everything is CASE SENSITIVE
	
	if string.match(spell.Name, 'Cure') then
		gFunc.EquipSet(sets.enmity);
		gFunc.EquipSet(sets.cure);
	elseif string.match(spell.Name,'Protect') then
		gFunc.EquipSet(sets.proshell);
	elseif string.match(spell.Name, 'Shell') then
		gFunc.EquipSet(sets.proshell);
	elseif (spell.Name == 'Flash') then
		gFunc.EquipSet(sets.enmity);
	elseif (spell.Name == 'Reprisal') then
		gFunc.EquipSet(sets.putsetnamehere);
	elseif string.match(spell.Name, 'Utsusemi') then
		-- In case you go /NIN, use Haste gear set. Covers both Utsusemi spells
		gFunc.EquipSet(sets.putsetnamehere);
	elseif (spell.Name == '') then
		gFunc.EquipSet(sets.putsetnamehere);
	else
		-- This is a catch all/default set
		gFunc.EquipSet(sets.putsetnamehere);
	end
	
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()

	local player = gData.GetPlayer(); -- Info about the player if needed
	local action = gData.GetAction(); -- Determines the action you're taking
	
	-- Everything is CASE SENSITIVE
	-- Add more or remove as needed. Must have 'if', 'else', and 'end'
	if (action.Name == 'Requiescat') then
		gFunc.EquipSet(sets.scat);
	elseif (action.Name == 'Savage Blade') then
		gFunc.EquipSet(sets.savageblade);
	elseif (action.Name == '') then
		gFunc.EquipSet(sets.putsetnamehere);	
	elseif (action.Name == '') then
		gFunc.EquipSet(sets.putsetnamehere);
	elseif (action.Name == '') then
		gFunc.EquipSet(sets.putsetnamehere);
	elseif (action.Name == '') then
		gFunc.EquipSet(sets.putsetnamehere);
	elseif (action.Name == '') then
		gFunc.EquipSet(sets.putsetnamehere);
	else
		-- This is a catch all/default set
		gFunc.EquipSet(sets.putsetnamehere);
	end
	
end

return profile;