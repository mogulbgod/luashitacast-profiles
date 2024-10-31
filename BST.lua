local profile = {};
local sets = {
    ['idle'] = {
        Head = 'Genbu\'s Kabuto',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Pagondas Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Melaco Mittens',
        Ring1 = 'Succor Ring',
        Ring2 = 'Warp Ring',
        Back = 'Shadow Mantle',
        Waist = 'Selemnus Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['idle_town'] = {
        Head = 'Monster Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Monster Jackcoat',
        Hands = 'Monster Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Monster Trousers',
        Feet = 'Monster Gaiters',
    },
    ['charm'] = {
        Head = 'Monster Helm',
        Neck = 'Beast Whistle',
        Ear1 = 'Delta Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Monster Jackcoat',
        Hands = 'Monster Gloves',
        Ring1 = 'Light Ring',
        Ring2 = 'Angel\'s Ring',
        Back = { Name = 'Fidelity Mantle', Augment = { [1] = 'Attack+3', [2] = 'HP+6', [3] = 'DEF+3', [4] = 'MP+6' } },
        Waist = 'Monster Belt',
        Legs = 'Monster Trousers',
        Feet = 'Monster Gaiters',
    },
    ['tp_lowacc'] = {
        Ammo = 'Tiphia Sting',
        Head = 'Conqueror\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Assault Earring',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Aurum Sabatons',
    },
    ['tp_medacc'] = {
        Head = 'Conqueror\'s Helm',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Aurum Sabatons',
    },
    ['tp_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Aurum Sabatons',
    },
    ['ws_dex'] = {
        Head = 'Askar Zucchetto',
        Neck = 'Halting Stole',
        Ear1 = 'Pixie Earring',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Pln. Dastanas',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Zilant Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'AGI+3' } },
        Feet = 'Adsilio Boots +1',
    },
    ['ws_str'] = {
        Ammo = 'Tiphia Sting',
        Head = 'Conqueror\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Flame Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Aurum Cuisses',
        Feet = 'Agrona\'s Leggings',
    },
    ['lockstyle'] = {
        Head = 'Askar Zucchetto',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Pagondas Earring',
        Ear2 = 'Megasco Earring',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Setae Ring',
        Back = { Name = 'Fidelity Mantle', Augment = { [1] = 'Attack+3', [2] = 'HP+6', [3] = 'DEF+3', [4] = 'MP+6' } },
        Waist = 'Selemnus Belt',
        Legs = 'Askar Dirs',
        Feet = 'Askar Gambieras',
    },
    ['callbeast'] = {
        Head = 'Panther Mask +1',
        Neck = 'Beast Whistle',
        Ear1 = 'Delta Earring',
        --Ear2 = 'Megasco Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Trainer\'s Gloves',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Light Ring',
        Back = { Name = 'Fidelity Mantle', Augment = { [1] = 'Attack+3', [2] = 'HP+6', [3] = 'DEF+3', [4] = 'MP+6' } },
        Waist = 'Monster Belt',
        Legs = 'Cln. Subligar +1',
        Feet = 'Dune Sandals',
    },
    ['reward'] = {
        Head = 'Monster Helm',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Monster Jackcoat',
        Hands = 'Melaco Mittens',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Karka Ring',
        Back = 'Ryl. Army Mantle',
        Waist = 'Salire Belt',
        Legs = 'Monster Trousers',
        Feet = 'Monster Gaiters',
    },
    ['tame'] = { --Tame uses  your INT compared against enemy INT
        Ammo = 'Phtm. Tathlum',
        Head = 'Maat\'s Cap',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Monster Jackcoat',
        Hands = 'Dune Bracers',
        Ring1 = 'Aife\'s Annulet',
        Ring2 = 'Galdr Ring',
        Back = 'Aesir Mantle',
        Waist = 'Desert Rope',
        Legs = 'Askar Dirs',
        Feet = 'Monster Gaiters',
    },
    ['pet_melee_addon'] = {
        Head = 'Spurrer Beret',
        Neck = 'Shepherd\'s Chain',
        Back = 'Fidelity Mantle',
        Legs = 'Askar Dirs',
    },
    ['movement'] = {
        Body = 'Kupo Suit',
        Legs = 'Displaced',
    },
    ['pet_attack'] = {
    },
    ['pet_macc'] = {
    },
    ['pet_matk'] = {
    },
};

