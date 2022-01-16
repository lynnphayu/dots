-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()

    -- package manager
    use 'wbthomason/packer.nvim'

    use 'NLKNguyen/papercolor-theme' -- theme
    use 'ryanoasis/vim-devicons' -- icons

    -- explorer
    use {
        'ms-jpq/chadtree',
        branch = 'chad',
        run = 'python3 -m chadtree deps'
    }
    require('plugins.configs.chadtree')

    -- highlighter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = require('plugins.configs.treesitter')
    }

    -- lsp
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }
    require('plugins.configs.coc')

    -- niche tools
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

end)
