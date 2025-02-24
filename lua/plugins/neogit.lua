return {
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed.
			"nvim-telescope/telescope.nvim", -- optional
			"ibhagwan/fzf-lua",        -- optional
			"echasnovski/mini.pick",   -- optional
		},
		keys = {
			{ "<leader>G", "<cmd>Neogit<cr>", desc = "Open git status" }
		},
		config = true
	}
}
