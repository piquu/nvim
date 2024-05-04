vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.swapfile = false
vim.opt.scrolloff = 999
vim.opt.virtualedit = 'block'
vim.opt.ignorecase = true
vim.cmd[[set shortmess+=I]]

vim.g.mapleader = ' '

vim.keymap.set('v', 'J', [[:m '>+1<cr>gv=gv]])
vim.keymap.set('v', 'K', [[:m '<-2<cr>gv=gv]])

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
vim.fn.system({
	'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins', {
	change_detection = {
		notify = false
	},
})
