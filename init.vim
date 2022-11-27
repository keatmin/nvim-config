call plug#begin()

Plug 'itchyny/lightline.vim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" File explorer
" Plug 'preservim/nerdtree'
" Neovim file explorer 
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

" Commenting
Plug 'tpope/vim-commentary'

" Telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" For text highlighting 
Plug 'joshdick/onedark.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Git 
Plug 'tpope/vim-fugitive'

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

call plug#end()

lua << EOF
require('configs')
require('mappings')
require('themes')
require('treesitter-config')
require("mason").setup()
require("mason-lspconfig").setup()
require('lsp-config')
require('cmp-config')
require('nullls-config')
require('nvim-tree-config')
require('telescope-config')
EOF

" Markdown highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript', 'sql', 'json', 'go']

" Pydocstring
let g:pydocstring_doq_path = '/Users/keat/.local/bin/doq'
let g:pydocstring_formatter = 'numpy'
nmap <silent> <leader>pd <Plug>(pydocstring)

" Fugitive mapping
nmap <leader>gd :Gdiffsplit<CR>
