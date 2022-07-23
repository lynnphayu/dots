local M = {}

function M.setup()
  local status_ok, alpha = pcall(require, 'alpha')
  if not status_ok then
    return
  end

  local dashboard = require 'alpha.themes.startify'
  dashboard.section.header.val = {
    [[{\__/}                          ]],
    [[( •.•)                          ]],
    [[/ > 🍿 u like popcorn?          ]],
    [[]],
    [[{\__/}                          ]],
    [[( •-•)                          ]],
    [[🍿 < \ wash ur hands first      ]],
  }
  dashboard.section.header.opts.hl = 'AlphaQuote'

  alpha.setup(dashboard.opts)
end

return M
