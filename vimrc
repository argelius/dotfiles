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

" Unbind arrow
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" Move in wrapped lines
nnoremap <C-k> gk
nnoremap <C-j> gj

" Move line
nnoremap <C-J> :m+<CR>==
nnoremap <C-K> :m-2<CR>==

" Move cursor
nnoremap K H
nnoremap H J
nnoremap J L

" Clipboard
set clipboard=unnamed

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
let g:syntastic_typescript_tsc_args=['--version']
