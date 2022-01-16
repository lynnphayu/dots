local M = {}

M.map = function(mode, lhs, rhs, opts)
    local options = {
        noremap = true
    }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- load plugin after entering vim ui
-- copied from https://github.com/NvChad/NvChad/blob/e6223cc587d68d7184a585290b0dab2d62ef1f3d/lua/core/utils.lua?_pjax=%23js-repo-pjax-container%2C%20div%5Bitemtype%3D%22http%3A%2F%2Fschema.org%2FSoftwareSourceCode%22%5D%20main%2C%20%5Bdata-pjax-container%5D#L205-L213
M.packer_lazy_load = function(plugin, timer)
    if plugin then
        timer = timer or 0
        vim.defer_fn(function()
            require('packer').loader(plugin)
        end, timer)
    end
end

return M
