"   This is the personal .vimrc file of Nickson Kaigi. 
"   While much of it is beneficial for general use, I would
"   recommend picking out the parts you want and understand,
"   as I have done from other notable vim purists
"

set nocompatible                "Use Vim settings, rather than Vi settings
                                "Be IMproved

filetype off                    "required!

" I use Vundle https://github.com/gmarik/Vundle.vim as my
" preferred plugin manager.... never got the hang of
" vim-pathogen (no offence to the pathogen community)


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'ycm-core/YouCompleteMe' 
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lervag/vimtex'
Plugin 'udalov/kotlin-vim'
Plugin 'vim/killersheep'
Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdtree'

" JS stuff
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'styled-components/vim-styled-components'
Plugin 'SirVer/ultisnips'
Plugin 'mlaursen/vim-react-snippets'
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }

call vundle#end()               " required
filetype plugin indent on       "required!

packadd! matchit      "enable matchit plugin

set backspace=indent,eol,start  "allow backspacing over everything in insert mode

set history=200                  "keep 200 lines of command line history

set ruler                       "show the cursor position all the time

set showcmd                     "display incomplete commands

set incsearch                   "do incremental searching

set nu                          "show line numbers

set expandtab                   "use spaces instead of tabs

set tabstop=4                   "insert 4 spaces whenever the tab key is pressed

set shiftwidth=4                "set indentation to 4 spaces

set hlsearch                    "highlight search terms

set ic                          "Ignore Case during searches

set autoindent                  "start new line at the same indentation level

syntax enable                   "syntax highlighting

set cmdheight=1                 "The commandbar height

set showmatch                   "Show matching bracets when text indicator is over them

set nobackup                    " do not keep backup files, it's 70's style cluttering

set noswapfile                  " do not write annoying intermediate swap files,
                                "    who did ever restore from swap files
                                "    anyway?
                                "    https://github.com/nvie/vimrc/blob/master/vimrc#L141


set ttimeoutlen=50              "Solves: there is a pause when leaving insert mode

set splitbelow                  " Horizontal splits open below current file

set splitright                  " Vertical splits open to the right of the current file

set wildmode=longest,list       " Pressing <Tab> shows command suggestions similar to pressing <Tab>
                                " in bash 
 
set nrformats-=octal            " anytime I use <C-a> to increment a number by one or <C-x> decrement a number by one
                                " vim should treat my numerals as decimals

au FocusLost *:wa               " Save files when vim loses focus

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Mappings to traverse buffer list 
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"Easy expansion of the active file directory
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"Shortcut to Mute Highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"Root permission on a file inside VIM
cmap w!! w !sudo tee >/dev/null %

syntax enable
"set background=dark
let g:solarized_termcolors=256
colorscheme gruvbox
set bg=dark

let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'

let g:ycm_global_ycm_extra_conf = '/home/mutwa/projects/.ycm_extra_conf.py'

"Apply YCM FixIt
map <F9> : YcmCompleter FixIt<CR>

" configuration variables for vim-javascript
let g:javascript_plugin_jsdoc = 1

" UltiSnips
" ================================================================
let g:UltiSnipsExpandTrigger='<c-space>'

let g:molokai_original = 1
