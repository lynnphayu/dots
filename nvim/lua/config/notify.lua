local M = {}

function M.setup()
  local notify = require 'notify'
  notify.setup {
    stages = 'fade',
  }
  vim.notify = notify
end

return M
