local M = {}

M.setup = function()
  local lsp_signature = require 'lsp_signature'
  lsp_signature.setup {
    bind = true,
    hint_enable = false,
    handler_opts = {
      border = 'rounded',
    },
  }
end

return M
