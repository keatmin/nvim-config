vim.g.mapleader = ','

-- Window navigation mapping 
vim.keymap.set('n','<C-J>', '<C-W><C-J>')
vim.keymap.set('n','<C-K>', '<C-W><C-K>')
vim.keymap.set('n','<C-H>', '<C-W><C-H>')
vim.keymap.set('n','<C-L>', '<C-W><C-L>')

-- map vim terminal
vim.keymap.set('n', '<leader>$s', '<C-w>s<C-w>j:terminal<cr>:set nonumber<CR><S-a>')
vim.keymap.set('n', '<leader>$v', '<C-w>s<C-w>l:terminal<cr>:set nonumber<CR><S-a>')
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- refresh vim config
vim.keymap.set('n', '<leader>r', ':so ~/.config/nvim/init.vim<CR>')

-- edit init.vim config 
vim.keymap.set('n', '<leader>ec', ':vi ~/.config/nvim/init.vim<CR>')
vim.keymap.set('n', '<leader>ecs', ':sp ~/.config/nvim/init.vim<CR>')
vim.keymap.set('n', '<leader>ecv', ':vs ~/.config/nvim/init.vim<CR>')

-- cd to current buffer
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

