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
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
" End Vundle
call vundle#end()

filetype plugin indent on

" -----------------
"  Key Mappings
"  ----------------
map <C-n> :NERDTreeToggle<CR>

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
"  Copy Paste Config
" -----------------
set clipboard=unnamed

" -----------------
"  Syntastic Config
" -----------------
let g:syntastic_enable_signs=1 
let g:syntastic_auto_jump=1
let g:syntastic_javascript_checkers=['eslint']
let g:javascript_plugin_jsdoc=1
let g:jsx_ext_required = 0
" -----------------
"  Font
" -----------------
set guifont=Monaco:h30

" -----------------
" Color Schema
" -----------------

colorscheme afterglow 

" ----------------
"  Line Numbers
" ----------------
set number

" ----------------
"  emmet-vim config
" ----------------
let g:user_emmet_install_global = 0
autocmd FileType html,css,eruby EmmetInstall
