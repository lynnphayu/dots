local M = {}

function M.setup()
  local whichkey = require 'which-key'

  local conf = {
    window = {
      border = 'single', -- none, single, double, shadow
      position = 'bottom', -- bottom, top
    },
  }

  local opts = {
    mode = 'n', -- Normal mode
    prefix = '<leader>',
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ['w'] = { '<cmd>update!<CR>', 'Save' },
    ['q'] = { '<cmd>q!<CR>', 'Quit' },

    t = {
      name = 'Tabs',
      [','] = { '<Cmd>BufferLineCyclePrev<CR>', 'Go to previous tab' },
      ['.'] = { '<Cmd>BufferLineCycleNext<CR>', 'Go to the next tab' },
      ['p'] = { '<Cmd>BufferLineTogglePin<CR>', 'Pin tab' },
      ['c'] = { '<Cmd>bd<CR>', 'Close tab' },
      ['P'] = { '<Cmd>BufferLinePick<CR>', 'Pick tab' },
      ['C'] = { '<Cmd>BufferLinePickClose<CR>', 'Pick tab to close' },
      ['1'] = { '<Cmd>BufferLineGoToBuffer 1<CR>', 'Go to tab 1' },
      ['2'] = { '<Cmd>BufferLineGoToBuffer 2<CR>', 'Go to tab 2' },
      ['3'] = { '<Cmd>BufferLineGoToBuffer 3<CR>', 'Go to tab 3' },
      ['4'] = { '<Cmd>BufferLineGoToBuffer 4<CR>', 'Go to tab 4' },
      ['5'] = { '<Cmd>BufferLineGoToBuffer 5<CR>', 'Go to tab 5' },
      ['6'] = { '<Cmd>BufferLineGoToBuffer 6<CR>', 'Go to tab 6' },
      ['7'] = { '<Cmd>BufferLineGoToBuffer 7<CR>', 'Go to tab 7' },
      ['8'] = { '<Cmd>BufferLineGoToBuffer 8<CR>', 'Go to tab 8' },
      ['9'] = { '<Cmd>BufferLineGoToBuffer 9<CR>', 'Go to tab 9' },
      ['$'] = { '<Cmd>BufferLineGoToBuffer -1<CR>', 'Go to the last tab' },
    },

    b = {
      name = 'Buffer',
      c = { '<Cmd>bd!<CR>', 'Close current buffer' },
      D = { '<Cmd>%bd|e#|bd#<CR>', 'Delete all buffers' },
    },

    f = {
      name = 'Find',
      f = { "<Cmd>lua require('telescope.builtin').find_files()<CR>", 'Files' },
      b = { "<Cmd>lua require('telescope.builtin').buffers()<CR>", 'Buffers' },
      g = { "<Cmd>lua require('telescope.builtin').live_grep()<CR>", 'Live grep' },
      h = { "<Cmd>lua require('telescope.builtin').help_tags()<CR>", 'Help tags' },
    },

    s = {
      name = 'Settings',
      m = { '<Cmd>exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>', 'Toggle mouse mode' },
    },

    z = {
      name = 'Packer',
      c = { '<Cmd>PackerCompile<CR>', 'Compile' },
      i = { '<Cmd>PackerInstall<CR>', 'Install' },
      p = { '<Cmd>PackerProfile<CR>', 'Profile' },
      s = { '<Cmd>PackerSync<CR>', 'Sync' },
      S = { '<Cmd>PackerStatus<CR>', 'Status' },
      u = { '<Cmd>PackerUpdate<CR>', 'Update' },
    },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
end

return M
