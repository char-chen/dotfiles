" For Vundle
set nocompatible                        " Disable vi compatibility (emulation of old bugs)
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

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
set linespace=0                         " No extra spaces between rows
set splitbelow                          " Horizontal windows always split below
set splitright                          " Vertical windows always split right
set scrolloff=5
set colorcolumn=80                      " Set ruler at 80
set tags=tags;/                         " Easy tags
set clipboard=unnamed                   " Copy to system clipboard when you yank
set cursorline                          " Highlight the current line
"set mouse=a                             " Enable mouse use in all modes
set ttymouse=xterm2
set ttyfast                             " Send more characters for redraws

" configure tabwidth and insert spaces instead of tabs
set tabstop=4                           " Tab width is 4 spaces
set shiftwidth=4                        " Indent also with 4 spaces
set expandtab                           " Expand tabs to spaces

let g:airline_theme = "powerlineish"
let g:airline_powerline_fonts = 1
let g:solarized_termcolors=16
colorscheme solarized

syntax on                               " Turn syntax highlighting on

match ErrorMsg /\s\+\%$\@<!$/

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"   Slow multiple_cursors & YCM
function! Multiple_cursors_before()
    let g:ycm_auto_trigger = 0
endfunction

function! Multiple_cursors_after()
    let g:ycm_auto_trigger = 1
endfunction

let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

let g:ycm_min_num_of_chars_for_completion               = 2
let g:ycm_auto_trigger                                  = 1
let g:ycm_collect_identifiers_from_tags_files           = 1
let g:ycm_autoclose_preview_window_after_completion     = 1
let g:ycm_autoclose_preview_window_after_insertion      = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
