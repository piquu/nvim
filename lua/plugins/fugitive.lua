return {
  'tpope/vim-fugitive',

  config = function()
    vim.keymap.set('n', '<leader>gg', '<cmd>G<cr>')
    vim.keymap.set('n', '<leader>gd', '<cmd>Gvdiffsplit<cr>')
  end,
}
