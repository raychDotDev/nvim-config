vim.opt.wrap = false
vim.o.shiftwidth = 3
vim.o.tabstop = 3
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
