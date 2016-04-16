set nu
set ruler
set laststatus=2
"set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set background=light
set hlsearch
set backspace=2
set noerrorbells
set scrolloff=5
set autoindent
set smartindent

match ErrorMsg /\s\+\%$\@<!$/

au BufRead,BufNewfile Makefile set ts=4 sw=4 noexpandtab

syntax enable

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
