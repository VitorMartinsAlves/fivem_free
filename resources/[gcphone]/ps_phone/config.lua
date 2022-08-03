Config = {}

Config.Token         = "seu token de usuário"
Config.LicenseKey    = "sua chave de licença"
Config.RepeatTimeout = 2000
Config.CallRepeats   = 10
Config.OpenPhone     = "k"
Config.Webhook       = "https://discord.com/api/webhooks/969608585560596490/qn-lKRRZBbnodndo6VsxCd2xWwfXGwun0z7om_qWGpGWl6V47KOIZRIzPIeOJn1PvkaG" 
Config.WebhookBank   = "https://discord.com/api/webhooks/936699404868538399/S7wJl4UJyUJv8suMC-216_9F4v7Krz80I-tTlVRLibwW837yusojvDFaYK8wJsZL4Fww"
Config.Field         = "files[]"
Config.VerifyItem    = false
Config.ItemPhone     = "celular"
Config.CallSystem    = "pmavoice" --tokovoip | mumblevoip | saltychat | pmavoice
Config.UseInvoices   = false --true | false
Config.CheckLife     = 101
Config.IPAddress     = "http://127.0.0.1/"
Config.Permission    = "staff.permissao" -- Grupo de Permisssão para adicionar verificado
Config.NotifyAll     = true -- Ativar notificaçõpes globais no servidor
Config.AllPostsInsta = true -- Ativar todos os post dos instagram
Config.UseMoving     = true -- Usar o celular e andar
Config.ButtonDisable = { --https://docs.fivem.net/docs/game-references/controls/
    0,
    1,
    2,
    22, 
    24, 
    26, 
    36, 
    37, 
    60, 
    62, 
    106,
    114,
    121,
    140,
    141,
    142,
    199,
    245,
    257,
    263,
    264,
    309,
    331,
}

Config.HelpList = {
    ['policia'] = {
        name        = "Emergência",
        description = "LSPD",
        text        = "Chame uma Unidade movél",
        message     = "Descreva a situação:",
        emergency   = true,
        staff       = false,
        image       = "https://i.lcpdfrusercontent.com/screenshots/monthly_2020_07/271590_20200630222342_1.png.a17364b16fdc65230dace2ac5c95e808.png",
        style       = "top: 15px;",
        groups      = {
            "policia.permissao"
        }
    },
    ['ems'] = {
        name        = "Emergência",
        description = "Chame uma unidade móvel",
        text        = "Chame uma Unidade movél",
        message    = "Descreva a situação:",
        emergency   = true,
        staff       = false,
        image       = "https://gtapolicemods.com/uploads/monthly_2020_11/Rambulance.png.d24e5be1cafdffe6786dd1f8dcd64678.png",
        style       = "top: 230px;",
        groups      = {
            "paramedico.permissao"
        }
    },
    ['mecanico'] = {
        name        = "Los Santos Customs",
        description = "Chame um Mecânico(a)",
        text        = "Chame um profissional mais próximo",
        message     = "Descreva seu problema:",
        emergency   = false,
        staff       = false,
        image       = "https://img.gta5-mods.com/q75/images/legion-square-car-show-map-editor-menyoo/2b001e-3.jpg",
        style       = "top: 460px;",
        groups      = {
            "mecanico.permissao"
        }
    },
    ['staff'] = {
        name        = "FALAR COM A",
        description = "Prefeitura",
        text        = "Chame alguem da prefeitura",
        message     = "Descreva a situação:",
        emergency   = false,
        staff       = true,
        image       = "https://d2skuhm0vrry40.cloudfront.net/2017/articles/1/8/9/9/1/9/5/guia-gta-5-online-ganhar-dinheiro-facil-subir-de-reputacao-e-dicas-1494252847034.jpg/EG11/resize/1200x-1/guia-gta-5-online-ganhar-dinheiro-facil-subir-de-reputacao-e-dicas-1494252847034.jpg",
        style       = "top: 605px;",
        groups      = {
            "admin.permissao",
            "moderador.permissao",
            "manager.permissao",
            "suporte.permissao"
        }
    }
}

