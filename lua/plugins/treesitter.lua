return {
	'nvim-treesitter/nvim-treesitter',
	run = function()
		require('nvim-treesitter.install').update({ with_sync = true })()
	end,
	config = function()
		local configs = require('nvim-treesitter.configs')

		configs.setup({
			ensure_installed = {
				'lua',
				'vim',
				'luau',
				'rust',
				'json',
				'toml',
				'yaml',
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = false,
			},
		})
	end,
}
