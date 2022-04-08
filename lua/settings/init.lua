
local utils = require('utils')

vim.g.mapleader = ' '

local cmd = vim.cmd
local indent = 2

cmd 'syntax enable'
cmd 'filetype plugin indent on'
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 5 )
-- utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('o', 'wildmenu', true)
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('w', 'colorcolumn', '80')

vim.g.strip_whitespace_on_save = 1
vim.g.better_whitespace_enabled = 1
vim.g.better_whitespace_ctermcolor = 'LightRed'
vim.g.better_whitespace_guicolor = 'LightRed'

vim.g.AutoPairsMapSpace = 0