Config.checkItemPhone = function(user_id, item)
    if vRP.getInventoryItemAmount(user_id, item) >= 1 then
        return true
    else
        TriggerClientEvent("Notify",source,"negado","Você não possui um celular em sua mochila.")
        return false
    end
end

Config.getBankUser = function(user_id)
    return vRP.getBankMoney(user_id)
end

Config.paymentBank = function(source, user_id, nsource, nuser_id, amount)
    if source and user_id and nsource and nuser_id and amount then

        if parseInt(amount) > 0 then

            local bank = vRP.getBankMoney(user_id)
            local bank_sender = vRP.getBankMoney(nuser_id)

            if bank >= parseInt(amount) then

                --remove bank
                vRP.setBankMoney(user_id, parseInt(bank - amount))
        
                --add bank

                vRP.setBankMoney(nuser_id, parseInt(bank_sender + amount))

                TriggerClientEvent("Notify",source,"sucesso","Enviou <b>$"..vRP.format(parseInt(amount)).." dólares</b> ao passaporte <b>"..parseInt(nuser_id).."</b>.",8000)

                local identity2 = vRP.getUserIdentity(user_id)
                if identity2 ~= nil then
                    TriggerClientEvent("Notify", nsource, "importante","<b>"..identity2.name.." "..identity2.firstname.."</b> transferiu <b>$"..vRP.format(parseInt(amount)).." dólares</b> para sua conta.",8000)
                end

                local time = os.date("%d/%m/%Y %H:%M:%S")

                local data = {
                    {
                        fields = {
                            { name = "TRANSFERÊNCIA BANCÁRIA", value = time },
                            { name = "Passaporte de Envio", value = user_id, inline = true },
                            { name = "Passaporte de Destino", value = nuser_id, inline = true },
                            { name = "Valor Enviado", value = amount }
                        },
                        color = "3066993"
                    }
                }

                SendWebhookEmbed(Config.WebhookBank, data)
                
                return true
            else
                TriggerClientEvent("Notify",source, "negado","Dinheiro insuficiente.",8000)
                return false
            end
        else
            TriggerClientEvent("Notify",source, "negado","Dinheiro insuficiente.",8000)
            return false
        end
    end
    return false
end

Config.AddRecentCall = function(source, identity, anonymous, label, type)
    if source and identity and label and type then
        TriggerClientEvent('ps_phone:AddRecentCall', source, {
            name = identity.name .. " " ..identity.firstname,
            number = identity.phone,
            anonymous = anonymous
        }, label, type)
    end
    return false
end

Config.GetUserGroup = function(group)
    return vRP.getUsersByPermission(group)
end

Config.GetUserPosition = function(source)
    return vRPclient.getPosition(source)
end

Config.HelpAccept = function(answered, source, player, user_id, nuser_id, identityrequest, adm, message, x, y, z)
    TriggerClientEvent('chatMessage',player,"CHAMADO",{19,197,43},adm.."Enviado por ^1"..identityrequest.name.." "..identityrequest.firstname.."^0 ["..user_id.."], "..message)
    local ok = vRP.request(player,"Aceitar o chamado de <b>"..identityrequest.name.." "..identityrequest.firstname.."</b>?",30)
    if ok then
        if not answered then
            local identity = vRP.getUserIdentity(nuser_id)
            TriggerClientEvent("Notify",source,"importante","Chamado atendido por <b>"..identity.name.." "..identity.firstname.."</b>, aguarde no local.")
            vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
            vRPclient._setGPS(player, x, y)
            return true
        else
            TriggerClientEvent("Notify",player,"importante","Chamado ja foi atendido por outra pessoa.")
            vRPclient.playSound(player,"CHECKPOINT_MISSED","HUD_MINI_GAME_SOUNDSET")
            return false
        end
    end
end

Config.HelpSetBlip = function(player, blips, idgens, id, x, y, z)
    blips[id] = vRPclient.addBlip(player,x,y,z,358,71,"Chamado",0.6,false)
    SetTimeout(300000,function() vRPclient.removeBlip(player,blips[id]) idgens:free(id) end)
end

return Config