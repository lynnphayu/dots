local chadtree_settings = {
    view = {
        open_direction = 'right'
    },
    theme = {
        icon_glyph_set = 'emoji',
        icon_colour_set = 'github',
        text_colour_set = 'nerdtree_syntax_dark'
    }
}

vim.api.nvim_set_var('chadtree_settings', chadtree_settings)
