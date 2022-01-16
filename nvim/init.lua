local cmd = vim.cmd
local opt = vim.opt

-- Packer
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins/init.lua source <afile> | PackerCompile
  augroup end
]])

-- VIM Configurations
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.signcolumn = 'yes'

-- Plugins + Keybindings
require('plugins')
require('mappings')
