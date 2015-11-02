execute pathogen#infect()
set nocompatible
set laststatus=2
set expandtab
set shiftwidth=2
set splitbelow
set splitright
syntax enable
filetype plugin on
filetype indent on

set statusline=                   "clear"
set statusline+=%<\               "cut"
set statusline+=%-40f\            "file path"
set statusline+=%=%1*%y%*%*\      "[file type]"
set statusline+=%10((%l,\ %c)%)\  "(line, column)"
set statusline+=%P                "percentage of file"

if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

call plug#begin('~/.vim/plugged')
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
call plug#end()
