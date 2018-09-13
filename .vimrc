"Last modified: 2017-11-15 13:44
"Author: Bernhard Brunner
"user .vimrc file, customize this to your liking
"the system wide /etc/vimrc already contains the following, customize to your liking

" set nocompatible
" set background=dark
" colorscheme jellybeans
" syntax on
" set mouse=a
" set mousemodel=popup
" set browsedir=buffer
" set hidden
" set backspace=indent,eol,start
" set hlsearch
" 
" "disable middlemouse paste
" map <MiddleMouse> <Nop>
" imap <MiddleMouse> <Nop>
" 
" set modeline
" 
" set smartindent
" set tabstop=4
" set shiftwidth=4
" set shiftround
" set expandtab
" set showmatch
" set ignorecase
" set smartcase
" set history=1000
" set undolevels=1000
" set title
" set titleold=
" set titlestring=VIM:\ %F
" set pastetoggle=<F2>
" set showbreak=↪
" set laststatus=2
" 
" filetype plugin on
" filetype indent on
" 
""persistent undo
"if has('persistent_undo')
"    let &undodir=expand('$HOME/.vimundo')
"    call system('mkdir -p ' . &undodir)
"    set undofile
"endif

" " ==========================================================================
" " Start up pathogen
" " ==========================================================================
" call pathogen#infect()
" 
" "airline
" let g:airline#extensions#tabline#enabled = 1
" let g:AirlineTheme='dark'
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" 
" " airline unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'


