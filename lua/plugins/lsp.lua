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
				},
			}
			vim.lsp.enable("ols") 
			vim.lsp.config["ols"] = {
				init_options = {
					checker_args = "-strict-style",
					-- collections = {
					-- 	{name = "shared", path}
					-- }
				}
			}
			vim.lsp.enable('denols')
			vim.lsp.config['denols'] = {
				cmd = {
					"deno", "lsp"
				},
				filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
				root_markers = { "deno.json", "deno.jsonc", ".git" },
				settings = {
					deno = {
						enable = true,
						suggest = {
							imports = {
								hosts = {
									["https://deno.land"] = true
								}
							}
						}
					}
				}
			}
			vim.g.markdown_fenced_languages = {
				"ts=typescript"
			}
			vim.lsp.enable('clangd')
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
