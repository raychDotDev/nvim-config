vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", ":Ex\n")
vim.keymap.set("n", "<leader>e", function()
	vim.cmd(":NvimTreeToggle\n")
end)

vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()\n")

vim.keymap.set("n", "<leader>h", ":nohlsearch\n")
