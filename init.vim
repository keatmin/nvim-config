call plug#begin()

Plug 'nvim-lualine/lualine.nvim'

" Neovim file explorer
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

" Commenting
Plug 'tpope/vim-commentary'

Plug 'ibhagwan/fzf-lua', {'branch': 'main'}

" For text highlighting
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Surround
Plug 'tpope/vim-surround'

" Python
Plug 'heavenshell/vim-pydocstring'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Neovim treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Neovim lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" neovim formatter
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'lukas-reineke/lsp-format.nvim'

" For vsnip
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Snippet
Plug 'rafamadriz/friendly-snippets'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'stevearc/oil.nvim'

call plug#end()

lua << EOF
require('configs')
require('mappings')
require('themes')
require('lualine-config')
require('fugitive-mapping')
require('fzf-lua-config')
require('treesitter-config')
require("oil").setup()
require('nvim-tree-config')
require("mason").setup()
require("mason-lspconfig").setup()
require('lsp-config')
require('cmp-config')
require('nullls-config')
EOF

" Markdown highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript', 'sql', 'json', 'go']

" Pydocstring
let g:pydocstring_doq_path = '/Users/keat/.local/bin/doq'
let g:pydocstring_formatter = 'numpy'
nmap <silent> <leader>pd <Plug>(pydocstring)
