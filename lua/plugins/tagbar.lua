-- TagBar configuration - list all tags in a file
print('S TagBar configuration sequence started')

local utils = require('utils')

-- Bind toggling the tagbar to the key.
utils.map('n', '<F9>', ':TagbarToggle<CR>', {silent = true})

print('S TagBar configuration sequence finished')
