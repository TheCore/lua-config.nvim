-- Airline status bar configuration.

local utils = require 'utils'

utils.debug('S Airline configuration sequence started')

-- Choose Airline theme.
vim.g.airline_theme = 'badwolf'

-- Automatically displays all buffers where there's only one tab open.
vim.g['airline#extensions#tabline#enabled'] = 1

utils.debug('S Airline configuration sequence finished')