local Towns = T{'Aht Urhgan Whitegate','Al Zahbi','Bastok Markets [S]','Bastok Markets','Bastok Mines','Bastok-Jeuno Airship','Celennia Memorial Library','Chateau d\'Oraguille','Eastern Adoulin','Heavens Tower','Kazham','Kazham-Jeuno Airship','Lower Jeuno','Metalworks','Mhaura','Mog Garden','Nashmau','Norg','Northern San d\'Oria','Port Bastok','Port Jeuno','Port San d\'Oria','Port Windurst','Rabao','Ru\'Lude Gardens','San d\'Oria-Jeuno Airship','Selbina','Southern San d\'Oria [S]','Southern San d\'Oria','Tavnazian Safehold','Upper Jeuno','Western Adoulin','Windurst Walls','Windurst Waters [S]','Windurst Waters','Windurst Woods','Windurst-Jeuno Airship',};
local BstPetAttack = T{'Foot Kick','Whirl Claws','Big Scissors','Tail Blow','Blockhead','Sensilla Blades','Tegmina Buffet','Lamb Chop','Sheep Charge','Pentapeck','Recoil Dive','Frogkick','Queasyshroom','Numbshroom','Shakeshroom','Nimble Snap','Cyclotail','Somersault','Tickling Tendrils','Sweeping Gouge','Grapple','Double Claw','Spinning Top','Suction','Tortoise Stomp','Power Attack','Rhino Attack','Razor Fang','Claw Cyclone','Crossthrash','Scythe Tail','Ripper Fang','Chomp Rush','Pecking Flurry','Sickle Slash','Mandibular Bite','Wing Slap','Beak Lunge','Head Butt','Wild Oats','Needle Shot','Disembowel','Extirpating Salvo','Mega Scissors','Back Heel','Hoof Volley','Fluid Toss','Fluid Spread'};
local BstPetMagicAttack = T{'Gloom Spray','Fireball','Acid Spray','Molting Plumage','Cursed Sphere','Nectarous Deluge','Charged Whisker','Nepenthic Plunge'};
local BstPetMagicAccuracy = T{'Toxic Spit','Acid Spray','Leaf Dagger','Venom Spray','Venom','Dark Spore','Sandblast','Dust Cloud','Stink Bomb','Slug Family','Intimidate','Gloeosuccus','Spider Web','Filamented Hold','Choke Breath','Blaster','Snow Cloud','Roar','Palsy Pollen','Spore','Brain Crush','Choke Breath','Silence Gas','Chaotic Eye','Sheep Song','Soporific','Predatory Glare','Sudden Lunge','Numbing Noise','Jettatura','Bubble Shower','Spoil','Scream','Noisome Powder','Acid Mist','Rhinowrecker','Swooping Frenzy','Venom Shower','Corrosive Ooze','Spiral Spin','Infrasonics','Hi-Freq Field','Purulent Ooze','Foul Waters','Sandpit','Infected Leech','Pestilent Plume'};

local JugNames = T{'Sun Water', 'C. Carrion Broth'};

local settings = {
	tpvariant = 1,
    diset= false,
	autohasso = false,
	autoseigan = false,
	autoberserk = false,
};

-- Use these names when creating tp sets
-- like tp_default when you add a set via the /lac addset command
-- i.e /lac addset tp_default
-- This will allow you to switch between different tp gear sets
local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    [4] = 'tank'
};

profile.Sets = sets;

profile.Packer = {
};

local function CallJugCommand(Pet)
    local ammoslot = gData.GetEquipment().Ammo;
    local isMatch = true;
    if Pet:contains('cactuar') then
        AshitaCore:GetChatManager():QueueCommand(1, '/equip ammo "Sun Water"');
    elseif Pet:contains('liz', 'lizard') then
        gFunc.Equip('Ammo', 'C. Carrion Broth');
        --AshitaCore:GetChatManager():QueueCommand(1, '/equip ammo "C. Carrion Broth"');
    else
        isMatch = false;
    end

    if (JugNames:contains(ammoslot.Name) and isMatch == true) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ja "Bestial Loyalty" <me>');
    end
end

local function HandlePetAction(PetAction)
    if BstPetAttack:contains(PetAction) then
        gFunc.EquipSet(sets.callbeast);
        gFunc.EquipSet(sets.pet_attack);
    elseif BstPetMagicAccuracy:contains(PetAction) then
        gFunc.EquipSet(sets.callbeast);
        gFunc.EquipSet(sets.pet_macc);
    elseif BstPetMagicAttack:contains(PetAction) then
        gFunc.EquipSet(sets.callbeast);
        gFunc.EquipSet(sets.pet_matk);
    end
end

local function GetPetFood()
    local player = gData.GetPlayer();
    local playerLevel;

    if (player.MainJobSync ~= player.MainJobLevel) then
        playerLevel = player.MainJobSync;
    else
        playerLevel = player.MainJobLevel;
    end

    if (playerLevel >= 72) then
        return 'Pet Food Zeta';
    elseif (playerLevel >= 60) then
        return 'Pet Fd. Epsilon';
    elseif (playerLevel >= 48) then
        return 'Pet Food Delta';
    elseif (playerLevel >= 36) then
        return 'Pet Fd. Gamma';
    elseif (playerLevel >= 24) then
        return 'Pet Food Beta';
    elseif (playerLevel >= 12) then
        return 'Pet Food Alpha';
    else
        return 'Error';
    end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    local subjob = gData.GetPlayer()

	if (subjob.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 13');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (subjob.SubJob == 'SAM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 13');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	elseif (subjob.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 13');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
    elseif (subjob.SubJob == 'NIN') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 13');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
    else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 13');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /bst /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd autohasso');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd autoseigan');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd autoberserk');

    gFunc.LockStyle(sets.lockstyle);

end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /bst');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5');
end

