local utils = require('utils')

-- Clear highlights
utils.map('n', '<C-l>', '<cmd>noh<CR>')

-- jk to escape
utils.map('i', 'jk', '<Esc>')           

-- Unbind space since it is leader.
utils.map('n', '<SPACE>', '<Nop>')

-- Auto Semicolon mappings
utils.map('n', ';<CR>', 'i<end>;<Esc>')
utils.map('i', ';<CR>', '<end>;')
utils.map('n', ';;', 'i<down><end>;<Esc>')
utils.map('i', ';;', '<down><end>;')

-- Navigate panes easier
utils.map('n', '<SPACE>h', '<C-w>h')
utils.map('n', '<SPACE>j', '<C-w>j')
utils.map('n', '<SPACE>k', '<C-w>k')
utils.map('n', '<SPACE>l', '<C-w>l')

-- Auto . Mappings
-- utils.map('n', '. <CR>', 'i <end>.<Esc>') 
-- utils.map('i', '. <CR>', '<end>.') 
-- utils.map('n', '. <CR>', 'i <end>.<Esc>') 
-- utils.map('i', '. <CR>', '<end>.') 

-- Find and replace all instances of the current word
utils.map('v', '<leader> *', '"hy:%s#<C-r>h##g<left><left>')

-- Switch to NERDTree
utils.map('n', 'nt', '<cmd>NERDTreeFocus<cr>')
utils.map('n', 'nf', '<cmd>NERDTreeFind<cr>')

-- Telescope
utils.map('n', 'ff', '<cmd>Telescope find_files<cr>')
utils.map('n', 'fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', 'fb', '<cmd>Telescope buffers<cr>')
utils.map('n', 'fh', '<cmd>Telescope help_tags<cr>')

-- Unbind arrow keys
utils.map('n', '<up>', '<nop>')
utils.map('n', '<down>', '<nop>')
utils.map('n', '<left>', '<nop>')
utils.map('n', '<right>', '<nop>')

-- _ to beginning
utils.map('n', '_', '^')

-- Quickly enter :!
utils.map('n', '!', ':!')




