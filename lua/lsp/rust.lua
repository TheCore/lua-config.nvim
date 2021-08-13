-- Rust Language Server configuration.

local utils = require 'utils'

utils.debug('S Rust LSP configuration sequence started')

local lsp = require'lspconfig'
local common = require('lsp.common')

local rust_attach = function(client)
  common.on_attach(client)
end

lsp.rust_analyzer.setup {
  on_attach = rust_attach,
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "module",
        importPrefix = "by_self",
      },
      cargo = {
        loadOutDirsFromCheck = true
      },
      procMacro = {
        enable = true
      },
    }
  }
}

utils.debug('S Rust LSP configuration sequence finished')
