local weashop = {
	opened = false,
	title = "Weapon store",
	currentmenu = "main",
	lastmenu = nil,
	currentpos = nil,
	selectedbutton = 0,
	marker = { r = 0, g = 155, b = 255, a = 200, type = 1 },
	menu = {
		x = 0.9,
		y = 0.08,
		width = 0.2,
		height = 0.04,
		buttons = 10,
		from = 1,
		to = 10,
		scale = 0.4,
		font = 0,
		["main"] = {
			title = "CATEGORIES",
			name = "main",
			buttons = {
				{title = "Melee weapons", name = "Melee", description = ""},
				{title = "Pistolets", name = "Pistolets", description = ""},
				{title = "Machine guns", name = "MachineGuns", description = ""},
				{title = "Shotgun", name = "Shotguns", description = ""},
				{title = "Assault rifle", name = "AssaultRifles", description = ""},
				{title = "Sniper rifle", name = "SniperRifles", description = ""},
				{title = "Heavy Weapons", name = "HeavyWeapons", description = ""},
				{title = "Thrown weapons", name = "ThrownWeapons", description = ""},
			}
		},
		["Melee"] = {
			title = "Melee weapons",
			name = "Melee",
			buttons = {
				{title = "Knife", name = "Knife", costs = 155000, description = {}, model = "WEAPON_Knife"},
				{title = "Nightstick", name = "Nightstick", costs = 25000, description = {}, model = "WEAPON_Nightstick"},
				{title = "Hammer", name = "Hammer", costs = 18000, description = {}, model = "WEAPON_HAMMER"},
				{title = "Bat", name = "Bat", costs = 85000, description = {}, model = "WEAPON_Bat"},
				{title = "Crowbar", name = "Crowbar", costs = 30000, description = {}, model = "WEAPON_Crowbar"},
				{title = "Golfclub", name = "Golfclub", costs = 120000, description = {}, model = "WEAPON_Golfclub"},
				{title = "Bottle", name = "Bottle", costs = 120000, description = {}, model = "WEAPON_Bottle"},
				{title = "Dagger", name = "Dagger", costs = 120000, description = {}, model = "WEAPON_Dagger"},
				{title = "Hatchet", name = "Hatchet", costs = 120000, description = {}, model = "WEAPON_Hatchet"},
				{title = "KnuckleDuster", name = "KnuckleDuster", costs = 120000, description = {}, model = "WEAPON_KnuckleDuster"},
				{title = "Machete", name = "Machete", costs = 30000, description = {}, model = "WEAPON_Machete"},
				{title = "Flashlight", name = "Flashlight", costs = 120000, description = {}, model = "WEAPON_Flashlight"},
				{title = "SwitchBlade", name = "SwitchBlade", costs = 120000, description = {}, model = "WEAPON_SwitchBlade"},
				--{title = "Poolcue", name = "Poolcue", costs = 120000, description = {}, model = "WEAPON_Poolcue"},
				--{title = "Wrench", name = "Wrench", costs = 120000, description = {}, model = "WEAPON_Wrench"},
				--{title = "Battleaxe", name = "Battleaxe", costs = 120000, description = {}, model = "WEAPON_Battleaxe"},
			}
		},
		["Pistolets"] = {
			title = "Pistolets",
			name = "Pistolets",
			buttons = {
				{title = "Pistol", name = "Pistol", costs = 500, description = {}, model = "WEAPON_Pistol"},
				{title = "Combat Pistol", name = "CombatPistol", costs = 1000, description = {}, model = "WEAPON_CombatPistol"},
				{title = "Pistol Cal 50", name = "Pistol50", costs = 3000, description = {}, model = "WEAPON_PISTOL50"},
				{title = "SNS Pistol", name = "SNSPistol", costs = 5000, description = {}, model = "WEAPON_SNSPistol"},
				{title = "Heavy Pistol", name = "HeavyPistol", costs = 8000, description = {}, model = "WEAPON_HeavyPistol"},
				{title = "Vintage Pistol", name = "VintagePistol", costs = 15000, description = {}, model = "WEAPON_VintagePistol"},
				{title = "Marksman Pistol", name = "MarksmanPistol", costs = 2000, description = {}, model = "WEAPON_MarksmanPistol"},
				{title = "Revolver", name = "Revolver", costs = 1900, description = {}, model = "WEAPON_Revolver"},
				{title = "AP Pistol", name = "APPistol", costs = 2700, description = {}, model = "WEAPON_APPistol"},
				{title = "Stun Gun", name = "StunGun", costs = 2800, description = {}, model = "WEAPON_StunGun"},
				{title = "Flare Gun", name = "FlareGun", costs = 2900, description = {}, model = "WEAPON_FlareGun"},
			}
		},
		["MachineGuns"] = {
			title = "Machine guns",
			name = "MachineGuns",
			buttons = {
				{title = "MicroSMG", name = "MicroSMG", costs = 15000, description = {}, model = "WEAPON_MicroSMG"},
				{title = "Machine Pistol", name = "MachinePistol", costs = 155000, description = {}, model = "WEAPON_MachinePistol"},
				{title = "SMG", name = "SMG", costs = 25000, description = {}, model = "WEAPON_SMG"},
				{title = "Assault SMG", name = "AssaultSMG", costs = 18000, description = {}, model = "WEAPON_AssaultSMG"},
				{title = "Combat PDW", name = "CombatPDW", costs = 85000, description = {}, model = "WEAPON_CombatPDW"},
				{title = "MG", name = "MG", costs = 30000, description = {}, model = "WEAPON_MG"},
				{title = "Combat MG", name = "CombatMG", costs = 120000, description = {}, model = "WEAPON_CombatMG"},
				{title = "Gusenberg", name = "Gusenberg", costs = 120000, description = {}, model = "WEAPON_Gusenberg"},
				{title = "Mini SMG", name = "MiniSMG", costs = 120000, description = {}, model = "WEAPON_MiniSMG"},
			}
		},
		["Shotguns"] = {
			title = "Shotgun",
			name = "Shotguns",
			buttons = {
				{title = "Pump Shotgun", name = "PumpShotgun", costs = 150000, description = {}, model = "WEAPON_PumpShotgun"},
				{title = "Sawn-off Shotgun", name = "SawnoffShotgun", costs = 220000, description = {}, model = "WEAPON_SawnoffShotgun"},
				{title = "Bullpup Shotgun", name = "BullpupShotgun", costs = 250000, description = {}, model = "WEAPON_BullpupShotgun"},
				{title = "Assault Shotgun", name = "AssaultShotgun", costs = 280000, description = {}, model = "WEAPON_AssaultShotgun"},
				{title = "Musket", name = "Musket", costs = 850000, description = {}, model = "WEAPON_Musket"},
				{title = "Heavy Shotgun", name = "HeavyShotgun", costs = 35000, description = {}, model = "WEAPON_HeavyShotgun"},
				{title = "Double-Barrel Shotgun", name = "DoubleBarrelShotgun", costs = 400000, description = {}, model = "WEAPON_DoubleBarrelShotgun"},
				{title = "Auto Shotgun", name = "Autoshotgun", costs = 450000, description = {}, model = "WEAPON_Autoshotgun"},
			}
		},
		["AssaultRifles"] = {
			title = "Assault Rifles",
			name = "AssaultRifles",
			buttons = {
				{title = "Assault Rifle", name = "AssaultRifle", costs = 250000, description = {}, model = "WEAPON_AssaultRifle"},
				{title = "Carbine Rifle", name = "CarbineRifle", costs = 250000, description = {}, model = "WEAPON_CarbineRifle"},
				{title = "Advanced Rifle", name = "AdvancedRifle", costs = 300000, description = {}, model = "WEAPON_AdvancedRifle"},
				{title = "Special Carbine", name = "SpecialCarbine", costs = 310000, description = {}, model = "WEAPON_SpecialCarbine"},
				{title = "Bullpup Rifle", name = "BullpupRifle", costs = 350000, description = {}, model = "WEAPON_BullpupRifle"},
				{title = "FCompact Rifle", name = "CompactRifle", costs = 400000, description = {}, model = "WEAPON_CompactRifle"},
			}
		},
		["SniperRifles"] = {
			title = "Sniper Rifles",
			name = "SniperRifles",
			buttons = {
				{title = "Sniper Rifle", name = "SniperRifle", costs = 500000, description = {}, model = "WEAPON_SniperRifle"},
				{title = "Heavy Sniper", name = "HeavySniper", costs = 800000, description = {}, model = "WEAPON_HeavySniper"},
				{title = "Marksman Rifle", name = "MarksmanRifle", costs = 1000000, description = {}, model = "WEAPON_MarksmanRifle"},
			}
		},
		["HeavyWeapons"] = {
			title = "Heavy Weapons",
			name = "HeavyWeapons",
			buttons = {
				{title = "Grenade Launcher", name = "GrenadeLauncher", costs = 500000, description = {}, model = "WEAPON_GrenadeLauncher"},
				{title = "RPG", name = "RPG", costs = 800000, description = {}, model = "WEAPON_RPG"},
				{title = "Minigun", name = "Minigun", costs = 1000000, description = {}, model = "WEAPON_Minigun"},
				{title = "Firework", name = "Firework", costs = 1000000, description = {}, model = "WEAPON_Firework"},
				{title = "Railgun", name = "Railgun", costs = 999999999, description = {}, model = "WEAPON_Railgun"},
				{title = "Homing Launcher", name = "HomingLauncher", costs = 1000000, description = {}, model = "WEAPON_HomingLauncher"},
				{title = "Smoke-grenade Launcher", name = "GrenadeLauncherSmoke", costs = 1000000, description = {}, model = "WEAPON_GrenadeLauncherSmoke"},
				{title = "Compact Launcher", name = "CompactLauncher", costs = 1000000, description = {}, model = "WEAPON_CompactLauncher"},
			}
		},
		["ThrownWeapons"] = {
			title = "Thrown Weapons",
			name = "ThrownWeapons",
			buttons = {
				{title = "Grenade", name = "Grenade", costs = 1500, description = {}, model = "WEAPON_Grenade"},
				{title = "Sticky Bomb", name = "StickyBomb", costs = 15500, description = {}, model = "WEAPON_StickyBomb"},
				{title = "Proximity Mine", name = "ProximityMine", costs = 250000, description = {}, model = "WEAPON_ProximityMine"},
				{title = "BZ Gas", name = "BZGas", costs = 1800, description = {}, model = "WEAPON_BZGas"},
				{title = "Molotov", name = "Molotov", costs = 85000, description = {}, model = "WEAPON_Molotov"},
				{title = "Fire Extinguisher", name = "FireExtinguisher", costs = 3000, description = {}, model = "WEAPON_FireExtinguisher"},
				{title = "Petrol Can", name = "PetrolCan", costs = 120000, description = {}, model = "WEAPON_PetrolCan"},
				{title = "Flare", name = "Flare", costs = 12000, description = {}, model = "WEAPON_Flare"},
				{title = "Ball", name = "Ball", costs = 120, description = {}, model = "WEAPON_Ball"},
				{title = "Snowball", name = "Snowball", costs = 120, description = {}, model = "WEAPON_Snowball"},
				{title = "Smoke Grenade", name = "SmokeGrenade", costs = 12000, description = {}, model = "WEAPON_SmokeGrenade"},
				--{title = "Bombe artisanale", name = "Pipebomb", costs = 3000, description = {}, model = "WEAPON_Pipebomb"},
			}
		},
	}
}

