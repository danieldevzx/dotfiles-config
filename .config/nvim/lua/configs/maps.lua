vim.cmd([[ nnoremap <C-s> :w<CR> ]])
vim.cmd([[ inoremap <C-s> <Esc>:w<CR>l ]])
vim.cmd([[ vnoremap <C-s> <Esc>:w<CR> ]])

vim.cmd([[ map <C-a> ggVG ]])

vim.cmd([[ nnoremap <C-e> :NvimTreeToggle<CR>]])
vim.cmd([[ nnoremap <C-f> :Telescope live_grep<CR>]])
