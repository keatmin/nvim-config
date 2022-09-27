local null_ls = require("null-ls")
local lsp_format = require("lsp-format")

-- register any number of sources simultaneously
local sources = {
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.reorder_python_imports,
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.diagnostics.hadolint,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.sqlfluff.with({
        extra_args = { "--dialect", "snowflake" },
    }),
    null_ls.builtins.diagnostics.yamllint
    }

null_ls.setup({ sources = sources, on_attach=lsp_format.on_attach })
