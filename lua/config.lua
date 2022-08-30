vim.opt.expandtab=true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
--set no wrap for no wrapping lines when they go off screen

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.scrolloff = 20
vim.opt.wrap = false

-- autocompletion..kinda
vim.opt.wildmenu = true
vim.opt.colorcolumn=[[80]]

vim.o.background = 'dark'
vim.cmd [[colo gruvbox]]
vim.cmd [[set path+=./**]]
-- add some highlight on yank candy
vim.cmd [[au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=false}]]
