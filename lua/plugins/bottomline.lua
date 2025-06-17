return {
    'mnjm/bottomline.nvim',
    dependencies = {  'lewis6991/gitsigns.nvim', 'nvim-tree/nvim-web-devicons' },
	config = function ()
		require('bottomline').setup()
	end
}
