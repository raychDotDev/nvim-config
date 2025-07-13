return {
	{ 'neovim/nvim-lspconfig' },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"williamboman/mason.nvim",
		opts = {},
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
			require("mason").setup(
			)
			require("mason-lspconfig").setup {
				ensure_installed = {
					"lua_ls",
					"csharp_ls",
					"ts_ls",
					"pylsp",
					"html",
					"glsl_analyzer",
					"rust_analyzer",
				},
			}
			require("lspconfig").lua_ls.setup {
				capabilities = capabilities
			}
			require("lspconfig").csharp_ls.setup {
				capabilities = capabilities
			}
			require("lspconfig").ts_ls.setup {
				capabilities = capabilities
			}
			require('lspconfig').clangd.setup({
				cmd = {
					"clangd",
					"--background-index",
					"--function-arg-placeholders=0",
					"--inlay-hints",
					"--completion-style=detailed",
				},
				filetypes = { "c", "cpp", "objc", "objcpp" },
				root_dir = require('lspconfig').util.root_pattern("src"),
				capabilities = capabilities,
			})
			require("lspconfig").html.setup {
				capabilities = capabilities
			}
			require("lspconfig").pylsp.setup {
				capabilities = capabilities
			}
			require("lspconfig").glsl_analyzer.setup {
				capabilities = capabilities
			}
			require("lspconfig").rust_analyzer.setup {
				capabilities = capabilities
			}
		end
	}
}
