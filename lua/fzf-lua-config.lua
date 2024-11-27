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
vim.keymap.set("n", "<leader>fc", "<cmd>lua require('fzf-lua').grep_cword({ header=false })<CR>", { silent = true })
vim.keymap.set(
	"n",
	"<leader><tab>",
	"<cmd>lua require('fzf-lua').buffers({header=false, winopts={row = 1, height=0.25, width = 1}})<CR>",
	{ silent = true }
)
vim.keymap.set("n", "<leader>fb", "<cmd>lua require('fzf-lua').blines()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fm", "<cmd>lua require('fzf-lua').marks()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fa", "<cmd>lua require('fzf-lua').diagnostics()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fr", "<cmd>lua require('fzf-lua').lsp_references()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fd", "<cmd>lua require('fzf-lua').lsp_definitions()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fp", "<cmd>lua require('fzf-lua').registers()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fgr", "<cmd>lua require('fzf-lua').resume()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fk", "<cmd>lua require('fzf-lua').keymaps()<CR>", { silent = true })
