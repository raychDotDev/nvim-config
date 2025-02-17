vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", ":Ex\n")
vim.keymap.set("n", "<leader>e", function()
	vim.cmd(":NvimTreeToggle\n")
end)

vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()\n")
vim.keymap.set("n", "<leader>D", ":lua require'telescope.builtin'.diagnostics{}\n<Esc>")
vim.keymap.set("n", "<leader>R", vim.lsp.buf.references);
vim.keymap.set("n", "<leader>h", ":nohlsearch\n")
vim.keymap.set("n", "<leader>tt", ":FloatermNew --height=0.8 --width=0.9 pwsh<CR>cls<CR>")
vim.api.nvim_create_user_command("LinesCountCS", '!git ls-files \"*.cs\" | xargs wc -l', {});
