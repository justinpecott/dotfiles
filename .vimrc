" Sets how many lines of history VIM has to remember
set history=700
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
"Always show current position
set ruler
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Show matching brackets when text indicator is over them
set showmatch 
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Enable syntax highlighting
syntax enable 
" Turn backup off, since most stuff is in git anyway...
set nobackup
set nowb
set noswapfile
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Toggle paste with F2
set pastetoggle=<F2>
