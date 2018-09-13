"Last modified: 2018-09-13 15:08
"Author: Bernhard Brunner
"License: GNU

let mapleader=","
let maplocalleader=","

set nocompatible
set background=dark
colorscheme jellybeans
syntax on
set mouse=a
set mousemodel=popup
set browsedir=buffer
set number
set hidden
set backspace=indent,eol,start
set hlsearch

"disable middlemouse paste
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

set modeline
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set showmatch
set ignorecase
set smartcase
set history=1000
set undolevels=1000
set title
set titleold=
set titlestring=VIM:\ %F
set pastetoggle=<F2>
set showbreak=↪
set laststatus=2

filetype plugin on
filetype indent on

"persistent undo
if has('persistent_undo')
    let &undodir=expand('$HOME/.vimundo')
    call system('mkdir -p ' . &undodir)
    set undofile
endif

" ==========================================================================
" Start up pathogen
" ==========================================================================
silent! call pathogen#infect()

" ==========================================================================
" airline
" ==========================================================================
let g:airline#extensions#tabline#enabled = 1
let g:AirlineTheme='dark'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" airline unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"if exists('g:loaded_syntastic_log_autoload')
    " Syntastical settings
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    "let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 1

	let g:syntastic_error_symbol = "\u2717"
	let g:syntastic_warning_symbol = "\u26A0"
	let g:syntastic_enable_balloons = 1
	let g:syntastic_auto_jump = 3

    let g:syntastic_c_checkers=['gcc', 'cppcheck']
    let g:syntastic_c_compiler_options = "-Wall -Wextra -Wpedantic"
    let g:syntastic_c_cppcheck_args = "--enable=all --suppress=unusedFunction"
 
    let g:syntastic_cpp_checkers=['gcc', 'cppcheck']
    "let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
    "let g:syntastic_cpp_compiler = "g++"

    " syntastic standards, checked with phpcs -i
    " Zend, PEAR, MySource, PHPCS, PSR1, Squiz and PSR2 
    let g:syntastic_php_phpcs_args = "--standard=PHPCS"
    "
    " To set the system wide standard use 
    " > phpcs --config-set default_standard PHPCS
"endif
