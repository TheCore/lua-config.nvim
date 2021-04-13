-- Fugitive configuration - git wrapper for Vim
print('S Fugitive configuration sequence started')

local utils = require('utils')

utils.map('n', '<Leader>gs', ':Git status<CR>')
utils.map('n', '<Leader>gl', ':Git lgb<CR>')

print('S Fugitive configuration sequence finished')
