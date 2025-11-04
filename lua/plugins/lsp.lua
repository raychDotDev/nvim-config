return {
	{
		"neovim/nvim-lspconfig"
	},
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"mason-org/mason.nvim"
		},
		opts = {
			ensure_installed = {
				'lua_ls',
				'csharp_ls',
				'pylsp',
				'html',
				'glsl_analyzer',
				'rust_analyzer',
				'denols',
				'clangd',
				'serve_d'
			}
		}
	}
}
