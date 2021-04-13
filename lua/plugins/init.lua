-- Plugins configuration
print('S Plugins configuration sequence started')

-- Load package manager.
vim.cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq { 'savq/paq-nvim', opt = true }

-- Load themes.
paq 'arcticicestudio/nord-vim'
paq 'mhartington/oceanic-next'

-- Load airline for info-bar on the bottom.
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'

-- Load text surround feature.
paq 'tpope/vim-surround'

-- Load git support.
paq 'tpope/vim-fugitive'

-- Load fuzzy finder.
paq 'junegunn/fzf.vim'

-- Load PlantUML syntax.
paq 'aklt/plantuml-syntax'

-- Load Arduino support.
paq 'stevearc/vim-arduino'

-- Load TOML support.
paq 'cespare/vim-toml'

-- Load source file tags browser.
paq 'preservim/tagbar'

-- Load lexima for auto-close feature.
paq 'cohama/lexima.vim'

-- Load fancy icons, etc.
paq 'ryanoasis/vim-devicons'

-- Load file explorer.
paq { 'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps' }

-- Load LSP configs.
paq 'neovim/nvim-lspconfig'

-- Load LSP utils.
paq 'RishabhRD/popfix'
paq 'RishabhRD/nvim-lsputils'

-- Load LSP Fuzzy Finder.
paq 'ojroques/nvim-lspfuzzy'

-- Load UltiSnips snippets manager.
paq 'SirVer/ultisnips'

-- Load auto-completion engine.
paq 'hrsh7th/nvim-compe'

-- Load custom plugins configurations.
local custom_configs = {
  'airline',
  'arduino',
  'chadtree',
  'fugitive',
  'fzf',
  'nvim-compe',
  'nvim-lspfuzzy',
  'tagbar',
  'ultisnips'
}
for _, config in pairs(custom_configs) do
  require('plugins.' .. config)
end

print('S Plugins configuration sequence finished')
