local null_ls = require("null-ls")
local lsp_format = require("lsp-format")

-- register any number of sources simultaneously
local sources = {
	null_ls.builtins.diagnostics.flake8.with({
		extra_args = { "--max-line-length", 88 },
	}),
	null_ls.builtins.diagnostics.pylint.with({
		prefer_local = ".venv/bin",
	}),
	null_ls.builtins.formatting.black,
	null_ls.builtins.formatting.reorder_python_imports,
	null_ls.builtins.formatting.terraform_fmt,
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.diagnostics.hadolint,
	null_ls.builtins.diagnostics.shellcheck,
	null_ls.builtins.diagnostics.sqlfluff.with({
		extra_args = { "--dialect", "snowflake" },
	}),
	null_ls.builtins.formatting.sqlfluff.with({
		extra_args = { "--dialect", "snowflake" },
	}),
	null_ls.builtins.diagnostics.yamllint,
}

null_ls.setup({
	diagnostics_format = "[#{c}] #{m} (#{s})",
	sources = sources,
	on_attach = lsp_format.on_attach,
	debug = true,
})
