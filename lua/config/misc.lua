vim.opt.wrap = false
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.showtabline = 2
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.showmode = false
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.splitright = true
vim.opt.splitbelow = true

-- transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
