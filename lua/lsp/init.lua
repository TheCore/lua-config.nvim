-- Language Server Protocol configuration.

local utils = require 'utils'

utils.debug('S LSP configuration sequence started')

require('lsp.bash')
require('lsp.lua')
require('lsp.python')
require('lsp.rust')

require('lsp.common').lsputils()

utils.debug('S LSP configuration sequence finished')