local fakeWeapon = ''
local weashop_locations = {
{entering = {74.504,-1971.366,19.788}, inside = {70.529,-1975.843,50.837}, outside = {74.504,-1971.366,19.788}},
}

local weashop_blips ={}
local inrangeofweashop = false
local currentlocation = nil
local boughtWeapon = false

local function LocalPed()
return GetPlayerPed(-1)
end

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x , y)
end

function IsPlayerInRangeOfweashop()
return inrangeofweashop
end

function ShowWeashopBlips(bool)
	if bool and #weashop_blips == 0 then
		for station,pos in pairs(weashop_locations) do
			local loc = pos
			pos = pos.entering
			local blip = AddBlipForCoord(pos[1],pos[2],pos[3])
			-- 60 58 137
			SetBlipSprite(blip,110)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString('Ammunation')
			EndTextCommandSetBlipName(blip)
			SetBlipAsShortRange(blip,true)
			SetBlipAsMissionCreatorBlip(blip,true)
			table.insert(weashop_blips, {blip = blip, pos = loc})
		end
		Citizen.CreateThread(function()
			while #weashop_blips > 0 do
				Citizen.Wait(0)
				local inrange = false
				for i,b in ipairs(weashop_blips) do
					if IsPlayerWantedLevelGreater(GetPlayerIndex(),0) == false and weashop.opened == false and IsPedInAnyVehicle(LocalPed(), true) == false and  GetDistanceBetweenCoords(b.pos.entering[1],b.pos.entering[2],b.pos.entering[3],GetEntityCoords(LocalPed())) < 2 then
						DrawMarker(1,b.pos.entering[1],b.pos.entering[2],b.pos.entering[3],0,0,0,0,0,0,2.001,2.0001,0.5001,0,155,255,200,0,0,0,0)
						drawTxt('Appuyez sur ~g~ENTRER~s~ pour acheter ~b~des armes',0,1,0.5,0.8,0.6,255,255,255,255)
						currentlocation = b
						inrange = true
					end
				end
				inrangeofweashop = inrange
			end
		end)
	elseif bool == false and #weashop_blips > 0 then
		for i,b in ipairs(weashop_blips) do
			if DoesBlipExist(b.blip) then
				SetBlipAsMissionCreatorBlip(b.blip,false)
				Citizen.InvokeNative(0x86A652570E5F25DD, Citizen.PointerValueIntInitialized(b.blip))
			end
		end
		weashop_blips = {}
	end
