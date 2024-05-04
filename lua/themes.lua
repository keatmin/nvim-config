vim.cmd("colorscheme catppuccin-mocha")
vim.cmd([[let g:lightline = {
    \ "colorscheme": "catppuccin",
    \ "active": {
    \   "left": [ [ "mode", "paste" ],
    \             [ "gitbranch", "readonly", "filename", "modified" ] ]
    \ },
    \ "component_function": {
    \   "gitbranch": "FugitiveHead"
    \ },
    \ }
]])

