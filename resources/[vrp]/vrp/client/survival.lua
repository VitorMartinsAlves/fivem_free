function tvRP.varyHealth(variation)
	local ped = PlayerPedId()
	local n = math.floor(GetEntityHealth(ped)+variation)
	SetEntityHealth(ped,n)
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ GETHEALTH ]--------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.getHealth()
	return GetEntityHealth(PlayerPedId())
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ SETHEALTH ]--------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.setHealth(health)
	SetEntityHealth(PlayerPedId(),parseInt(health))
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ SETFRIENDLYFIRE ]--------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.setFriendlyFire(flag)
	NetworkSetFriendlyFireOption(flag)
	SetCanAttackFriendly(PlayerPedId(),flag,flag)
end

-- [ FOME & SEDE ] --

function tvRP.sedeFome()
	vRPserver.varyHunger(-100)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(6000)
		if IsPlayerPlaying(PlayerId()) then
			local ped = PlayerPedId()
			local vthirst = 0.8
			local vhunger = 0.5

			if IsPedOnFoot(ped) then
				local factor = math.min(tvRP.getSpeed(),10)

				vthirst = vthirst+1.0*factor
				vhunger = vhunger+0.2*factor
			end

			if IsPedInMeleeCombat(ped) then
				vthirst = vthirst+10
				vhunger = vhunger+5
			end

			if IsPedHurt(ped) or IsPedInjured(ped) then
				vthirst = vthirst+2
				vhunger = vhunger+1
			end

			if vthirst > 0 then
				vRPserver.varyThirst(vthirst/12.0)
			end

			if vhunger > 0 then
				vRPserver.varyHunger(vhunger/12.0)
			end

		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NOCAUTEVAR
-----------------------------------------------------------------------------------------------------------------------------------------
local nocauteado = false
local deathtimer = 500
-----------------------------------------------------------------------------------------------------------------------------------------
-- NOCAUTEADO
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.CheckSegundosMorto()
	return deathtimer
end

function tvRP.SetSegundosMorto(seg)
	deathtimer = seg
end

RegisterNetEvent("Obito")
AddEventHandler("Obito",function()
    deathtimer = 10
end)

