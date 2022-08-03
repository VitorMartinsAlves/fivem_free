fx_version 'adamant'
game 'gta5'

ui_page "vrp_progressbar/index.html"


client_scripts { 
	"@vrp/lib/utils.lua",
	"vrp_progressbar/client.lua",
	"vrp_policia/client.lua",
	"vrp_player/client.lua",
	"vrp_itemdrop/client.lua",
	"vrp_barbershop/client.lua",
	"vrp_animacoes/client.lua",
	"vrp_login/client.lua",
	"vrp_legacyfuel/client.lua",
	"vrp_legacyfuel/config.lua",
	"vrp_admin/client.lua"
}

server_scripts { 
	"@vrp/lib/utils.lua",
	"vrp_policia/server.lua",
	"vrp_player/server.lua",
	"vrp_itemdrop/server.lua",
	"vrp_barbershop/server.lua",
	"vrp_animacoes/server.lua",
	"vrp_legacyfuel/server.lua",
	"vrp_legacyfuel/config.lua",
	"vrp_admin/server.lua"
}

files {
	"vrp_progressbar/index.html",
}
