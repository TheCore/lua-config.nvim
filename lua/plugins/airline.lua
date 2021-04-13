-- Airline status bar configuration.
print('S Airline configuration sequence started')

-- Choose Airline theme.
vim.g.airline_theme = 'badwolf'

-- Automatically displays all buffers where there's only one tab open.
vim.g['airline#extensions#tabline#enabled'] = 1

print('S Airline configuration sequence finished')
