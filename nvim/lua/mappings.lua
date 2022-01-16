local utils = require('utils')
local map = utils.map

-- chadtree
map('', '<C-b>', ':CHADopen<CR>')

-- comment
map('n', '<leader>/', ":lua require('Comment.api').toggle_current_linewise()<CR>")
map('v', '<leader>/', ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")

-- pane navigation
map('', '<C-j>', '<C-W>j')
map('', '<C-k>', '<C-W>k')
map('', '<C-h>', '<C-W>h')
map('', '<C-l>', '<C-W>l')

-- coc
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {
    expr = true
})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {
    expr = true
})

-- copy to system clipboard
map('', '<leader>c', '"+y')
