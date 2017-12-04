set encoding=utf8

"Disable backups and swapfiles to save Dropbox uploads
set nobackup
set nowb
set noswapfile

set number
"Keep cursor away from the edges of screen
set so=14

let maplocalleader=','
call pathogen#infect()
call pathogen#helptags()

set t_Co=256
colorscheme molokai
set background=dark

syntax on
filetype on
filetype plugin on
filetype plugin indent on

set autoindent
set shiftwidth=2
set smarttab
set nowrap
set autoread
set cindent

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

autocmd! BufNewFile,BufRead *.ino,*.pde setlocal ft=arduino

set wildmode=longest,list,full
set wildmenu

"Highlight cursor line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  au WinLeave * setlocal nocursorline
  au WinLeave * setlocal nocursorcolumn
augroup END

"Added to allow backspace to work with YouCompleteMe
set backspace=2

"Status line setup
set laststatus=2
" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

"Used to show make results in the quickfix window for typescript
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"Add .pdl to python syntax highlight
au BufNewFile,BufRead *.pdl set filetype=python

set tabstop=4
set expandtab 
