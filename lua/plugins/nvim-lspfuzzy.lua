-- NeoVim Language Server Fuzzy Finder configuration.

local utils = require 'utils'

utils.debug('S LSP Fuzzy configuration sequence started')

require('lspfuzzy').setup {}

utils.map('n', '<Leader>ha', ':LspDiagnosticsAll<CR>')

utils.debug('S LSP Fuzzy configuration sequence finished')
