require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'python',
        'comment',
        'go',
        'typescript',
        'hcl',
        'yaml',
        'json',
        'sql',
        'bash'
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
	enable = true
    }
}
