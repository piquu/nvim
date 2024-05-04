return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
	},
	config = function()
		local cmp = require('cmp')
		local luasnip = require('luasnip')

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<c-k>'] = cmp.mapping.select_prev_item(),
				['<c-j>'] = cmp.mapping.select_next_item(),
				['<c-c>'] = cmp.mapping.complete(),
				['<c-e>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'path' },
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer' },
			})
		})

		vim.cmd[[snoremap <silent> <tab> <cmd>lua require('luasnip').jump(1)<cr>]]
		vim.cmd[[snoremap <silent> <s-tab> <cmd>lua require('luasnip').jump(-1)<cr>]]
	end,
}
