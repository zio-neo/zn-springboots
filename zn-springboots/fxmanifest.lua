fx_version   'cerulean'
lua54        'yes'
games        { 'gta5' }

name         'zn-springboots'
author       'ZioNeo'
version      '1.0.0'
repository   'not avaible'
description  'Fly To Air With This Goofy Ahh Boots'

--[[ Manifest ]]--
dependencies {
	'/server:5848',
    '/onesync',
}

client_scripts {
    'client/cl_*.lua'
}

server_scripts {
    'server/sv_*.lua',
}

shared_scripts {
    'sh_*.lua',
}