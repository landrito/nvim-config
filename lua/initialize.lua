local fn = vim.fn
local execute = vim.api.nvim_command

-- Settings
require('settings')

-- Plugins
require('plugins')

-- Key mappings
require('keymappings')

-- LSP
require('lsp')

-- Color scheme
require('colors')

-- Auto commands
require('autocmd')
