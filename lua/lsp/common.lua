-- Common utils and functions.

local common = {}

local utils = require('utils')

function common.custom_attach(client)
  print("S Built-in LSP started")

  -- GoTo
  utils.bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  utils.bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  utils.bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  utils.bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  utils.bufmap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  utils.bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  utils.bufmap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  utils.bufmap("n", "<Leader>go", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
  utils.bufmap("n", "<Leader>gw", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>")

  -- Action
  utils.bufmap("n", "<Leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  utils.bufmap("n", "<Leader>ld", "<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>")
  utils.bufmap("n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  utils.bufmap("n", "<Leader>cf", "<cmd>lua vim.lsp.buf.formatting()<CR>")
  utils.bufmap("n", "<Leader>ic", "<cmd>lua vim.lsp.buf.incoming_calls()<CR>")
  utils.bufmap("n", "<Leader>oc", "<cmd>lua vim.lsp.buf.outgoing_calls()<CR>")
end

function common.lsputils()
  vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
  vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
  vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
  vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
  vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
  vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
  vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
  vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
end

return common
