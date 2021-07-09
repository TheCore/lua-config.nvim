-- Main NeoVim configuration.
local utils = require 'utils'

utils.debug('S Lua configuration sequence started')

require('plugins')
require('general')
require('lsp')
require('keymap')

utils.debug('S Lua configuration sequence finished')
