function Alert(type, message, time)
	SendNUIMessage({
		action = 'open',
		--title = type,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('Notify')
AddEventHandler('Notify', function(type, message, time)
	if not time then time = 9000 end
	Alert(type, message, time)
end)

--TriggerEvent("Notify","importante","Todas as vagas estão ocupadas no momento.",10000)

-- Example Commands - Delete them

RegisterCommand("teste",function(source,args)
	TriggerEvent('Notify', 'sucesso', "A melhor loja <b>Unity | FiveM</b>")
	TriggerEvent('Notify', 'negado',"A melhor loja <b>Unity | FiveM</b>")
	TriggerEvent('Notify', 'importante',"A melhor loja <b>Unity | FiveM</b>")
	TriggerEvent('Notify', 'aviso', "A melhor loja <b>Unity | FiveM</b>")
	TriggerEvent('Notify', 'neutro',"A melhor loja <b>Unity | FiveM</b>")
	TriggerEvent('Notify', 'phonemessage',"A melhor loja <b>Unity | FiveM</b>")
end)