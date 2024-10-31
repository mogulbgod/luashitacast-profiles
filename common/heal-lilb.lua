local heallib = T{};

heallib.settings = {
    Tank = {
        Name = '',
        ID = nil,
        Index = nil,
    },
};

function heallib.FindTank(TankName)
    if (TankName == '') or (TankName == nil) then
        return;
    end
end

function heallib.StatusRemoval(Player)
    local IsSlept = gData.GetBuffCount(); local IsPoisoned = gData.GetBuffCount();
    local IsPetrified = gData.GetBuffCount(); local IsCursed = gData.GetBuffCount();
    local IsSilenced = gData.GetBuffCount() + gData.GetBuffCount();
    local IsSlowed = gData.GetBuffCount(); local IsParalyzed = gData.GetBuffCount();
    local IsSick = gData.GetBuffCount(); local IsGravitied = gData.GetBuffCount();

    if (IsSilenced + IsSlept + IsPoisoned + IsPetrified + IsCursed + IsSlowed + IsParalyzed + IsSick + IsGravitied <= 0) then
        return;
    elseif (IsSilenced > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Silena" ' .. Player);
    elseif (IsParalyzed > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Paralyna" ' .. Player);
    elseif (IsPetrified > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Stona" ' .. Player);
    elseif (IsSlowed > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Erase" ' .. Player);
    elseif (IsCursed > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Cursna" ' .. Player);
    elseif (IsPoisoned > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Poisona" ' .. Player);
    elseif (IsGravitied > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Erase" ' .. Player);
    elseif (IsSick > 0) then
        AshitaCore:GetChatManager():QueueCommand(1, '/ma "Viruna" ' .. Player);
    end
end

function Cure45(Player)
    local p = gData.GetTarget();
    if (Player == nil or '') then
        return;
    else
        if (p.HPP <= 60) then
            AshitaCore:GetChatManager():QueueCommand(1, '/ma "Cure V" ' .. Player);
        elseif (p.HPP <= 70) and (p.HPP >= 61) then
            AshitaCore:GetChatManager():QueueCommand(1, '/ma "Cure IV" ' .. Player);
        end
    end
end

function heallib.Commands(args)
    if (args[1] == 'cure45') then
        if (args[2] == nil or args[2] == '') then
            return;
        else
            heallib.Cure45(args[2]);
        end
    end
end