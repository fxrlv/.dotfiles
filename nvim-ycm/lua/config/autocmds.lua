vim.api.nvim_create_autocmd('BufWritePre', {
    callback = function()
        local pos = vim.fn.getpos('.')
        vim.cmd([[%s/\s\+$//e]])
        vim.cmd([[%s/\n\+\%$//e]])
        vim.fn.setpos('.', pos)
    end,
})
