return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("lazy").setup({
			{ "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" }
		})
		require 'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "powershell" },
			sync_install = false,
			auto_install = true,
		}
	end
}
