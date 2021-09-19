fx_version 'cerulean'
game 'gta5'

description 'QB-Dispenser'
version '1.0.0'

shared_scripts {
  '@qb-core/import.lua',
  'config.lua',
}

server_script 'server/main.lua'
client_script 'client/main.lua'

dependency 'qb-target'