end

function f(n)
	return n + 0.0001
end

function LocalPed()
	return GetPlayerPed(-1)
end

function try(f, catch_f)
	local status, exception = pcall(f)
	if not status then
		catch_f(exception)
	end
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

--local veh = nil
function OpenCreator()
	boughtWeapon = false
	local ped = GetPlayerPed(-1)
	local pos = currentlocation.pos.inside
	FreezeEntityPosition(ped,true)
	SetEntityVisible(ped,false)
	local g = Citizen.InvokeNative(0xC906A7DAB05C8D2B,pos[1],pos[2],pos[3],Citizen.PointerValueFloat(),0)
	SetEntityCoords(ped,pos[1],pos[2],g)
	SetEntityHeading(ped,pos[4])
	weashop.currentmenu = "main"
	weashop.opened = true
	weashop.selectedbutton = 0
end

function CloseCreator()
	Citizen.CreateThread(function()
		local ped = GetPlayerPed(-1)
		if not boughtWeapon then
			local pos = currentlocation.pos.entering
			SetEntityCoords(ped,pos[1],pos[2],pos[3])
			FreezeEntityPosition(ped,false)
			SetEntityVisible(ped,true)
			weashop.opened = false
			weashop.menu.from = 1
			weashop.menu.to = 10
		else
			local pos = currentlocation.pos.entering
			local hash = GetHashKey(fakeWeapon)
			GiveWeaponToPed(ped, hash, 1000, 0, false)
		end
	end)
