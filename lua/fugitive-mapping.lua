local opts = {silent=true}
vim.keymap.set('n', '<leader>gd',':Gdiffsplit<CR>')
vim.keymap.set('n', '<leader>gg',':G<CR>',opts)
vim.keymap.set('n', '<leader>gb',':G blame<CR>',opts)
vim.keymap.set('n', '<leader>gp',':G push')
vim.keymap.set('n', '<leader>gl',':Gclog<CR>',opts)
