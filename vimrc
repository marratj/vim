set shiftwidth=4
set tabstop=4
set expandtab
set ai " Auto indent
set si " Smart indent
colorscheme codedark
set t_Co=256
set t_ut=
colorscheme codedark

" Enable folding
set foldmethod=indent
set foldlevel=99

" set indentation for Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
