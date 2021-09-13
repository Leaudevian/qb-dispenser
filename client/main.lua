
-- redirection

RegisterNetEvent('qb-dispenser:client:Dispenser_food')
AddEventHandler('qb-dispenser:client:Dispenser_food', function(data)
    TriggerEvent("qb-dispenser:server:Remove_cash", data)
end)

RegisterNetEvent('qb-dispenser:client:Dispenser_drink')
AddEventHandler('qb-dispenser:client:Dispenser_drink', function(data)
    TriggerEvent("qb-dispenser:server:Remove_cash", data)
end)


    -- add event to eat from dispenser

RegisterNetEvent("qb-dispenser:client:dispenser:Eat")
AddEventHandler("qb-dispenser:client:dispenser:Eat", function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"dispenser"})
    Wait(5000)
    ClearPedTasksImmediately(PlayerPedId())
    TriggerEvent('animations:client:EmoteCommandStart', {data.animation})
    QBCore.Functions.Progressbar("eat_something", "Eating..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + data.item)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

    -- add event to eat from dispenser

RegisterNetEvent("qb-dispenser:client:dispenser:Drink")
AddEventHandler("qb-dispenser:client:dispenser:Drink", function(data)
    TriggerEvent('animations:client:EmoteCommandStart', {"dispenser"})
    Wait(5000)
    ClearPedTasksImmediately(PlayerPedId())
    TriggerEvent('animations:client:EmoteCommandStart', {data.animation})
    QBCore.Functions.Progressbar("drink_something", "Drinking..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + data.item)
    end)
end)
