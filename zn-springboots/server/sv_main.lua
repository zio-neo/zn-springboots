local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("springboots", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) then
        TriggerClientEvent('zn-springboots:client:boostPlayer', src)
    end
end)