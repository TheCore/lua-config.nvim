-- Bash Language Server configuration

local utils = require 'utils'

utils.debug('S BASH LSP configuration sequence started')

local lsp = require'lspconfig'

lsp.bashls.setup{}

utils.debug('S BASH LSP configuration sequence finished')
