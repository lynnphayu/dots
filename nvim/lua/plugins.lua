return require('packer').startup(function(use)
  -- Packer will manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  -- this has to be a theme that supports treesitter
  -- use { 'folke/tokyonight.nvim', branch = 'main' }
  use { 'Mofiqul/vscode.nvim' }

  --- Startup screen
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('config.alpha').setup()
    end,
  }

  -- Notification prompts
  use {
    'rcarriga/nvim-notify',
    event = 'VimEnter',
    config = function()
      require('config.notify').setup()
    end,
  }

  -- Better netrw
  use { 'tpope/vim-vinegar' }

  -- File explorer
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('config.neotree').setup()
    end,
  }

  -- Tabline
  use {
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('config.bufferline').setup()
    end,
  }

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('config.lualine').setup()
    end,
  }

  -- Key bindings
  use {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('config.whichkey').setup()
    end,
  }

  -- Syntax Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    opt = true,
    event = 'BufRead',
    run = ':TSUpdate',
    config = function()
      require('config.treesitter').setup()
    end,
  }

  -- Lsp
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/nvim-lsp-installer',
      {
        'ray-x/lsp_signature.nvim',
        config = function()
          require('config.lsp-signature').setup()
        end,
      },
    },
    config = function()
      require('config.lsp').setup()
    end,
  }

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('config.cmp').setup()
    end,
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      -- Snippet engine
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
    },
  }

  -- Ctrl+p / Ctrl+f-(bh) prompts
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Comments
  use {
    'numToStr/Comment.nvim',
    keys = { 'gc', 'gcc', 'gbc' },
    config = function()
      require('Comment').setup()
    end,
  }

  -- Auto bracket closing
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('config.autopairs').setup()
    end,
  }

  -- Alternative LSP plugins
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('config.null-ls').setup()
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config.gitsigns').setup()
    end,
  }

  -- Ui
  use { 'stevearc/dressing.nvim' }
end)
