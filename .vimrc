set nocompatible                              " get out of vi compatibility mode
syntax on                                     " syntax highlighting
filetype plugin indent on                     " load filetype plugins/indent settings
set autochdir                                 " always switch to the current file directory
set backspace=indent,eol,start                " make backspace a more flexible
set ttyfast                                   " optimize for fast terminal connections
set backup                                    " make backup files
set backupdir=~/.vim/backup                   " where to put backup files
set directory=~/.vim/swap                     " directory to place swap files in
if exists("&undodir")                         "
	set undodir=~/.vim/undo                   " directory for undo
endif                                         "
set cursorline                                " highlight cursor line
set noerrorbells                              " don't make noise
set wildmenu                                  " turn on command line completion wild style
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,   " ignore these list file extensions
               \*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest                     " turn on wild mode huge list
set incsearch                                 " highlight as you type you search phrase
set laststatus=2                              " always show the status line
set lazyredraw                                " do not redraw while running macros
set linespace=0                               " don't insert any extra pixel lines betweens rows
set list                                      " we do what to show tabs, to ensure we get them out of my files
set listchars=tab:▸\ ,trail:·                 " show tabs and trailing spaces
set showmatch                                 " show matching brackets
set matchtime=5                               " how many tenths of a second to blink matching brackets for
set hlsearch                                  " do not highlight searched for phrases
set nostartofline                             " leave my cursor where it was
"set number                                    " turn on line numbers
set numberwidth=5                             " We are good up to 99999 lines
set ruler                                     " Always show current positions along the bottom
set scrolloff=10                              " Keep 10 lines (top/bottom) for scope
set shortmess=aOstT                           " shortens messages to avoid 'press a key' prompt
set showcmd                                   " show the command being typed
set report=0                                  " report back on all changes
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

set completeopt=                              " don't use a pop up menu for completions
set expandtab                                 " no real tabs please!
set ignorecase                                " case insensitive search by default
set nowrap                                    " do not wrap line
set shiftround                                " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase                                 " if there are caps, go case-sensitive
set shiftwidth=4                              " auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=4                             " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set tabstop=8                                 " real tabs should be 8, and they will show with set list on
set magic                                     " Set magic on, for regular expressions
set autoindent                                " Set autoindent
set smartindent                               " Set smart indent
set copyindent                                " use existing indents for new indents
set preserveindent                            " save as much indent structure as possible
set showmode                                  " show the current mode
set title                                     " show title in the window bar

"Fix some typos
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>