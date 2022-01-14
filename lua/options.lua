vim.g.mapleader = ' ' 
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.number = true

vim.api.nvim_command[[
  autocmd ColorScheme * highlight NonText guifg=bg
]]
-- Colorscheme Settings
vim.cmd('colorscheme NeoSolarized') 
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd([[
augroup filetype_jsx
    autocmd!
    autocmd FileType javascript set filetype=javascriptreact
augroup END
]])
