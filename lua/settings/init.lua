local set = vim.opt

vim.notify = require("notify")

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.mouse = "a"

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = "utf-8"
set.termguicolors = true
set.background = "dark"

set.relativenumber = true
set.number = true
set.cursorline = true

set.hidden = true
set.completeopt = "menuone,noselect"

set.foldcolumn = "3"
set.foldlevel = 20
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"

vim.cmd([[let g:vruvbox_material_background = 'soft']])
vim.cmd([[let g:vruvbox_material_better_performance = 1]])
vim.cmd([[colorscheme gruvbox-material]])
