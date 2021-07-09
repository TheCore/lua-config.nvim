-- Custom key mappings.

local utils = require('utils')

utils.debug('S Custom key mappings configuration sequence started')

-- Remap Escape to convenier key combination.
utils.map('i', ';l', '<Esc>l')

-- Stop search results highlighting with a shortcut.
utils.map('n', '<Leader>nh', ':noh<CR>')

-- #############################################################################
-- File operations
-- #############################################################################

-- Save file without entering command line.
utils.map('n', '<Leader>w', ':update<CR>')
utils.map('n', '<Leader>ww', ':write<CR>')

-- #############################################################################
-- Text manipulation
-- #############################################################################

-- Configure insertion of semi-colon at the end of the line.
utils.map('i', '<Leader>;', '<C-o>m`<C-o>A;<C-o>``')

-- Configure insertion of dot/comma after the closing bracket.
utils.map('i', '<Leader>.', '<C-\\><C-o>a.')
utils.map('i', '<Leader>,', '<C-\\><C-o>a,')

-- Configure insertion of yanked text at the beginning/end of the line.
utils.map('n', '<Leader>as', 'm`^P``')
utils.map('n', '<Leader>ae', 'm`$p``')

-- #############################################################################
-- Tabs/buffers
-- #############################################################################

-- Move between panes.
utils.map('n', '<C-h>', '<C-w>h')
utils.map('n', '<C-j>', '<C-w>j')
utils.map('n', '<C-k>', '<C-w>k')
utils.map('n', '<C-l>', '<C-w>l')

-- Move between tabs.
utils.map('n', '<C-Right>', ':tabnext<CR>')
utils.map('n', '<C-Left>', ':tabprevious<CR>')

-- Move between buffers.
utils.map('n', '<F8>', ':bnext<CR>')
utils.map('n', '<S-F8>', ':bprevious<CR>')

-- Open list of buffers.
utils.map('n', '<Leader>bf', ':Buffers<CR>')

-- Remove current buffer and move to the previous used.
utils.map('n', '<Leader>d', ':bp<CR>:bd #<CR>')

-- Create mapping for saving and restoring the sessions (tabs, buffers, panes).
local sessions_dir = '~/.local/share/nvim/site/sessions'
utils.map('n', '<Leader>ss', ':mks! ' .. sessions_dir .. '/*.vim<C-D><BS><BS><BS><BS><BS>')
utils.map('n', '<Leader>sr', ':so ' .. sessions_dir .. '/*.vim<C-D><BS><BS><BS><BS><BS>')

utils.debug('S Custom key mappings configuration sequence finished')
