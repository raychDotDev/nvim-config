return {
	"rebelot/kanagawa.nvim",
	config = function()
		-- Default options:
		require('kanagawa').setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = { bold = true, italic = true },
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {
				bold = true;
			},
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			theme = "dragon", -- Load "wave" theme
			background = { -- map the value of 'background' option to a theme
				dark = "wave", -- try "dragon" !
				light = "lotus"
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanagawa")
	end
}
