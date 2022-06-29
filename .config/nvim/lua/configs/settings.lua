vim.cmd([[ syntax on ]])
vim.cmd([[ set nu ]])
vim.cmd([[ set tabstop=4 ]])
vim.cmd([[ set softtabstop=4 ]])
vim.cmd([[ set shiftwidth=4 ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ set smarttab ]])
vim.cmd([[ set hidden ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set ignorecase ]])
vim.cmd([[ set smartcase ]])
vim.cmd([[ set scrolloff=5 ]])
vim.cmd([[ set signcolumn=yes ]])
vim.cmd([[ set cmdheight=2 ]])
vim.cmd([[ set updatetime=100 ]])
vim.cmd([[ set encoding=utf-8 ]])
vim.cmd([[ set nobackup ]])
vim.cmd([[ set nowritebackup ]])
vim.cmd([[ set splitright ]])
vim.cmd([[ set splitbelow ]])
vim.cmd([[ set autoread ]])
vim.cmd([[ filetype on]])
vim.cmd([[ filetype plugin on ]])
vim.cmd([[ filetype indent on ]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[ set bg=dark ]])
vim.cmd([[ set termguicolors ]])


vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent_side = 0
vim.cmd([[ colorscheme tokyonight ]])


vim.cmd([[ let extension = expand('%:e') ]])

