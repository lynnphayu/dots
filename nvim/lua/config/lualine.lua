local M = {}

M.setup = function()
  local lualine = require 'lualine'

  lualine.setup {
    options = {
      disabled_filetypes = { 'neo-tree' },
      component_separators = '',
      section_separators = '',
    },
  }
end

return M
