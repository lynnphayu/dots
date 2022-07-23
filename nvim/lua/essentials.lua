-- Editor settings
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.timeoutlen = 500

-- Theme
require 'background'
vim.g.vscode_italic_comment = 0
vim.g.vscode_disable_nvimtree_bg = true
vim.cmd [[ colorscheme vscode ]]

-- Keybindings
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- Nvim-tree
keymap('', '<C-b>', ':Neotree toggle<CR>', opts)
-- Pane navigation
keymap('', '<C-h>', '<C-W>h', opts)
keymap('', '<C-j>', '<C-W>j', opts)
keymap('', '<C-k>', '<C-W>k', opts)
keymap('', '<C-l>', '<C-W>l', opts)

-- Useful utility for debugging
function _G.put(...)
  local objects = {}
  for i = 1, select('#', ...) do
    local v = select(i, ...)
    table.insert(objects, vim.inspect(v))
  end

  print(table.concat(objects, '\n'))
  return ...
end
