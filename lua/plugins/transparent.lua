return {
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				groups = {
					'Normal','NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
					'Statement', 'PreProc', 'Type', 'Underlined', 'String', 'Function',
					'Conditional', 'Repeat', 'Operator', 'Structure', 'NonText',
					'CursorLine',
					'EndOfBuffer',
				},
				extra_groups = {},
				exclude_groups = {
					"NeoTreeNormalNC", "NeoTreeNormal", "NeoTreeEndOfBuffer"
				},
				-- function: code to be executed after highlight groups are cleared
				-- Also the user event "TransparentClear" will be triggered
				on_clear = function() end,
			})
			-- require('transparent').clear_prefix('NeoTree')
		end
	}
}
