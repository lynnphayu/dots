local coc_preinstall_these = {'coc-prettier', 'coc-json', 'coc-css', 'coc-html', 'coc-emmet', 'coc-tsserver',
                              'coc-rust-analyzer'}

vim.api.nvim_set_var('coc_global_extensions', coc_preinstall_these)
