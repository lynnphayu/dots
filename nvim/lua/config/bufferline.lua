local M = {}

M.setup = function()
  local bufferline = require 'bufferline'
  bufferline.setup {
    options = {
      diagnostics = 'nvim_lsp',
      show_close_icon = false,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Explorer',
          highlight = 'Directory',
          text_align = 'center',
        },
      },
    },
  }
end

return M
