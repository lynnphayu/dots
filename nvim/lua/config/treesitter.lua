local M = {}

M.setup = function()
  require('nvim-treesitter.configs').setup {
    ensure_installed = { 'vim', 'lua' },
    auto_install = true,
    highlight = {
      enable = true,
    },
  }
end

return M
