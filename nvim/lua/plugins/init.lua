vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- package manager
    use 'wbthomason/packer.nvim'

    use 'NLKNguyen/papercolor-theme'
    vim.cmd 'colorscheme PaperColor'

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
        run = ':TSUpdate'
    }
    require('plugins.configs.treesitter')

    -- lsp
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }
    require('plugins.configs.coc')

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- niche tools
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

end)
