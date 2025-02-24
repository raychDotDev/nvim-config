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
					"ts_ls",
					"pylsp",
					"html"
				},
			}
			require("lspconfig").lua_ls.setup {}
			require("lspconfig").csharp_ls.setup {}
			require("lspconfig").ts_ls.setup {}
			require("lspconfig").clangd.setup {
				cmd = {
					"C:/Program Files/LLVM/bin/clangd.exe",
					"--log=verbose"
				}
			}
			require("lspconfig").html.setup{}
		end
	}
}
