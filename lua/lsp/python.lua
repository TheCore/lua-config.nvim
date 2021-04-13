-- Python Language Server configuration.
print('S Python LSP configuration sequence started')

local lsp = require'lspconfig'
local common = require('lsp.common')

lsp.pyls.setup { on_attach = common.custom_attach }

print('S Python LSP configuration sequence finished')
