local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local term_opts = { silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd('nnoremap <leader>e :lua require(\'tree\').toggle()<CR>')

-- Lsp Keymas
vim.cmd('nnoremap gd :lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <leader>f :Neoformat<CR>')

vim.cmd('nnoremap <leader>ff <cmd>lua require(\'telescope.builtin\').find_files()<CR>')
vim.cmd('nnoremap <leader>fg <cmd>lua require(\'telescope.builtin\').live_grep()<CR>')
vim.cmd('nnoremap <leader>fb <cmd>lua require(\'telescope.builtin\').buffers()<CR>')
vim.cmd('nnoremap <leader>fm <cmd>lua require(\'telescope\').extensions.media_files.media_files()<CR>')

-- Resize windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<A-k>", "<Esc>:m .-2<CR>", opts)
keymap("n", "<A-j>", "<Esc>:m .+1<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
