# qb-dispenser
qb-core module for dispenser 

# dependency
https://github.com/QuantusRP/qtarget

# code to add to qtarget

``` lua

local vending_machine_drink = {
	992069095,
	1114264700,
}

local vending_machine_food = {
	-654402915,
}

exports['qtarget']:AddTargetModel(vending_machine_drink, {
    options = {
        {
            event = "qb-dispenser:client:Dispenser_drink",
			item = "water_bottle",
			animation = "drink",
            icon = "fas fa-coffee",
            label = "Water bottle  -  3$",
			price = 3
        },
        {
            event = "qb-dispenser:client:Dispenser_drink",
			item = "kurkakola",
			animation = "drink_ecola",
            icon = "fas fa-coffee",
            label = "Kurkakola  -  5$",
			price = 5
        },
    },
    distance = 1
})

exports['qtarget']:AddTargetModel(vending_machine_food, {
    options = {
        {
            event = "qb-dispenser:client:Dispenser_food",
			item = "twerks_candy",
			animation = "eat",
            icon = "fas fa-hamburger",
            label = "Twerks  -  3$",
			price = 3
        },
        {
            event = "qb-dispenser:client:Dispenser_food",
			item = "snikkel_candy",
            icon = "fas fa-hamburger",
            label = "Snikkel  -  5$",
			price = 5
        },
    },
    distance = 1
})
```
