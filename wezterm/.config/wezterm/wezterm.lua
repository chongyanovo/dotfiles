local Config = require('config')

require('events.tab-title').setup()
require('events.new-tab-button').setup()

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.keys'))
   :append(require('config.fonts')).options