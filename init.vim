call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File explorer
Plug 'preservim/nerdtree'

" Commenting
Plug 'tpope/vim-commentary'

" For text highlighting 
Plug 'joshdick/onedark.vim'
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

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

syntax on
set laststatus=2

" Set number and relative number
set number relativenumber 

set shiftwidth=4 tabstop=4 expandtab smartindent
" case matching
set smartcase ignorecase " Set highlightsearch auto
set hlsearch

set nobackup
set nowritebackup

lua << EOF
servers = {
    'pyright',
    'terraformls',
    'tflint',
    'tsserver',
    'gopls'
}
require('treesitter-config')
require("mason").setup()
require("mason-lspconfig").setup()
require('lsp-config')
require('cmp-config')
require('nullls-config')
EOF

" To start nerd tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Remap navigation for splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Leader remap
let mapleader=","
nmap <leader>$s <C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>
nmap <leader>$v <C-w>v<C-w>l:terminal<CR>:set nonumber<CR><S-a>

" edit config
nmap <leader>ecv :vs ~/.config/nvim/init.vim<CR>
nmap <leader>ecs :sp ~/.config/nvim/init.vim<CR>
" Refresh config
nmap <leader>r :so ~/.config/nvim/init.vim<CR>

" cd to current Buffers
nmap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Terminal mapping
tmap <ESC> <C-\><C-n>

" Remap NerdTree
nmap <C-n> :NERDTreeToggle<CR>

" lightline
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
" theme
colorscheme onedark

"fzf 
set rtp+=/usr/local/opt/fzf
nnoremap <C-P> :GFiles<Cr>
nnoremap <C-m> :Files <Cr>
nnoremap <leader><CR> :Files ~/Projects<Cr>
nnoremap <C-g> :Rg<Cr>
nnoremap <leader><tab> :Buffers<Cr>

" Markdown highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript', 'sql', 'json', 'go']

" Pydocstring
let g:pydocstring_doq_path = '/Users/keat/.local/bin/doq'
let g:pydocstring_formatter = 'numpy'
nmap <silent> <leader>d <Plug>(pydocstring)

" Fugitive mapping
nmap <leader>gd :Gdiffsplit<CR>

