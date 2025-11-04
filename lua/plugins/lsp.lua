return {
	{ 'neovim/nvim-lspconfig' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{
		'williamboman/mason.nvim',
		opts = {},
		config = function()
			require("mason").setup();
			require('mason-lspconfig').setup {
				ensure_installed = {
					'lua_ls',
					'denols', 
				},
			}
			vim.lsp.config['clangd'] = {
				cmd = {
					'clangd',
					'--background-index',
					'--function-arg-placeholders=0',
					'--inlay-hints',
					'--completion-style=detailed',
				},
				filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
			}
		end,
	},
}
