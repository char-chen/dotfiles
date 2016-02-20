set nu
set ruler
set laststatus=2
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set background=light
set hlsearch
syntax enable
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
