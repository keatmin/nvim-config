local builtin = require("telescope.builtin")
require("telescope").setup({
	defaults = {
		layout_strategy = "horizontal",
		layout_config = {
			width = 0.8,
			height = 0.9,
		},
		winblend = 25,
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			hidden = true,
		},
		grep_string = {
			theme = "cursor",
			winblend = 15,
		},
		buffers = {
			theme = "ivy",
			winblend = 25,
		},
		diagnostics = {
			theme = "ivy",
			layout_config = {
				preview_width = 0.5,
			},
		},
	},
})
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")

-- Telescope keymap
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fc", builtin.grep_string)
vim.keymap.set("n", "<leader><tab>", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
vim.keymap.set("n", "<leader>fb", builtin.current_buffer_fuzzy_find)
vim.keymap.set("n", "<leader>fm", builtin.marks)
vim.keymap.set("n", "<leader>fa", builtin.diagnostics)
vim.keymap.set("n", "<leader>fr", builtin.lsp_references)
vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions)
vim.keymap.set("n", "<leader><CR>", function()
	builtin.find_files({ cwd = "~/Projects" })
end)
