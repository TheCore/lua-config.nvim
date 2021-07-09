-- General configuration

local utils = require('utils')

-- Toggle debugging of configuration.
vim.g.debug = false

utils.debug('S General configuration sequence started')

-- Choose colorscheme.
local colors = 'OceanicNext'
vim.cmd('colorscheme ' .. colors)

-- Turn on current line and column highlighting.
utils.opt('w', 'cursorline', true)
utils.opt('w', 'cursorcolumn', true)

-- Set command-line height to 2.
utils.opt('o', 'cmdheight', 2)

-- Set shorter update time for writing swap file to disk.
utils.opt('o', 'updatetime', 300)

-- Turn on line numbers.
utils.opt('w', 'nu', true)
utils.opt('w', 'rnu', true)

-- Set column marker at 80 column.
vim.cmd('set colorcolumn=80,100,120')

-- Enable mouse to interact with editor.
utils.opt('o', 'mouse', 'a')

-- Enable command-line completion.
utils.opt('o', 'wildmode', 'list:longest')

-- When opening splits put them in correct positions.
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)

-- Configure tab behavior.
utils.opt('o', 'switchbuf', 'usetab,newtab')

-- Put yanked text in system clipboard.
vim.g.clipboard = {
  name = 'CopyQ',
  copy = {
    ['+'] = { 'copyq', 'add', '-' },
    ['*'] = { 'copyq', 'add', '-' }
  },
  paste = {
    ['+'] = { 'copyq', 'paste', '-' },
    ['*'] = { 'copyq', 'paste', '-' }
  },
  cache_enabled = 1
}

-- Set indentation and tabs 2 spaces wide by default for all files and replace
-- tabs with spaces.
local indent = 2
utils.opt('b', 'tabstop', indent)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'softtabstop', indent)

-- Customize indentation for different languages.
local long_indent = 'cpp,groovy,java'
vim.cmd('au FileType ' .. long_indent .. ' setlocal ts=4 sw=4 sts=4 et')
vim.cmd 'au FileType arduino setlocal ts=2 sw=2 sts=4 et'

-- Turn on automatic indentation, filetype detection and plugin support.
vim.cmd 'filetype indent plugin on'

-- Highlight text on yank.
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank { on_visual = false }'

utils.debug('S General configuration sequence finished')
