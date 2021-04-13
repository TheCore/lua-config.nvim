-- Fuzzy Finder configuration - preview/open files
print('S FZF configuration sequence started')

local utils = require('utils')

-- Open fuzzy file finder.
utils.map('n', '<Leader>zf', ':Files<CR>', {silent = true})

-- Open searching for in-file text with ripgrep.
utils.map('n', '<Leader>rg', ':Rg<CR>', {silent = true})

-- Open searching for in-file text with the silver searcher.
utils.map('n', '<Leader>ag', ':Ag<CR>', {silent = true})

print('S FZF configuration sequence finished')
