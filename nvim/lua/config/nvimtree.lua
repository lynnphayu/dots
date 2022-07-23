local M = {}

M.setup = function()
  require('nvim-tree').setup {
    git = {
      enable = true,
      timeout = 1000,
    },
    view = {
      adaptive_size = true,
      side = 'right',
    },
    renderer = {
      icons = {
        git_placement = 'after',
      },
    },
  }
end

return M
