-- Fugitive configuration - git wrapper for Vim

local utils = require('utils')

utils.debug('S Fugitive configuration sequence started')

utils.map('n', '<Leader>gs', ':Git status<CR>')
utils.map('n', '<Leader>gl', ':Git lgb<CR>')

utils.debug('S Fugitive configuration sequence finished')
