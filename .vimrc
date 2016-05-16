"settings"
set nocompatible
set laststatus=2
set expandtab
set shiftwidth=2
set splitbelow
set splitright
set hlsearch
syntax enable
filetype plugin on
filetype indent on

"mappings"
nnoremap <CR> :noh<CR><CR>

"status line"
set statusline=                   "clear"
set statusline+=%<\               "cut"
set statusline+=%-40f\            "file path"
set statusline+=%=%1*%y%*%*\      "[file type]"
set statusline+=%10((%l,\ %c)%)\  "(line, column)"
set statusline+=%P                "percentage of file"

"detect trailing whitespace"
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

"manage plugins"
call plug#begin('~/.vim/plugged')
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static'
Plug 'onur/vim-motivate'
call plug#end()
