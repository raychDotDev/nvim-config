vim.keymap.set("n", "d", '"_d');
vim.keymap.set("v", "d", '"_d');

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Disable search highlighting' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>t', "<cmd>tabnew<cr>", { desc = "Open new tab" })
vim.keymap.set('n', '<leader><tab>', "<cmd>tabn<cr>", { desc = "Move to next tab" })
vim.keymap.set('n', '<leader><S-tab>', "<cmd>tabp<cr>", { desc = "Move to prev tab" })
vim.keymap.set('n', '<leader>w', "<cmd>tabc<cr>", { desc = "Close current tab" })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', 'j', 'jzz')
vim.keymap.set('n', 'k', 'kzz')
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer"})
vim.keymap.set("n", "<leader>r", vim.lsp.buf.references, { desc = "Show references"})
vim.keymap.set("n", "<leader>R", vim.lsp.buf.rename, { desc = "Rename symbol"})
