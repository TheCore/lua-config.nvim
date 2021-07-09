-- TagBar configuration - list all tags in a file

local utils = require('utils')

utils.debug('S TagBar configuration sequence started')

-- Bind toggling the tagbar to the key.
utils.map('n', '<F9>', ':TagbarToggle<CR>', {silent = true})

utils.debug('S TagBar configuration sequence finished')
