-- Lua Language Server configuration.

local utils = require 'utils'

utils.debug('S Lua LSP configuration sequence started')

local lsp = require'lspconfig'
local common = require('lsp.common')

local luals_root_path = "/usr/share/lua-language-server"
local luals_bin_path = "/usr/bin/lua-language-server"

lsp.sumneko_lua.setup {
  on_attach = common.custom_attach,
  cmd = { luals_bin_path, '-E', luals_root_path .. '/main.lua' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';')
      },
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = {
          -- Make the server aware of NeoVim runtime files.
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
        }
      }
    }
  }
}

utils.debug('S Lua LSP configuration sequence finished')
