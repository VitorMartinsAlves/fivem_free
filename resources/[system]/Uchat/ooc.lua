local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

vRPts = {}
Tunnel.bindInterface("Uchat",vRPts)
Proxy.addInterface("Uchat",vRPts)
TSclient = Tunnel.getInterface("Uchat")

RegisterNetEvent('chat:ooc')
AddEventHandler('chat:ooc', function(id, name, message, time)
    local id1 = PlayerId()
    local id2 = GetPlayerFromServerId(id) 
    if id2 == id1 then
        TriggerEvent('chat:addMessage', {
			template = '<div class="chat-message ooc"><i class="fas fa-door-open"></i> <b><span style="color: #7d7d7d">[OOC] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
			args = { name, message, time }
		})
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(id1)), GetEntityCoords(GetPlayerPed(id2)), true) < Config.OOCDistance then
        TriggerEvent('chat:addMessage', {
			template = '<div class="chat-message ooc"><i class="fas fa-door-open"></i> <b><span style="color: #7d7d7d">[OOC] {0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;">{2}</span></b><div style="margin-top: 5px; font-weight: 300;">{1}</div></div>',
			args = { name, message, time }
		})
    end
end)