RegisterNetEvent("Obito2")
AddEventHandler("Obito2",function()
    deathtimer = 60
end)

Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
		local ped = PlayerPedId()
		if GetEntityHealth(ped) <= 101 and deathtimer >= 0 then
			timeDistance = 4
			if not nocauteado then
				local x,y,z = table.unpack(GetEntityCoords(ped))
				NetworkResurrectLocalPlayer(x,y,z,true,true,false)
				deathtimer = 500
				nocauteado = true
				vRPserver._updateHealth(101)
				SetEntityHealth(ped,101)
				SetEntityInvincible(ped,true)
				if IsPedInAnyVehicle(ped) then
					TaskLeaveVehicle(ped,GetVehiclePedIsIn(ped),4160)
				end
				TriggerEvent("radio:outServers")
			else
				if deathtimer > 0 then
					drawTxt("VOCÊ TEM ~r~"..deathtimer.." ~w~SEGUNDOS DE VIDA, AGUARDE POR SOCORRO MÉDICO",4,0.5,0.93,0.50,255,255,255,255)
				else
					drawTxt("PRESSIONE ~g~E ~w~PARA IR AO HOSPITAL SUL",4,0.5,0.87,0.50,255,255,255,255)
					drawTxt("PRESSIONE ~b~H ~w~PARA IR AO HOSPITAL NORTE",4,0.5,0.90,0.50,255,255,255,255)
					drawTxt("OU AGUARDE POR SOCORRO MÉDICO",4,0.5,0.93,0.50,255,255,255,255)

					if IsControlJustPressed(0,38) then
						TriggerServerEvent("rusher:Aeroporto:Server", 1)
						TriggerEvent('rusher:ExcecaoVida')
						TriggerEvent('rusher:ExcecaoGod')
					end
					if IsControlJustPressed(0,74) then
						TriggerServerEvent("rusher:Aeroporto:Server", 2)
						TriggerEvent('rusher:ExcecaoVida')
						TriggerEvent('rusher:ExcecaoGod')
					end

				end
				SetEntityHealth(ped,101)
				BlockWeaponWheelThisFrame()
				DisablePlayerFiring(PlayerId(),true)
				DisableControlAction(0,21,true)
				DisableControlAction(0,22,true)
				DisableControlAction(0,23,true)
				DisableControlAction(0,24,true)
				DisableControlAction(0,25,true)
				DisableControlAction(0,29,true)
				DisableControlAction(0,32,true)
				DisableControlAction(0,33,true)
				DisableControlAction(0,34,true)
				DisableControlAction(0,35,true)
				DisableControlAction(0,47,true)
				DisableControlAction(0,56,true)
				DisableControlAction(0,58,true)
				DisableControlAction(0,73,true)
				DisableControlAction(0,75,true)
				DisableControlAction(0,137,true)
				DisableControlAction(0,140,true)
				DisableControlAction(0,141,true)
				DisableControlAction(0,142,true)
				DisableControlAction(0,143,true)
				DisableControlAction(0,166,true)
				DisableControlAction(0,167,true)
				DisableControlAction(0,168,true)
				DisableControlAction(0,169,true)
				DisableControlAction(0,170,true)
				DisableControlAction(0,177,true)
				DisableControlAction(0,182,true)
				DisableControlAction(0,187,true)
				DisableControlAction(0,188,true)
				DisableControlAction(0,189,true)
				DisableControlAction(0,190,true)
				DisableControlAction(0,243,true)
				DisableControlAction(0,257,true)
				DisableControlAction(0,263,true)
				DisableControlAction(0,264,true)
				DisableControlAction(0,268,true)
				DisableControlAction(0,269,true)
				DisableControlAction(0,270,true)
				DisableControlAction(0,271,true)
				DisableControlAction(0,288,true)
				DisableControlAction(0,289,true)
				DisableControlAction(0,311,true)
				DisableControlAction(0,344,true)
				SetPedToRagdoll(ped,2000,2000,0,0,0,0)
			end
		end
		Citizen.Wait(timeDistance)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONTIMER
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        local ped = PlayerPedId()
        if GetEntityHealth(ped) <= 101 and deathtimer <= 0 then
            if IsControlJustPressed(0,38) then
                TriggerEvent("resetBleeding")
                TriggerEvent("resetDiagnostic")
                TriggerServerEvent("clearInventory")
                deathtimer = 250
                nocauteado = false
                ClearPedBloodDamage(ped)
                SetEntityInvincible(ped,false)
                DoScreenFadeOut(1000)
                SetEntityHealth(ped,400)
                SetPedArmour(ped,0)
                Citizen.Wait(1000)
                SetEntityCoords(PlayerPedId(),343.04,-1398.25,32.51+0.0001,1,0,0,1)
                FreezeEntityPosition(ped,true)
                SetTimeout(5000,function()
                    FreezeEntityPosition(ped,false)
                    Citizen.Wait(1000)
                    DoScreenFadeIn(1000)
                end)
            elseif IsControlJustPressed(0,74) then
				TriggerServerEvent("clearInventory2")
			end
        end
    end
end)

RegisterNetEvent("respawnPlayer2")
AddEventHandler("respawnPlayer2",function()
	local ped = PlayerPedId()
	TriggerEvent("resetBleeding")
	TriggerEvent("resetDiagnostic")
	deathtimer = 250
	nocauteado = false
	ClearPedBloodDamage(ped)
	SetEntityInvincible(ped,false)
	DoScreenFadeOut(1000)
	SetEntityHealth(ped,399)
	Citizen.Wait(1000)
	SetEntityCoords(ped,637.79, -2.94, 82.79,1,0,0,1)
	FreezeEntityPosition(ped,true)
	SetTimeout(5000,function()
		SetEntityHealth(ped,399)
		FreezeEntityPosition(ped,false)
		Citizen.Wait(1000)
		DoScreenFadeIn(1000)
	end)
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		SetPlayerHealthRechargeMultiplier(PlayerId(),0)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if nocauteado and deathtimer > 0 then
			deathtimer = deathtimer - 1
		end
	end
end)

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function tvRP.isInComa()
	return nocauteado
end

function tvRP.killGod()
	nocauteado = false
	local ped = PlayerPedId()
	local x,y,z = table.unpack(GetEntityCoords(ped))
	NetworkResurrectLocalPlayer(x,y,z,true,true,false)
	ClearPedBloodDamage(ped)
	SetEntityInvincible(ped,false)
	SetEntityHealth(ped,201)
	ClearPedTasks(ped)
	ClearPedSecondaryTask(ped)
end

function tvRP.PrisionGod()
	local ped = PlayerPedId()
	if GetEntityHealth(ped) <= 101 then
		nocauteado = false
		ClearPedBloodDamage(ped)
		SetEntityInvincible(ped,false)
		SetEntityHealth(ped,201)
		ClearPedTasks(ped)
		ClearPedSecondaryTask(ped)
	end
end