local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

-- Options
opt.nu = true
opt.rnu = true
opt.ai = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.mouse = 'a'
opt.et = true
opt.scrolloff = 5
opt.sts = 4
opt.vb = true
opt.bg = 'dark'
opt.ignorecase = true
opt.termguicolors = true
opt.cursorline = true
opt.cot = 'menu,menuone,noselect'
opt.foldenable = true
opt.foldmethod = 'marker'
opt.foldmarker = 'region, endregion'
g.tm = 1000
-- g.vimtex_compiler_silent = 0
-- g.vimtex_log_verbose = 0
g.vimtex_quickfix_open_on_warning = 0

-- Cmd
cmd'set noswapfile'
cmd'syntax on'
cmd'colorscheme nord'
cmd'packadd packer.nvim'

-- Plugins
require'Comment'.setup()


require'telescope'.setup {}

require'todo-comments'.setup {}

require'py_lsp'.setup {}

vim.notify = require("notify")
