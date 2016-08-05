set nocompatible
set backspace=indent,eol,start

execute pathogen#infect()
syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized
hi Normal ctermfg=252 ctermbg=none

let g:snips_author='Andreas Argelius'
let g:snips_email='andreas@argeli.us'
let g:snips_github='https://github.com/argelius'

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" associate *.foo with php filetype
au BufRead,BufNewFile *.es6 setfiletype javascript
au BufRead,BufNewFile *.vue setfiletype html

set noswapfile

" let g:syntastic_javascript_checkers = ['eslint']
