set nocompatible                        " Disable vi compatibility (emulation of old bugs)
set autoindent                          " Use indentation of previous line
set smartindent                         " Use intelligent indentation for C
set number                              " Turn line numbers on
set showmatch                           " Highlight matching braces
set comments=sl:/*,mb:\ *,elx:\ */      " Intelligent comments
set hlsearch                            " Highlight search terms
set incsearch                           " Find as you type search
set ruler
set laststatus=2
set background=dark
set backspace=2                         " Use a dark scheme
set noerrorbells
set splitbelow                          " Horizontal windows always split below
set splitright                          " Vertical windows always split right
set scrolloff=5
set colorcolumn=80                      " Set ruler at 80
set tags=tags;/                         " Easy tags
set clipboard=unnamed                   " Copy to system clipboard when you yank

" configure tabwidth and insert spaces instead of tabs
set tabstop=4                           " Tab width is 4 spaces
set shiftwidth=4                        " Indent also with 4 spaces
set expandtab                           " Expand tabs to spaces
set cursorline                          " highlight the current line
"set mouse=a                             " Nice scrolling
set ttymouse=xterm2

let g:solarized_termcolors=16
colorscheme solarized

syntax on                               " Turn syntax highlighting on

match ErrorMsg /\s\+\%$\@<!$/

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
