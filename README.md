# es_weashop

This is the weapon resource based on the vehicle shop from https://github.com/FiveM-Scripts 

======They merged different shops into the gamemode. I will have to update this======

Warning : All the text is in French. But the shop menu has been changed so that the developers can change the language easily.

## What does this mod ?
This mod creates a weapon shop in a not so usual place.
The player can buy up to 6 weapons in total. (Can be changed)
<<<<<<< HEAD

*NEW*
Weapons are now stored in the database. When the player spawn ingame, the weapons are giving to the player.

## Changelog (13-4-2017)

- [X] Removed the changes needed in player.lua. Mod is now 100% copy/paste...
- [X] Save all the weapons to the database
- [X] Weapons are given back to the player when he dies or login.
- [X] Getting weapons back from Roberto cost money. The cost is the price of the weapon/100. (Can be changed)
=======

Since we are making a RP server, all weapons are not stored. So when you are dead or logout, you lose all the weapons.

Why ? Because we want the players to do missions first in order to buy weapons.
But saving weapons shouldn't be that difficult. (My initial mod stored the weapons, but it didn't fit our server design.)
>>>>>>> origin/master

## Installation

1. Extract the folder and rename it to es_weashop
2. Place the folder in your resource folder
3. Add - es_weashop to your citmp-server.yml
<<<<<<< HEAD
4. Restart your server
5. Have fun.
=======
4. Add "pl.nb_weapons = 0" into the player class of the Essential Mode.
5. Add GET AND SET function in the player.lua : 

Code : 

	-- Getting number of weapons
	function Player:getNbWeapons()
		return self.nb_weapons
	end

	-- Getting number of weapons
	function Player:setNbWeapons(p)
		self.nb_weapons = p
	end

Example : 

	-- Meta table for users
	setmetatable(Player, {
	__call = function(self, source, permission_level, money, identifier, iscop, group)
		local pl = {}
>>>>>>> origin/master

## Setup

<<<<<<< HEAD
Changing the limit of weapons : 
Open sv_weashop.lua and change the line :
	local max_number_weapons = 6

Change the cost of withdrawing the weapons :
Open sv_weashop.lua and change the line :
	local cost_ratio = 100
=======
		return setmetatable(pl, Player)
	end
	})

6. Restart your server
7. Have fun.
>>>>>>> origin/master

Kindly made by Hoegarden31
