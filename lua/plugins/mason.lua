return {
	{ 'neovim/nvim-lspconfig' },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup {
				ensure_installed = {
					"lua_ls",
					"csharp_ls",
					"clangd",
					"ts_ls",
					"pylsp"
				},
			}
			require("lspconfig").lua_ls.setup {}
			require("lspconfig").csharp_ls.setup {}
			require("lspconfig").clangd.setup {
				cmd = {
					"clangd",
					"--enable-config",
					"--pretty"
				}
			}
			require("lspconfig").ts_ls.setup {}
		end
	}
}
