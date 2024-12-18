-- vim.cmd("let g:netrw_liststyle = 3")


local opt = vim.opt

opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"

opt.splitright = true
opt.splitbelow = true
