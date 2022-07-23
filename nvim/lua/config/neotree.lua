local M = {}

M.setup = function()
  vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]
  local neotree = require 'neo-tree'

  neotree.setup {
    window = {
      position = 'right',
    },
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {
          '.git',
        },
      },
    },
  }
end

return M
