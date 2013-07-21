" Use Vim settings, rather than Vi settings
set nocompatible

filetype off                   " required!


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'skammer/vim-css-color'
Bundle 'pangloss/vim-javascript'

" For vim 74a
:let &runtimepath.=',/usr/share/vim/vim74a' 
:let $VIMRUNTIME = "/usr/share/vim/vim74a"

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

set cmdheight=1 "The commandbar height

set showmatch "Show matching bracets when text indicator is over them
