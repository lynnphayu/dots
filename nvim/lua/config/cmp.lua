local M = {}

vim.g.cmp_toggle_flag = true -- this is correct, it must be true initially

local normal_buftype = function()
  return vim.api.nvim_buf_get_option(0, 'buftype') ~= 'prompt'
end

local toggle_completion = function()
  local ok, cmp = pcall(require, 'cmp')
  if ok then
    local next_cmp_toggle_flag = not vim.g.cmp_toggle_flag
    if next_cmp_toggle_flag then
      print 'completion on'
    else
      print 'completion off'
    end
    cmp.setup {
      enabled = function()
        vim.g.cmp_toggle_flag = next_cmp_toggle_flag
        if next_cmp_toggle_flag then
          return normal_buftype
        else
          return next_cmp_toggle_flag
        end
      end,
    }
  else
    print 'completion not available'
  end
end

local cmp_kinds = {
  Text = '  ',
  Method = '  ',
  Function = '  ',
  Constructor = '  ',
  Field = '  ',
  Variable = '  ',
  Class = '  ',
  Interface = '  ',
  Module = '  ',
  Property = '  ',
  Unit = '  ',
  Value = '  ',
  Enum = '  ',
  Keyword = '  ',
  Snippet = '  ',
  Color = '  ',
  File = '  ',
  Reference = '  ',
  Folder = '  ',
  EnumMember = '  ',
  Constant = '  ',
  Struct = '  ',
  Event = '  ',
  Operator = '  ',
  TypeParameter = '  ',
}

function M.setup()
  local cmp = require 'cmp'

  cmp.setup {
    snippet = {
      expand = function(args)
        vim.fn['vsnip#anonymous'](args.body)
      end,
    },
    sources = cmp.config.sources {
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
    },
    formatting = {
      format = function(_, vim_item)
        vim_item.kind = cmp_kinds[vim_item.kind] or ''
        return vim_item
      end,
    },
    mapping = cmp.mapping.preset.insert {
      ['<C-Space>'] = cmp.mapping {
        i = function()
          if cmp.visible() then
            cmp.abort()
            toggle_completion()
          else
            cmp.complete()
            toggle_completion()
          end
        end,
      },
      ['<CR>'] = cmp.mapping {
        i = function(fallback)
          if cmp.visible() then
            cmp.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false }
            toggle_completion()
          else
            fallback()
          end
        end,
      },
    },
  }

  local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
  local cmp = require 'cmp'
  cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
end

return M
