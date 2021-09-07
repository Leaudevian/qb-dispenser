
RegisterNetEvent('qb-dispenser:client:Dispenser_food')
AddEventHandler('qb-dispenser:client:Dispenser_food', function(data)
    TriggerEvent("server:remove_cash", data)
    TriggerEvent("consumables:client:dispenser:Eat", data)
end)

RegisterNetEvent('qb-dispenser:client:Dispenser_drink')
AddEventHandler('qb-dispenser:client:Dispenser_drink', function(data)
    TriggerEvent("server:remove_cash", data)
    TriggerEvent("consumables:client:dispenser:Drink", data)
end)
