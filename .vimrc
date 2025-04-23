set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdcommenter'

Plugin 'airblade/vim-gitgutter'

Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()            " required
filetype plugin indent on    " required

" Auto default settings
set number
hi CursorLine     cterm=NONE ctermbg=lightgray ctermfg=blakc guibg=lightgray guifg=black
hi CursorColumn   cterm=NONE ctermbg=lightgray ctermfg=blakc guibg=lightgray guifg=black

" enable vim syntax highlighting
syntax enable
" show existing tab with 4 spaces (set ts=4) width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Strip whitespace on File save
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

" Set verilog file indent to 2
autocmd BufRead,BufNewFile   *.sv set local tabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile   *.v set local tabstop=2 shiftwidth=2 expandtab
