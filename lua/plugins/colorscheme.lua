return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- Activate the theme
			vim.cmd.colorscheme("tokyonight")
		end
	}
}
