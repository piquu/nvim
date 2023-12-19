return {
	'folke/tokyonight.nvim',

	config = function()
		local tokyonight = require('tokyonight')

		tokyonight.setup({
			style = 'moon',
		})

		tokyonight.load()
	end,
}
