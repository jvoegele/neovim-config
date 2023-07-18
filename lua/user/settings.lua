local set = vim.opt

-- Line numbers and other visual guidelines
set.number = true
set.relativenumber = true
set.colorcolumn = '100,120'
set.cursorline = true

-- Search settings
set.ignorecase = true
set.smartcase = true

-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

-- Completion options
set.wildmenu = true
set.wildmode = 'list:longest'
set.wildignore:append('*/tmp/*,*.so,*.swp,*.zip,*.beam,*/_build/*')

-- Folding options
set.foldlevelstart = 99
set.foldmethod = 'indent'

-- Miscellaneous
set.scrolloff = 1
set.list = true -- Highlights tabs and trailing spaces
set.listchars = {tab = '▸ ', trail = '·'}

-- Set grep default grep command with ripgrep
vim.opt.grepprg = 'rg --vimgrep --follow'
