return {
	'stevearc/dressing.nvim',
	{
		'folke/tokyonight.nvim',
		lazy = false,
		opts = {
			style = 'storm',
		},
		init = function()
			require('tokyonight').load()
		end,
	}
}
