return {
	{
		"https://gitlab.com/bartekjaszczak/finale-nvim",

		priority = 1000,
		config = function()
			-- Activate the theme
			vim.cmd.colorscheme("finale")
		end
	},
	{
		'andweeb/presence.nvim'
	},
	{
		'nvim-lua/plenary.nvim'
	},
	{
		'kyazdani42/nvim-web-devicons'
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			-- disable netrw at the very start of your init.lua
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			-- optionally enable 24-bit colour
			vim.opt.termguicolors = true

			-- empty setup using defaults
			require("nvim-tree").setup()

			-- OR setup with some options
			require("nvim-tree").setup({
				actions = {
					open_file = {
						quit_on_open = true,
					},
				},
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = false,
				},
			})
		end
	},
	{
		'dgagn/diagflow.nvim',
		event = 'LspAttach', --[[ This is what I use personnally and it works great ]]
		config = function()
			require('diagflow').setup({
				enable = true,
				max_width = 60, -- The maximum width of the diagnostic messages
				max_height = 10, -- the maximum height per diagnostics
				severity_colors = { -- The highlight groups to use for each diagnostic severity level
					error = "DiagnosticFloatingError",
					warning = "DiagnosticFloatingWarn",
					info = "DiagnosticFloatingInfo",
					hint = "DiagnosticFloatingHint",
				},
				format = function(diagnostic)
					return diagnostic.message
				end,
				gap_size = 1,
				scope = 'line', -- 'cursor', 'line' this changes the scope, so instead of showing errors under the cursor, it shows errors on the entire line.
				padding_top = 0,
				padding_right = 0,
				text_align = 'right',                      -- 'left', 'right'
				placement = 'top',                         -- 'top', 'inline'
				inline_padding_left = 0,                   -- the padding left when the placement is inline
				update_event = { 'DiagnosticChanged', 'BufReadPost' }, -- the event that updates the diagnostics cache
				toggle_event = {},                         -- if InsertEnter, can toggle the diagnostics on inserts
				show_sign = false,                         -- set to true if you want to render the diagnostic sign before the diagnostic message
				render_event = { 'DiagnosticChanged', 'CursorMoved' },
				border_chars = {
					top_left = "┌",
					top_right = "┐",
					bottom_left = "└",
					bottom_right = "┘",
					horizontal = "─",
					vertical = "│"
				},
				show_borders = false,
			})
		end
	},

	{
		"neovim/nvim-lspconfig",
	},
	{
		"williamboman/mason.nvim",
		config = function()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup {
				ensure_installed = { "lua_ls", "ts_ls", "csharp_ls" }
			}
			require("lspconfig").lua_ls.setup {}
			require("lspconfig").ts_ls.setup {}
			require("lspconfig").csharp_ls.setup {}
		end
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts) require 'lsp_signature'.setup(opts) end
	},
	{
		'numToStr/Comment.nvim',
		opts = {
		}
	},
	{
		"nvim-telescope/telescope.nvim",
	},
	{
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
	},
	{
		'hrsh7th/nvim-cmp',
		config = function()
			local cmp = require 'cmp'
			local luasnip = require 'luasnip'
			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					['<C-j>'] = cmp.mapping.scroll_docs(-4),
					['<C-k>'] = cmp.mapping.scroll_docs(4),
					['<C-e>'] = cmp.mapping.abort(),
					['<Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { 'i', 's' }),
					['<S-Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { 'i', 's' }),
					['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' }, -- For luasnip users.
					-- { name = 'ultisnips' }, -- For ultisnips users.
					-- { name = 'snippy' }, -- For snippy users.
				}, {
					{ name = 'buffer' },
				})
			})
		end
	},
	{
		'L3MON4D3/LuaSnip'
	},
	{
		'saadparwaiz1/cmp_luasnip',
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			vim.cmd(":TSUpdate");
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {
			theme = "finale"
		}
	},
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			theme = "finale"
		},
	}
}

