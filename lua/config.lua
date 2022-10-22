-- nvim tree stuff
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- ok now back to ordinary stuff
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.scrolloff = 20
--set no wrap for no wrapping lines when they go off screen
vim.opt.wrap = true

-- autocompletion..kinda
vim.opt.wildmenu = true
vim.opt.colorcolumn = [[80]]
-- vim.opt.laststatus = 3
vim.opt.mouse=''

vim.o.background = 'dark'
vim.cmd [[colo gruvbox]]
vim.cmd [[set path+=./**]]
-- add some highlight on yank candy
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank(
            { igroup="IncSearch", timeout=150, on_visual=false }
        )
    end,
})
-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
    command = '%s/\\s\\+$//e',
})
vim.cmd [[highlight WinSeparator guibg=None]]


