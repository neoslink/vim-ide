set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"****************************

" airline - show status file
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" bufferline - show buffer list in the command bar
Plugin 'bling/vim-bufferline'

" fugitive - add GIT commands
Plugin 'tpope/vim-fugitive'

" signify - allow indicate added, modified and removed lines in any file
Plugin 'mhinz/vim-signify'

" gitgutter - show difference using 'git diff' and it shows whether each line
" has been added, modified or removed lines.
Plugin 'airblade/vim-gitgutter'

" nerdtree - tree explorer the filesystem
Plugin 'scrooloose/nerdtree'

" vim-nerdtree-tabs - allows NERDtree in one panel independent of tabs
Plugin 'jistr/vim-nerdtree-tabs'

" tagbar - allows browse in the tags of the file
Plugin 'majutsushi/tagbar'

" php autocomplete - support to php
Plugin 'shawncplus/phpcomplete.vim'

" fuzzysearch - search by patterns
Plugin 'ggVGc/vim-fuzzysearch'

"****************************

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""
" variables "
"""""""""""""

set colorcolumn=80

"set colors
syntax on
set t_Co=256
colorscheme default

" Show matching (brackets & parenthesis)
set showmatch

" No backup file
set nobackup

" Enable mouse in the console
"set mouse=a

" Show line numbers
set number

" Set encoding utf-8
set encoding=utf-8

" Airline
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1

" Airline theme
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

 " unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.crypt = '🔒'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.maxlinenr = '☰'
 let g:airline_symbols.maxlinenr = ''
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.spell = 'Ꞩ'
 let g:airline_symbols.notexists = '∄'
 let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme='murmur'

" Buffers
nmap <C-n> :bnext!<CR>
nmap <C-p> :bprevious!<CR>
cnoremap qq Bdelete

" Split window
nmap <C-o> :sp<CR>
nmap <C-e> :vs<CR>

" GitGutter
let g:gitgutter_max_signs = 2000
let g:gitgutter_realtime = 0
let g:gitgutter_highlight_lines = 1
let g:gitgutter_eager = 1

" tagbar define command
nmap <F8> :TagbarToggle<CR>

" NerdTree
nmap <F3> :NERDTreeToggle<CR>

" NERDTree window width by hostname (different screen resolution)
if hostname() == 'howl'
     let g:NERDTreeWinSize = 20
else
     let g:NERDTreeWinSize = 40
endif

let g:NERDTreeWinPos = "left"
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc$', '\~$']

" FuzzySearch - options
let g:fuzzysearch_prompt = 'fuzzy /'
let g:fuzzysearch_hlsearch = 1
let g:fuzzysearch_ignorecase = 1
let g:fuzzysearch_max_history = 30
let g:fuzzysearch_match_spaces = 0
