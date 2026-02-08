return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		keys = {
			{ "<leader>e", "<cmd>:Neotree toggle float<cr>", desc = "File explorer" },
		},
		opts = {
			use_popups_for_input = true,
			event_handlers = {
				{
					event = "file_opened",
					handler = function(_)
						require("neo-tree.command").execute({ action = "close" })
					end,

				}
				-- {
				-- 	event = 'after_render',
				-- 	handler = function()
				-- 		local state = require('neo-tree.sources.manager').get_state('filesystem')
				-- 		if not require('neo-tree.sources.common.preview').is_active() then
				-- 			state.config = { use_float = true} -- or whatever your config is
				-- 			state.commands.toggle_preview(state)
				-- 		end
				-- 	end
				-- }
			}
		}
	}
}
