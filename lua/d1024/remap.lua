
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex )
vim.keymap.set("n", "<leader>gp",  function() vim.cmd.cd("~/Projects/cur/") end )
vim.keymap.set("n", "<leader>gc",  function() vim.cmd.cd("~/.config/nvim/") end )
vim.keymap.set("n", "<leader>gw",  function() vim.cmd.cd("~/.config/herbstluftwm/") end )


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "J", "mzJ'z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
