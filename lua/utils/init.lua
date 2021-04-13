-- Set of utility functions that can be used in NeoVim configuration.
local utils = {}

local scopes = { o = vim.o, b = vim.bo, w = vim.wo }

-- Modify vim option.
-- Workaround of PR#13479
function utils.opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

-- Change global key mapping.
function utils.map(mode, lhs, rhs, opts)
  local options = {
    noremap = true
  }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change key mapping in the current buffer.
function utils.bufmap(mode, lhs, rhs)
  vim.api.nvim_buf_set_keymap(0, mode, lhs, rhs, {
    noremap = true,
    silent = false
  })
end

return utils
