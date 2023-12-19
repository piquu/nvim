return {
  'nvim-treesitter/nvim-treesitter',

  run = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })

    ts_update()
  end,

  config = function()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'rust',
        'zig',
        'css',
        'json',
        'toml',
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    })
  end,
}
