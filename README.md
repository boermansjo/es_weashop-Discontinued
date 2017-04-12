# es_weashop

This is the weapon resource based on the vehicle shop from https://github.com/FiveM-Scripts 

======They merged different shops into the gamemode. I will have to update this======

Warning : All the text is in French. But the shop menu has been changed so that the developers can change the language easily.

## What does this mod ?
This mod creates a weapon shop in a not so usual place.
The player can buy up to 6 weapons in total. (Can be changed)

Since we are making a RP server, all weapons are not stored. So when you are dead or logout, you lose all the weapons.

Why ? Because we want the players to do missions first in order to buy weapons.
But saving weapons shouldn't be that difficult. (My initial mod stored the weapons, but it didn't fit our server design.)

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