profile.HandleCommand = function(args)
    if (#args > 0) then
        CallJugCommand(args[1]);
    end
end

profile.HandleDefault = function()

    local player = gData.GetPlayer();
    local pet = gData.GetPet();
    local target = gData.GetTarget();
    local zone = gData.GetEnvironment();
    local PetAction = gData.GetPetAction();

    if (PetAction ~= nil) then
        HandlePetAction(PetAction);
		return;
	end

    if (player.Status == 'Engaged') then
        gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
        if (pet ~= nil) then
            if (pet.Status == 'Engaged') then
                if target ~= nil then
                    if target.Distance >= 5 then -- You far but engaged and auto is engaged
                        gFunc.EquipSet(sets.idle);
                        gFunc.EquipSet(sets.pet_melee_addon); -- A set with gear just for your Auto and whatever -DT gear for yourself or regen.
                    elseif target.Distance < 5 then -- You near and engaged and auto is engaged
                        gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]); -- Master gear set
				        gFunc.EquipSet(sets.pet_melee_addon); -- Auto gear addon item set
                    end
                end
			end
        end
        if (player.SubJob == 'NIN' or 'DNC') then
            gFunc.Equip('Ear2', 'Suppanomimi');
        end
    elseif (player.Status == 'Idle') then
        if (Towns:contains(zone.Area)) then
            gFunc.EquipSet(sets.idle_town);
        else
            gFunc.EquipSet(sets.idle);
            if (pet ~= nil) then -- If you have a pet
                if (pet.Status == 'Engaged') then -- if your pet is fighting? Yes.
                    gFunc.EquipSet(sets.pet_only_melee); -- A set with gear just for your Auto and whatever -DT gear for yourself or regen.
                else -- If pet not engaged
                    --Do nothing instead of throwing an error when zoning with a pet out
                end
            end
        end
    end

    --When player moves
    if (player.IsMoving) then
        gFunc.EquipSet(sets.movement);
    end
end

profile.HandleAbility = function()

    local ability = gData.GetAction();
    local player = gData.GetPlayer();

    if (ability.Name == 'Charm') then
        gFunc.EquipSet(sets.charm);
    elseif (ability.Name == 'Reward') then
        gFunc.EquipSet(sets.reward);
        local petfood = GetPetFood();
        gFunc.Equip('Ammo', petfood);
    elseif (ability.Name == 'Fight') then
        gFunc.EquipSet(sets.fight)
    elseif (ability.Name == 'Sic') then

    elseif (ability.Name == 'Snarl') then

    elseif (ability.Name == 'Tame') then
        gFunc.EquipSet(sets.tame);
    elseif (ability.Name == 'Gauge') then
        gFunc.EquipSet(sets.charm);
    elseif (ability.Name == 'Call Beast') then
        gFunc.EquipSet(sets.callbeast);
    elseif (ability.Name == 'Ready') then
        gFunc.EquipSet(sets.callbeast);
    elseif (ability.Name == 'Bestial Loyalty') then
        gFunc.EquipSet(sets.callbeast);
        --gFunc.Equip('Ammo', 'Sun Water');
    elseif (ability.Name == '') then

    elseif string.match(ability.Name, 'Waltz') then
        gFunc.EquipSet(sets.callbeast);
    elseif BstPetAttack:contains(ability.Name) then --Pet Action Selected by master
        gFunc.EquipSet(sets.callbeast);
        gFunc.EquipSet(sets.pet_attack);
    elseif BstPetMagicAccuracy:contains(ability.Name) then --Pet Action Selected by master
        gFunc.EquipSet(sets.callbeast);
        gFunc.EquipSet(sets.pet_macc);
    elseif BstPetMagicAttack:contains(ability.Name) then --Pet Action Selected by master
        gFunc.EquipSet(sets.callbeast);
        gFunc.EquipSet(sets.pet_matk);
    end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.precast);
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.midcast);

    if string.match(spell.Name, 'Utsusemi') then

    elseif string.match(spell.Name, 'Cure') then

    elseif string.match(spell.Name, 'Protect') or string.match(spell.Name, 'Shell') then

    elseif (spell.Name == '') then

    elseif (spell.Name == '') then

    end

end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()

    local wskill = gData.GetAction(); -- Determines the action you're taking

    if (wskill.Name == 'Rampage') then -- STR 50%
        gFunc.EquipSet(sets.ws_str);
    elseif (wskill.Name == 'Bora Axe') then -- DEX 100%
        gFunc.EquipSet(sets.ws_dex);
    elseif (wskill.Name == 'Mistral Axe') then -- STR 50%
        gFunc.EquipSet(sets.ws_str);
    elseif (wskill.Name == 'Calamity') then -- VIT&STR 50%

    elseif (wskill.Name == 'Spiral Hell') then -- INT&STR 50%
        gFunc.EquipSet(sets.ws_str);
    elseif (wskill.Name == 'Vorpal Scythe') then -- STR 100%
        gFunc.EquipSet(sets.ws_str);
    elseif (wskill.Name == 'Spinning Scythe') then -- STR 100%
        gFunc.EquipSet(sets.ws_str);
    elseif (wskill.Name == '') then
    end

end

return profile;