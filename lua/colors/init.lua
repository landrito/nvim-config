local utils = require('utils')
local cmd = vim.cmd

vim.g['airline_theme'] = 'nord'
vim.g['airline_powerline_fonts'] = '1'
utils.opt('o', 'termguicolors', true)
cmd 'colorscheme nord'
