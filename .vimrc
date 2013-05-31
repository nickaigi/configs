" Use Vim settings, rather than Vi settings
" This must be first, because it changes other options as a side effect
set nocompatible

filetype off                   " required!


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'Valloric/YouCompleteMe'

"
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...


filetype plugin indent on     " required!

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" do incremental searching
set incsearch

" show line numbers
set nu

" use spaces instead of tabs
set expandtab

" insert 4 spaces whenever the tab key is pressed
set tabstop=4

" set indentation to 4 spaces
set shiftwidth=4

" highlight search terms
set hlsearch

"Ignore Case during searches
set ic

" start new line at the same indentation level
set autoindent

" syntax highlighting
syntax enable
