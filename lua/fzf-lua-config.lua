local fzf = require("fzf-lua")
fzf.setup({
	"telescope",
	winopts = {
		preview = {
			delay = 0,
		},
		builtin = {
			treesitter = { disable = true, enable = {} },
		},
	},
	header = false,
})

vim.keymap.set(
	"n",
	"<leader>ff",
	"<cmd>lua require('fzf-lua').files({ prompt='Files> ', cwd_prompt=false, header=false})<CR>",
	{ silent = true }
)
vim.keymap.set(
	"n",
	"<leader><CR>",
	"<cmd>lua require('fzf-lua').files({ prompt='Projects> ', cwd = '~/Projects', cwd_prompt=false, header=false })<CR>",
	{ silent = true }
)
vim.keymap.set("n", "<leader>fg", "<cmd>lua require('fzf-lua').live_grep_glob({header=false})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fc", "<cmd>lua require('fzf-lua').grep_cword()<CR>", { silent = true })
vim.keymap.set("n", "<leader><tab>", "<cmd>lua require('fzf-lua').buffers({header=false})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fb", "<cmd>lua require('fzf-lua').blines()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fm", "<cmd>lua require('fzf-lua').marks()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fm", "<cmd>lua require('fzf-lua').marks()<CR>", { silent = true })
