require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"python",
		"comment",
		"go",
		"typescript",
		"hcl",
		"yaml",
		"json",
		"lua",
		"bash",
		"sql",
		"vimdoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true,
	},
})
