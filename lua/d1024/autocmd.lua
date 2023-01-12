vim.api.nvim_create_autocmd({ "BufWritePre" },
    { pattern = {"*.rs", "*.lua", "*.c" },
        callback = function()
            vim.lsp.buf.format({ async = false })
        end
    })
