-- SPACE is your leader!
vim.g.mapleader = ' '

-- Split window handling
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<leader>w', '<C-w>v<C-w>l')
vim.keymap.set('n', '<leader>x', '<C-w>s<C-w>j')

-- Tab navigation
vim.keymap.set('n', 'tk', ':tabfirst<CR>')
vim.keymap.set('n', 'tl', ':tabnext<CR>')
vim.keymap.set('n', 'th', ':tabprev<CR>')
vim.keymap.set('n', 'tj', ':tablast<CR>')
vim.keymap.set('n', 'tt', ':tabedit<SPACE>')
vim.keymap.set('n', 'tn', ':tabnext<SPACE>')
vim.keymap.set('n', 'tm', ':tabm<SPACE>')
vim.keymap.set('n', 'td', ':tabclose<CR>')

-- Terminal mode keymaps
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-v><ESC>', '<ESC>')

-- Clear highlighted search results.
vim.keymap.set('n', '<leader><SPACE>', ':noh<CR>')

-- Strip all trailing whitespace.
vim.keymap.set('n', '<leader>W', ':%s/\\s\\+$//<cr>:let @/=\'\'<CR>')
