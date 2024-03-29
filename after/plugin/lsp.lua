-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'sumneko_lua',
	'rust_analyzer'
})

lsp.on_attach(function(client, buffr)
    local opts = {buffer= buffr, remap = false}
    vim.keymap.set("n", "<leader>F",  vim.cmd.LspZeroFormat, opts)
end)
lsp.setup()
