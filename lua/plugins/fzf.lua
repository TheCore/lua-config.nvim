-- Fuzzy Finder configuration - preview/open files

local utils = require('utils')

utils.debug('S FZF configuration sequence started')

-- Open fuzzy file finder.
utils.map('n', '<Leader>zf', ':Files<CR>', {silent = true})

-- Open searching for in-file text with ripgrep.
utils.map('n', '<Leader>rg', ':Rg<CR>', {silent = true})

-- Open searching for in-file text with the silver searcher.
utils.map('n', '<Leader>ag', ':Ag<CR>', {silent = true})

utils.debug('S FZF configuration sequence finished')
