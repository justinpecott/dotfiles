set nocompatible               " use Vim defaults, not old vi behavior
syntax enable                  " enable syntax processing
filetype plugin indent on      " enable filetype detection, plugins, and indent rules
if has('termguicolors')
  set termguicolors            " use true color in supported terminals
endif
colorscheme onedark            " onedark color scheme



set backspace=indent,eol,start " fix backspace on mac
set tabstop=2                  " number of visual spaces per TAB
set softtabstop=2              " number of spaces in tab when editing
set expandtab                  " tabs are spaces
set showcmd                    " show command in bottom bar
set cursorline                 " highlight the current line
set lazyredraw                 " redraw only when we need to
set showmatch                  " highlight matching [{()}]
set incsearch                  " search as characters are entered
set ignorecase                 " case-insensitive search by default
set smartcase                  " but case-sensitive when using uppercase
set hlsearch                   " highlight matches
set backup                     " keep a backup while writing files
set writebackup                " safer writes in case of interruption
set swapfile                   " enable swap for crash recovery
set undofile                   " persistent undo across sessions
set backupdir=~/.vim/tmp//,/tmp// " keep backup files out of project dirs
set directory=~/.vim/tmp//,/tmp// " keep swap files out of project dirs
set undodir=~/.vim/tmp//,/tmp//   " keep undo files out of project dirs
if !isdirectory(expand('~/.vim/tmp'))
  call mkdir(expand('~/.vim/tmp'), 'p')
endif
set number                     " show line numbers
set hidden                     " allow switching buffers with unsaved changes


"
" Simple functional Vim status line
" Based on: https://gist.github.com/meskarune/57b613907ebd1df67eb7bdb83c6e6641
"

" Status line colors
augroup JustinStatusline
  autocmd!
  autocmd InsertEnter * highlight StatusLine guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
  autocmd InsertLeave * highlight StatusLine guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
augroup END
highlight StatusLine guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
let g:currentmode={
    \ 'n'       : 'Normal',
    \ 'no'      : 'Normal·Operator Pending',
    \ 'v'       : 'Visual',
    \ 'V'       : 'V·Line',
    \ "\<C-v>" : 'V·Block',
    \ 's'       : 'Select',
    \ 'S'       : 'S·Line',
    \ "\<C-s>" : 'S·Block',
    \ 'i'       : 'Insert',
    \ 'R'       : 'Replace',
    \ 'Rv'      : 'V·Replace',
    \ 'c'       : 'Command',
    \ 'cv'      : 'Vim Ex',
    \ 'ce'      : 'Ex',
    \ 'r'       : 'Prompt',
    \ 'rm'      : 'More',
    \ 'r?'      : 'Confirm',
    \ '!'       : 'Shell',
    \ 't'       : 'Terminal'
    \}

function! CurrentMode() abort
  return toupper(get(g:currentmode, mode(), mode()))
endfunction

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Column number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{CurrentMode()}\                     " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
