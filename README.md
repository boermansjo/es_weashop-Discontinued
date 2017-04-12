# es_weashop

This is the weapon resource based on the vehicle shop from https://github.com/FiveM-Scripts  !! Warning, they merged different shops into the gamemode. I will have to update this...
Warning : All the text is in French. But the shop menu has been changed so that the developers can change the language easily.

## Changelog (30-3-2017)

- [X] Spend your cash on a vehicle.
- [X] Save your vehicle to the database
- [X] Allow the player to spawn the vehicle with the command /pv.


## Installation

1. Extract the folder and rename it to es_weashop
2. Place the folder in your resource folder
3. Add - es_weashop to your citmp-server.yml
4. Add "pl.nb_weapons = 0" into the player class of the Essential Mode.

Example : 

-- Meta table for users
setmetatable(Player, {
	__call = function(self, source, permission_level, money, identifier, iscop, group)
		local pl = {}

		pl.source = source
		pl.permission_level = permission_level
		pl.money = money
		pl.identifier = identifier
		pl.iscop = iscop
		pl.group = group
		pl.nb_weapons = 0
		pl.coords = {x = 0.0, y = 0.0, z = 0.0}
		pl.session = {}

		return setmetatable(pl, Player)
	end
})

4. Restart your server
5. Have fun.

Kindly made by Hoegarden31
