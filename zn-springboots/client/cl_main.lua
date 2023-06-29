local QBCore = exports['qb-core']:GetCoreObject()
local ItemUsable = true

function ChargeBoots(Timeout)
    SetTimeout(Timeout, function()
        ItemUsable = true
    end)
end

RegisterNetEvent('zn-springboots:client:boostPlayer', function()
    if not ItemUsable then
        QBCore.Functions.Notify('Boots are recharging, please wait', 'error', 7500)
    else
        local Ply = PlayerPedId()
        ItemUsable = false
        TriggerServerEvent('InteractSound_SV:PlayOnAll', "boing", 0.6)
        SetPedToRagdoll(Ply, 5000, 5000, 3, 0, 0, 0)
        local x = math.random(-200, 200) + 0.0
        local y = math.random(-200, 200) + 0.0
        local z = math.random(1, 200) + 0.0    
        ApplyForceToEntity(Ply, 1, x, y, z, 0.0, 0.0, -300.0, 0, true, false, false, false, true)
        ChargeBoots(30000)
    end
end)