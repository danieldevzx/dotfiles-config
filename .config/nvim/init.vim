"-----------------------------------------------------------------------------"
"    _   _  _   _  _____ ___  ___       _            		                  "
" 	| \ | || | | ||_   _||  \/  |      | |                                    "
" 	|  \| || | | |  | |  | .  . |      | |__   _   _                          "
" 	| . ` || | | |  | |  | |\/| |      | '_ \ | | | |                         "
" 	| |\  |\ \_/ / _| |_ | |  | |      | |_) || |_| |                         "
"   \_| \_/ \___/  \___/ \_|  |_/      |_.__/  \__, |                         "
"	                                            __/ |                         "
"      	                                       |___/                          "
"                                                                             "
"                                                                             "
"      :::    ::: ::::::::::: ::::    ::: :::::::::                           "
"	   :+:   :+:      :+:     :+:+:   :+: :+:    :+:                          "
"	   +:+  +:+       +:+     :+:+:+  +:+ +:+    +:+                          "
"	   +#++:++        +#+     +#+ +:+ +#+ +#+    +:+                          "
"	   +#+  +#+       +#+     +#+  +#+#+# +#+    +#+                          "
"	   #+#   #+#      #+#     #+#   #+#+# #+#    #+#                          "
"	   ###    ### ########### ###    #### #########                           "
"                                                                             "
"                                                                             "
"									                                          "
"-----------------------------------------------------------------------------"


"-----------------------------|Leader|-----------------------------"


"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Plugins |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
call plug#begin()
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'honza/vim-snippets'
Plug 'shime/vim-livedown'
if (has("nvim"))
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif
call plug#end()


"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Global settings |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"


syntax on            " Enable syntax highlight /* Ativa a syntax

set nu               " Enable line numbers /* Ativa os numeros nas linhas

set tabstop=4        " Show existing tab with 4 spaces width /* Define o tamanho do tab para 4

set softtabstop=4    " Show existing tab with 4 spaces width /* Define o tamanho do tab para 4

set shiftwidth=4     " When indenting with '>', use 4 spaces width /* Define o tamanho do tab para 4

set expandtab        " On pressing tab, insert 4 spaces /* mesma coisa

set smarttab         " insert tabs on the start of a line according to shiftwidth /* O tab inteligente

set smartindent      " Automatically inserts one extra level of indentation in some cases /* configurar tab para cada caso

set hidden           " Hides the current buffer when a new file is openned /* ativa o Buffer dos arquivos anteriores

set incsearch        " Incremental search /* Pesquisa enquanto eu digito

set ignorecase       " Ingore case in search /* Não vai importar se ta em caps ou não na hora da pesquisa

set smartcase        " Consider case if there is a upper case character /* Desabilita o ingonrar case se colocar em maiusculo

set scrolloff=5      " Minimum number of lines to keep above and below the cursor /* Da um espaço de 'n' linhas para onde o cursor esta

set signcolumn=yes   " Add a column on the left. Useful for linting /* Linha da esquerda para mostrar coisas sobre seu codigo

set cmdheight=2      " Give more space for displaying messages /* Da espaço para linha de comandos do nvim

set updatetime=100   " Time in miliseconds to consider the changes /* O tempo em que o vim considera as config

set encoding=utf-8   " The encoding should be utf-8 to activate the font icons /* serve para funcionamento de icones no programa

set nobackup         " No backup files /* não faz backup atuamatico

set nowritebackup    " No backup files /* Retira o backup auto

set splitright       " Create the vertical splits to the right /serve para abrir o split na direita

"split = abrir um arquivo dentro do lado

set splitbelow       " Create the horizontal splits below /* abrir split em baixo

set autoread         " Update vim after file update from outside /* fazer auto update do arquivo vim

set mouse=a          " Enable mouse support /* da a posibilidade de usar o mouse no arquivo

filetype on          " Detect and set the filetype option and trigger the FileType Event /* vai detectar o tipo de arquivo

filetype plugin on   " Load the plugin file for the file type, if any /* vai poder habilitar algum plugin para cada tipo de linguagem diferente

filetype indent on   " Load the indent file for the file type, if any /* permite a indetanção diferente para cada linguagem



"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Themes |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"#----- Color scheme sonakai ----#
"#let g:sonokai_style = 'maia'
"#let g:sonokai_enable_italic = 1
"#let g:sonokai_disable_italic_comment = 0
"#let g:sonokai_diagnostic_line_highlight = 1
"#let g:sonokai_current_word = 'bold'
"#colorscheme sonokai
"#------------------------------#

"#---- Color scheme Tokyo ----#
let g:tokyonight_transparent_sidebar = 0
let g:tokyonight_style = "night"

let g:lightline = {'colorscheme': 'tokyonight'}
"let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
colorscheme tokyonight

"if (has("nvim")) "Transparent background. Only for nvim
"    highlight Normal guibg=NONE ctermbg=NONE
"    highlight EndOfBuffer guibg=NONE ctermbg=NONE
"endif


"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Tema rainbow |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
let g:rainbow_active = 1

"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Tema airline |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
let g:airline_theme = 'edge'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Ale |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
let g:ale_linters = {
\}

let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\}

let g:ale_fix_on_save = 1

"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Config NerdTree |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
"Abre pastas para navegação
nmap <C-a> :NERDTreeToggle<CR>

"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Remaps |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
"Salva com ctrl + s
nmap <C-s> :w!<CR>
" Andar entre os splits pelo ctrlh + h"left",j"up",k"down",l"right"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>

nmap tt :q<CR>
nmap tw :wq<CR>

nmap tc :!
"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Auto commands |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"

function! HighlightWordUnderCursor()
    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
        exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
    else
        match none
    endif
endfunction

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| NEOVIM |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"

if (has("nvim"))

    "¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| Telescope |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
    nmap <C-u> :Telescope find_files<CR>
    nmap <C-f> :Telescope live_grep<CR>
    nmap <C-b> :Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>

endif


"¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨| COC |¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨"
let g:coc_global_extensions = ['coc-snippets', ]

" Coc Snippets """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
