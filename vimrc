filetype off
set nocompatible " don't be compatible with vi

" set runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Begin vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'itchyny/lightline.vim'
" End Vundle
call vundle#end()

filetype plugin indent on

" -----------------
" Spacing / Indentation
" -----------------
set nowrap		" don't wrap text
set linebreak		" don't wrap text in middle of word
set softtabstop=2	" <tab> inserts 2 spaces
set shiftwidth=2
set expandtab		" use spaces, not tabs, for autoindent/tab key
set shiftround		" rounds indent to a multiple of shiftwidth
set matchpairs+=<:>	" shows matching <> (html) as well
set lazyredraw
set ttyfast
syntax enable

" -----------------
"  Syntastic Config
" -----------------
let g:syntastic_enable_signs=1 
let g:syntastic_auto_jump=1
let g:syntastic_javascript_checkers=['eslint']

" -----------------
"  Font
" -----------------
set guifont=Monospace:h20

" -----------------
" Color Schema
" -----------------
colorscheme base16-codeschool
