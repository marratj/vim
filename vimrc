set shiftwidth=4
set tabstop=4
set expandtab
set ai " Auto indent
set si " Smart indent
set t_Co=256
set t_ut=
colorscheme codedark

syntax on
set number

set  rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2

" autocmd vimenter * NERDTree

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

" set indentation for YAML files
au BufNewFile,BufRead *.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.yml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" enable pathogen
execute pathogen#infect()

" vim-terraform
let g:terraform_align=1

" set folding for Terraform
au BufNewFile,BufRead *.tf
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
