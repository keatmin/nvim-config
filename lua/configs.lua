local set = vim.opt
local g = vim.g

set.smartcase=true
set.ignorecase=true
set.hlsearch=true
set.shiftwidth=4 
set.tabstop=4 
set.expandtab=true
set.smartindent=true
set.number=true
set.relativenumber=true
set.laststatus=2

-- To not deal with 
set.backup=false
set.writebackup=false
set.swapfile=false

-- Disable loading netrw by default 
g.loaded_netrw=1
g.loaded_netrwPlugin=1 

g.vsnip_snippet_dir=os.getenv("HOME").. '/.config/nvim/snippets'
