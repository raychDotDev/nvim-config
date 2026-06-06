return {
	'vyfor/cord.nvim',
	build = ':Cord update',
	config = function()
		require("cord").setup {
			editor = {
				tooltip = 'PORNGRAMMING',
				-- icon = "https://media1.tenor.com/m/9d3CIjAl9rcAAAAd/hipopotam-pipotam.gif"
				icon = "https://media1.tenor.com/m/2o4hFwa5TWsAAAAd/hell-yeah-sword.gif"
			},
			display = {
				theme = 'classic',
				flavor = 'dark',
				view = 'editor',
				swap_fields = false,
				swap_icons = false,
			},
		}
	end
}
