return {
	{
		'lmantw/themify.nvim',

		lazy = false,
		priority = 999,
		config = function()
			require('themify').setup({
				"sainnhe/gruvbox-material",
				'default'
			})
		end
	}
}