end

function drawMenuButton(button,x,y,selected)
	local menu = weashop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(menu.scale, menu.scale)
	if selected then
		SetTextColour(0, 0, 0, 255)
	else
		SetTextColour(255, 255, 255, 255)
	end
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(button.title)
	if selected then
		DrawRect(x,y,menu.width,menu.height,255,255,255,255)
	else
		DrawRect(x,y,menu.width,menu.height,0,0,0,150)
	end
	DrawText(x - menu.width/2 + 0.005, y - menu.height/2 + 0.0028)
end

function drawMenuInfo(text)
	local menu = weashop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(0.45, 0.45)
	SetTextColour(255, 255, 255, 255)
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawRect(0.675, 0.95,0.65,0.050,0,0,0,150)
	DrawText(0.365, 0.934)
end

function drawMenuRight(txt,x,y,selected)
	local menu = weashop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(menu.scale, menu.scale)
	SetTextRightJustify(1)
	if selected then
		SetTextColour(0, 0, 0, 255)
	else
		SetTextColour(255, 255, 255, 255)
	end
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(txt)
	DrawText(x + menu.width/2 - 0.03, y - menu.height/2 + 0.0028)
end

function drawMenuTitle(txt,x,y)
local menu = weashop.menu
	SetTextFont(2)
	SetTextProportional(0)
	SetTextScale(0.5, 0.5)
	SetTextColour(255, 255, 255, 255)
	SetTextEntry("STRING")
	AddTextComponentString(txt)
	DrawRect(x,y,menu.width,menu.height,0,0,0,150)
	DrawText(x - menu.width/2 + 0.005, y - menu.height/2 + 0.0028)
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function Notify(text)
SetNotificationTextEntry('STRING')
AddTextComponentString(text)
DrawNotification(false, false)
end

function DoesPlayerHaveWeapon(model,button,y,selected, source)
		local t = false
		local hash = GetHashKey(model)
		--t = HAS_PED_GOT_WEAPON(source,hash,false) --Check if player already has selected weapon !!!! THIS DOES NOT WORK !!!!!
		if t then
			drawMenuRight("OWNED",weashop.menu.x,y,selected)
		else
			drawMenuRight(button.costs.." €",weashop.menu.x,y,selected)
		end
end

