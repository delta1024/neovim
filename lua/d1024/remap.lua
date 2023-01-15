local map = vim.keymap
local cmd = vim.cmd
local function setLeader(key, func)
    map.set("n", "<leader>" .. key, func)
end

setLeader("fe", cmd.Ex)
setLeader("gp", function()
    cmd.cd("~/Projects/cur/")
end)
setLeader("gn", function()
    cmd.cd("~/.config/nvim/")
end)
setLeader("gc", function()
    cmd.cd("~/.config/")
end)
setLeader("gw", function()
    cmd.cd("~/.config/herbstluftwm/")
end)
setLeader("t", function()
    cmd("silent !kitty " .. cmd.pwd() .. "&")
end)
setLeader("D", cmd.Dashboard)




map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")


map.set("n", "J", "mzJ'z")
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")
