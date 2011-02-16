" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2002 May 28
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set vb
set ai

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  "colorscheme az
  "colorscheme azwhite
  colorscheme azwhite2
  set completeopt=longest,menu
  set wildmode=list:longest,list:full
  set hlsearch
  set guicursor=a:blinkon0-block-Cursor/lCursor
endif

if has("gui_running")
  "colorscheme vividchalk
  "highlight NonText guibg=#060606
  "highlight Folded guibg=#0A0A0A guifg=#9090D0
  "colorscheme blackboard
  colorscheme mustang
  set number
  set numberwidth=5
  set fuoptions=maxvert,maxhorz
  set guifont=Consolas:h13.00
endif


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  filetype plugin on
  source $VIMRUNTIME/macros/matchit.vim

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

endif " has("autocmd")

set tags=./tags,../tags,../../tags
let Tlist_Ctags_Cmd =  "/usr/local/bin/exctags"


let mapleader = ","

vmap <Leader>b :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p
vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p
vmap <Leader>h :<C-U>!hg blame -fu <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p

"Tell Vim to only use the currently opened files and ctags when finding keywords
set complete=.,t,w
set modelines=10
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Settings from http://bitbucket.org/garybernhardt/dotfiles/src/tip/.vimrc
" Keep more context when scrolling off the end of a buffer
set scrolloff=3
set showmatch

" Shortcut to rapidly toggle `set list`
nmap <Leader>l :set list!<CR>
nmap <Leader>r "bp"bp

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

function! <SID>StripTrailingWhitespace()
	let _s = @/
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	let @/ = _s
	call cursor(l, c)
endfunction
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespace()<CR>

" Switch between tabs with Cmd-Shift-Left/Right
map <D-S-Left> gT
map <D-S-Right> gt
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

map <Leader>ew :e <C-R>=expand('%:p:h') . "/"<CR>

nmap <silent> <leader>s = :set spell!<CR>
set spelllang=en_gb

" show name of a file being edited in window/tab's title
set title
