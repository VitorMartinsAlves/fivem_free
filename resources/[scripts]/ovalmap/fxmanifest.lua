fx_version 'bodacious'
games { 'gta5' }
description "Forza Horizon 4 Minimap"
author "DaniloRds#9894"
version "1.0"
client_script {
	'client.lua',
	'atlas.lua'
}
server_script 'server.lua'
files {
	"hud.html"
}
ui_page "hud.html"