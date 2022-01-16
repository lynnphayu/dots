local cmd = vim.cmd
local opt = vim.opt

-- Colorscheme
cmd 'colorscheme PaperColor'

-- VIM Configurations
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.signcolumn = 'yes'

-- Plugins + Keybindings
require('plugins')
require('mappings')