local backlock = false
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1,201) and IsPlayerInRangeOfweashop() then
			if weashop.opened then
				CloseCreator()
			else
				OpenCreator()
			end
		end
		if weashop.opened then
			local ped = LocalPed()
			local menu = weashop.menu[weashop.currentmenu]
			drawTxt(weashop.title,1,1,weashop.menu.x,weashop.menu.y,1.0, 255,255,255,255)
			drawMenuTitle(menu.title, weashop.menu.x,weashop.menu.y + 0.08)
			drawTxt(weashop.selectedbutton.."/"..tablelength(menu.buttons),0,0,weashop.menu.x + weashop.menu.width/2 - 0.0385,weashop.menu.y + 0.067,0.4, 255,255,255,255)
			local y = weashop.menu.y + 0.12
			buttoncount = tablelength(menu.buttons)
			local selected = false

			for i,button in pairs(menu.buttons) do
				if i >= weashop.menu.from and i <= weashop.menu.to then

					if i == weashop.selectedbutton then
						selected = true
					else
						selected = false
					end
					drawMenuButton(button,weashop.menu.x,y,selected)
					if button.costs ~= nil then
						DoesPlayerHaveWeapon(button.model,button,y,selected,ped)
					end
					y = y + 0.04
					if selected and IsControlJustPressed(1,201) then
						ButtonSelected(button)
					end
				end
			end
		end
		if weashop.opened then
			if IsControlJustPressed(1,202) then
				Back()
			end
			if IsControlJustReleased(1,202) then
				backlock = false
			end
			if IsControlJustPressed(1,188) then
				if weashop.selectedbutton > 1 then
					weashop.selectedbutton = weashop.selectedbutton -1
					if buttoncount > 10 and weashop.selectedbutton < weashop.menu.from then
						weashop.menu.from = weashop.menu.from -1
						weashop.menu.to = weashop.menu.to - 1
					end
				end
			end
			if IsControlJustPressed(1,187)then
				if weashop.selectedbutton < buttoncount then
					weashop.selectedbutton = weashop.selectedbutton +1
					if buttoncount > 10 and weashop.selectedbutton > weashop.menu.to then
						weashop.menu.to = weashop.menu.to + 1
						weashop.menu.from = weashop.menu.from + 1
					end
				end
			end
		end

	end
end)

function round(num, idp)
  if idp and idp>0 then
    local mult = 10^idp
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end

function ButtonSelected(button)
	local ped = GetPlayerPed(-1)
	local this = weashop.currentmenu
	local btn = button.name
	if this == "main" then
		if btn == "Melee" then
			OpenMenu('Melee')
		elseif btn == "Pistolets" then
			OpenMenu('Pistolets')
		elseif btn == "MachineGuns" then
			OpenMenu('MachineGuns')
		elseif btn == "Shotguns" then
			OpenMenu('Shotguns')
		elseif btn == "AssaultRifles" then
			OpenMenu('AssaultRifles')
		elseif btn == "SniperRifles" then
			OpenMenu('SniperRifles')
		elseif btn == "HeavyWeapons" then
			OpenMenu('HeavyWeapons')
		elseif btn == "ThrownWeapons" then
			OpenMenu('ThrownWeapons')
		end
	else
		fakeWeapon = button.model
		TriggerServerEvent('CheckMoneyForWea',button.model,button.costs)
	end
end

RegisterNetEvent('FinishMoneyCheckForWea')
AddEventHandler('FinishMoneyCheckForWea', function()
	boughtWeapon = true
	CloseCreator()
end)

RegisterNetEvent('ToManyWeapons')
AddEventHandler('ToManyWeapons', function()
	boughtWeapon = false
	CloseCreator()
end)

function OpenMenu(menu)
	weashop.lastmenu = weashop.currentmenu
	weashop.menu.from = 1
	weashop.menu.to = 10
	weashop.selectedbutton = 0
	weashop.currentmenu = menu
end

function Back()
	if backlock then
		return
	end
	backlock = true
	if weashop.currentmenu == "main" then
		boughtWeapon = false
		CloseCreator()
	else
		OpenMenu(weashop.lastmenu)
	end

end

function stringstarts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

local firstspawn = 0
AddEventHandler('playerSpawned', function(spawn)
if firstspawn == 0 then
	ShowWeashopBlips(true)
	firstspawn = 1
end
TriggerServerEvent("weaponshop:playerSpawned", spawn)
end)

RegisterNetEvent('giveWeapon')
AddEventHandler('giveWeapon', function(name, delay)
	Citizen.CreateThread(function()
		local weapon = GetHashKey(name)
        Wait(delay)
        local hash = GetHashKey(name)
        GiveWeaponToPed(GetPlayerPed(-1), weapon, 1000, 0, false)
    end)
end)
