fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Qaisenix'
description 'Simple Compass Script'
version '1.0.4'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'client.lua'
}
