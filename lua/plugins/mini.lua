return {
	{
		'echasnovski/mini.pairs',
		version = false,
		config = function()
			local pairs = require('mini.pairs')

			pairs.setup()
		end,
	},
	{
		'echasnovski/mini.surround',
		version = false,
		config = function()
			local surround = require('mini.surround')

			surround.setup()
		end,
	},
	{
		'echasnovski/mini.comment',
		config = function()
			local comment = require('mini.comment')

			comment.setup({
				mappings = {
					comment_line = '<c-_>',
					comment_visual = '<c-_>',
				},
			})
		end,
	}
}
