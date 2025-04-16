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
					"html",
					"clangd",
					"glsl_analyzer"
				},
			}
			require("lspconfig").lua_ls.setup {}
			require("lspconfig").csharp_ls.setup {}
			require("lspconfig").ts_ls.setup {}
			require('lspconfig').clangd.setup {}
			require("lspconfig").html.setup {}
			require("lspconfig").pylsp.setup {}
			require("lspconfig").glsl_analyzer.setup {}
		end
	}
}
