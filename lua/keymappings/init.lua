local utils = require('utils')

-- Clear highlights
utils.map('n', '<C-l>', '<cmd>noh<CR>')

-- Unbind space since it is leader.
utils.map('n', '<SPACE>', '<Nop>')

-- Auto Semicolon mappings
utils.map('n', ';<CR>', 'i<end>;<Esc>')
utils.map('i', ';<CR>', '<end>;')
utils.map('n', ';;', 'i<down><end>;<Esc>')
utils.map('i', ';;', '<down><end>;')

-- Navigate panes easier
utils.map('n', '<leader>h', '<C-w>h')
utils.map('n', '<leader>j', '<C-w>j')
utils.map('n', '<leader>k', '<C-w>k')
utils.map('n', '<leader>l', '<C-w>l')

-- Telescope
utils.map('n', 'ff', '<cmd>Telescope find_files<cr>')
utils.map('n', 'fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', 'fb', '<cmd>Telescope buffers<cr>')
utils.map('n', 'fh', '<cmd>Telescope help_tags<cr>')

-- Fern
utils.map('n', '<leader><TAB>', '<cmd>Fern . -reveal=% -toggle -drawer<cr>')

-- _ to beginning
utils.map('n', '_', '^')

-- Quickly enter :!
utils.map('n', '!', ':!')

-- Git
utils.map('n', 'gs', ':G<CR>')

-- Terminal
utils.map('n', '<C-t>', ':terminal<CR>')
utils.map('t', '<Esc>', '<C-\\><C-n>')
utils.map('n', '<SPACE>h', '<Esc><C-w>h')
utils.map('n', '<SPACE>j', '<Esc><C-w>j')
utils.map('n', '<SPACE>k', '<Esc><C-w>k')
utils.map('n', '<SPACE>l', '<Esc><C-w>l')
