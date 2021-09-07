
-- remove cash amount for priced item

RegisterNetEvent('dispenser:server:Remove_cash')
AddEventHandler('dispenser:server:Remove_cash', function(data)
	local src = source
	local xPlayer = QBCore.Functions.GetPlayers(src)
	local currentCash = xPlayer.PlayerData.money['cash']
	if tonumber(data.price) <= currentCash then
		xPlayer.Functions.RemoveMoney('cash', tonumber(data.price), 'dispenser')
        if data.type == "food" then
            TriggerEvent("qb-dispenser:client:dispenser:Eat", data)
        end
        if data.type == "drink" then
            TriggerEvent("qb-dispenser:client:dispenser:Drink", data)
        end
    else
        print("not enought cash")
    end
end)
