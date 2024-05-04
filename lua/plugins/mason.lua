return {
	'williamboman/mason.nvim',
	dependencies = {
		'williamboman/mason-lspconfig.nvim'
	},
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local mason_registry = require('mason-registry')

		mason_registry:on('package:install:success', function()
			vim.defer_fn(function()
				require('lazy.core.handler.event').trigger({
					event = 'FileType',
					buf = vim.api.nvim_get_current_buf(),
				})
			end, 100)
		end)

		mason.setup({
			ui = {
				icons = {
					package_installed = '+',
					package_pending = '*',
					package_uninstalled = 'x',
				},
			},
		})
		mason_lspconfig.setup({
			ensure_installed = {
				'luau_lsp',
				'rust_analyzer',
			},
		})
	end,
}
