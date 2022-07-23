local M = {}

local servers = {
  -- For nvim configs
  vimls = {},
  sumneko_lua = {
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { 'vim' },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file('', true),
        },
        telemetry = {
          enable = false,
        },
        format = {
          enable = false,
        },
      },
    },
  },

  -- for terminal stuff
  bashls = {},

  -- web development
  html = {},
  jsonls = {},
  tsserver = {},

  -- others
  rust_analyzer = {},
  gopls = {},
}

local function on_attach(client, bufnr)
  -- Disable conflicting formatters
  require('config.lsp.formatter').setup(client)

  -- Use LSP as the handler for formatexpr.
  -- See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(0, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')

  -- Configure key mappings
  require('config.lsp.keymaps').setup(client, bufnr)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local options = {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
}

function M.setup()
  require('config.lsp.installer').setup(servers, options)
end

return M
