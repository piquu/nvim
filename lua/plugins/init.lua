return {
  'stevearc/dressing.nvim',

  {
    'folke/tokyonight.nvim',
    opts = {
      style = 'moon',
    },
    init = function()
      require('tokyonight').load()
    end,
  },
}
