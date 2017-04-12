local max_number_weapons = 6 --maximum number of weapons that the player can buy. Weapons given at spawn doesn't count.

RegisterServerEvent('CheckMoneyForWea')
AddEventHandler('CheckMoneyForWea', function(weapon,price)
	TriggerEvent('es:getPlayerFromId', source, function(user)

		if (tonumber(user.money) >= tonumber(price)) then
			local player = user.identifier
			print(player)
			local nb_weapon = user.nb_weapons
			
			if (tonumber(max_number_weapons) > tonumber(nb_weapon)) then
				-- Pay the shop (price)
				user:removeMoney((price))
				nb_weapon = nb_weapon + 1
				user:setNbWeapons(nb_weapon)

				-- Trigger some client stuff
				TriggerClientEvent('FinishMoneyCheckForWea',source)
				TriggerClientEvent("es_freeroam:notify", source, "CHAR_MP_ROBERTO", 1, "Roberto", false, "Vas-y doucement avec cet arme, ce n'est pas DOOM!\n")
			else
				TriggerClientEvent('ToManyWeapons',source)
				TriggerClientEvent("es_freeroam:notify", source, "CHAR_MP_ROBERTO", 1, "Roberto", false, "Tu as trop d'armes ! (max: 6)\n")
			end
		else
			-- Inform the player that he needs more money
			TriggerClientEvent("es_freeroam:notify", source, "CHAR_MP_ROBERTO", 1, "Roberto", false, "Tu n'as pas assez de thune !\n")
		end
	end)
end)
