-- Python Language Server configuration.

local utils = require 'utils'

utils.debug('S Python LSP configuration sequence started')

local lsp = require'lspconfig'
local common = require('lsp.common')

local python_attach = function()
  common.custom_attach()
  utils.bufmap("n", "<Leader>is", "<cmd>%!isort -<CR>")
end

lsp.pylsp.setup { on_attach = python_attach }

utils.debug('S Python LSP configuration sequence finished')
