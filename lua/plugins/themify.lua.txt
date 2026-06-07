return {
	{
		'lmantw/themify.nvim',

		lazy = false,
		priority = 999,
		config = function()
			require('themify').setup({
				"sainnhe/gruvbox-material",
				"chriskempson/vim-tomorrow-theme",
				"rebelot/kanagawa.nvim",
				{
					"xero/miasma.nvim",
					lazy = false,
					priority = 1000,
					config = function()
						vim.cmd("colorscheme miasma")
					end,
				},
				'default'
			})
		end
	}
}
