function TransparentBack()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
end

vim.api.nvim_create_user_command('TransparentBackground', TransparentBack,
    { nargs = 0, desc = 'Makes the background transparent' }
)
vim.api.nvim_create_user_command('SolidBackground', function() ColorMyPencils() end,
    { nargs = 0, desc = 'Makes the background transparent' }
)
ColorMyPencils()
TransparentBack()
