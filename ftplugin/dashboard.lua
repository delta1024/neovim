local map = vim.keymap
local cmd = vim.cmd
local function setDashboardShortcut(key, callback)
    map.set("n", "<leader>" .. key, callback, { buffer = true })
end

local function cdWithEx(dir)
    cmd.cd(dir)
    cmd.Ex()
end

setDashboardShortcut("gp", function()
    cdWithEx("~/Projects/cur/")
end)
setDashboardShortcut("gn", function()
    cdWithEx("~/.config/nvim/")
end)
setDashboardShortcut("gc", function()
    cdWithEx("~/.config/")
end)
setDashboardShortcut("gw", function()
    cdWithEx("~/.config/herbstluftwm/")
end)
map.set("n", "q", cmd.q, { buffer = true })
