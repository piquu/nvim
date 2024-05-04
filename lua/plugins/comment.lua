return {
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
