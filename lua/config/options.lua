-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.guifont = "SauceCodePro Nerd Font Mono:13"

-- Line numbers and other visual guidelines
opt.number = true
opt.relativenumber = true
opt.colorcolumn = "100,120"
opt.cursorline = true

-- Completion options
opt.wildmenu = true
opt.wildmode = "list:longest"
opt.wildignore:append("*/tmp/*,*.so,*.swp,*.zip,*.beam,*/_build/*")

-- Folding options
opt.foldlevelstart = 99
opt.foldmethod = "indent"

-- Miscellaneous
opt.scrolloff = 1
opt.list = true -- Highlights tabs and trailing spaces
opt.listchars = { tab = "▸ ", trail = "·" }
