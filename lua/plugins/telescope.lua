return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-file-browser.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		local telescope = require('telescope')
		local actions = require('telescope.actions')
		local builtin = require('telescope.builtin')

		telescope.setup({
			extensions = {
				file_browser = {
					hijack_netrw = true,
				},
			},
			defaults = {
				mappings = {
					i = {
						['<c-k>'] = actions.move_selection_previous,
						['<c-j>'] = actions.move_selection_next,
					},
				},
			},
		})

		telescope.load_extension('file_browser')
		telescope.load_extension('fzf')

		vim.keymap.set('n', '<leader>ff', builtin.find_files)
		vim.keymap.set('n', '<leader>fg', builtin.git_files)
		vim.keymap.set('n', '<leader>fl', builtin.live_grep)
		vim.keymap.set('n', '<leader>fe', '<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>')
	end,
}
