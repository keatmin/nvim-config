require("nvim-tree").setup({
	disable_netrw = true,
	sync_root_with_cwd = true,
})

-- Set mapping to use <C-N>
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
