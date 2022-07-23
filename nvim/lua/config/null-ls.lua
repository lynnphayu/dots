local M = {}

function M.setup()
  local null = require 'null-ls'

  null.setup {
    sources = {
      null.builtins.formatting.stylua,
      null.builtins.formatting.prettier,
    },
  }
end

return M
