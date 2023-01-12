local api = vim.api
local group = api.nvim_create_augroup("MyLspGroup", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
    group = group,
    pattern = { "*.rs", "*.lua", "*.c", "*.sh" },
    callback = function()
        vim.lsp.buf.format({ async = false })
    end
})
