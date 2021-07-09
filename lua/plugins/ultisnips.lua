-- UtilSnips configuration.

local utils = require('utils')

utils.debug('S UltiSnips configuration sequence started')

-- Change snippet's expanding trigger.
vim.g.UltiSnipsExpandTrigger = '<C-e>'
vim.g.UltiSnipsListSnippets = '<F5>'

-- Define directory where custom snippets are placed. TODO
-- vim.g.UltiSnipsSnippetDirectories =

-- Open snippets edit window vertically.
vim.g.UltiSnipsEditSplit = 'vertical'

-- Choose Python documentation style.
vim.g.ultisnips_python_style = 'google'

-- Open snippets editor with shortcut.
utils.map('n', '<Leader>se', ':UltiSnipsEdit<CR>')

utils.debug('S UltiSnips configuration sequence finished')
