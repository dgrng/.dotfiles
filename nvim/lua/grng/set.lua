vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.relativenumber = true
vim.opt.guicursor = ""
vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.opt.wildignore:append { '*/node_modules/*', '*.pyc', '*_build/*', '**/.git/*' }
vim.opt.title = true
