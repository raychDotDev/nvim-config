return {
	{
		'lmantw/themify.nvim',

		lazy = false,
		priority = 999,
		config = function()
			require('themify').setup({
				"shaunsingh/seoul256.nvim",
				'folke/tokyonight.nvim',
				'sho-87/kanagawa-paper.nvim',
				{
					'comfysage/evergarden',

					branch = 'mega'
				},
				"zootedb0t/citruszest.nvim",
				"sainnhe/gruvbox-material",
				{
					"mcchrish/zenbones.nvim",
					after = function(theme)
						print("AAAAAA");
						require("zenbones").setup({
							transparent = false
						})
					end,
					whitelist = { "kanagawabones", "seoulbones" }
				},
				'default'
			})
		end
	}
}
