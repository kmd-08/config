colorscheme peachpuff

filetype plugin indent on
highlight LineNr ctermfg=gray
highlight Comment ctermfg=green
syntax enable

set fileformats=unix,dos,mac
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set wildignore=.docx,.jpg,.png,.gif,.pdf,.pyc,.exe,.flv,.img,.xlsx,.o,.obj,.git,.rbc,.pyc,__pycache__
set wildmode=list:longest
set wildmenu
set listchars=tab:›\ ,trail:•
set list
set viminfo='100,<9999,s100
set shell=/bin/bash
set backspace=indent,eol,start
set ignorecase
set nowrap
set autoread
set nohlsearch
set incsearch
set noerrorbells
set report=0
set mouse=a
set number
set ttyfast

augroup cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

augroup WrapFileTypes
  autocmd!
  autocmd filetype markdown setlocal wrap
  autocmd filetype tex setlocal wrap
  autocmd filetype plaintex setlocal wrap 
  autocmd filetype html setlocal wrap
augroup END

au VimLeave * :!clear

hi StatusLine ctermfg=NONE ctermbg=black cterm=NONE
hi StatusLineNC ctermfg=NONE ctermbg=black cterm=NONE

set laststatus=2
set statusline +=%1*\ %n\ %*
set statusline +=%5*%{&ff}%*  
set statusline +=%4*\ %<%f%*\  
set statusline +=%3*%y%*  
set statusline +=%1*%=%5l%*
set statusline +=%2*/%L%*
set statusline +=%1*%4v\%*
set statusline +=%2*0x%04B\ %*

call plug#begin('~/.vim/plugins')
Plug 'tpope/vim-fugitive'
call plug#end()
