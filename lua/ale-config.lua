vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_text_change = 1
vim.g.ale_use_neovim_diagnostics_api = 1
vim.g.ale_fix_on_save = 1
vim.g.ale_lint_on_text_change = 1
vim.g.ale_linters = {
	["sql"] = { "sqlfluff" },
	["python"] = { "flake8" },
	["dockerfile"] = { "hadolint" },
	["bash"] = { "shellcheck" },
	["yaml"] = { "yamllint" },
	["terraform"] = { "terraform_ls", "tflint" },
}
vim.g.ale_fixers = {
	["*"] = { "remove_trailing_lines", "trim_whitespace" },
	["sql"] = { "sqlfluff" },
	["python"] = { "black", "reorder-python-imports", "flake8" },
	["lua"] = { "stylua" },
	["terraform"] = { "terraform" },
}
vim.g.ale_sql_sqlfluff_options = "--dialect snowflake"
