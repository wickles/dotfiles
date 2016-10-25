" .vimrc
" see: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
set fileencodings=utf-8
" blah

" Run pathogen plugins
execute pathogen#infect()

" Show whitespace, all by default. Modify the 'listchars' command to adjust
set list
set listchars=tab:\|\ ,trail:~

" Number of spaces that a <Tab> in the file counts for.
set tabstop=4

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4


" Use the appropriate number of spaces to insert a <Tab>.
" Spaces are used in indents with the '>' and '<' commands
" and when 'autoindent' is on. To insert a real tab when
" 'expandtab' is on, use CTRL-V <Tab>.
"set expandtab

" When on, a <Tab> in front of a line inserts blanks
" according to 'shiftwidth'. 'tabstop' is used in other
" places. A <BS> will delete a 'shiftwidth' worth of space
" at the start of the line.
set smarttab

" Show (partial) command in status line.
set showcmd

" Show line numbers.
set number

" When a bracket is inserted, briefly jump to the matching
" one. The jump is only done if the match can be seen on the
" screen. The time to show the match can be set with 'matchtime'.
set showmatch

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" While typing a search command, show immediately where the
" so far typed pattern matches.
set incsearch

" Ignore case in search patterns.
set ignorecase

" Override the 'ignorecase' option if the search pattern
" contains upper case characters.
set smartcase

" Influences the working of <BS>, <Del>, CTRL-W
" and CTRL-U in Insert mode. This is a list of items,
" separated by commas. Each item allows a way to backspace
" over something.
set backspace=2

" Copy indent from current line when starting a new line
" (typing <CR> in Insert mode or when using the "o" or "O"
" command).
set autoindent

" preserve line indentation
set copyindent
set preserveindent

" Maximum width of text that is being inserted. A longer
" line will be broken after white space to get this width.
"set textwidth=79

" This is a sequence of letters which describes how
" automatic formatting is to be done.
"
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" c         Auto-wrap comments using textwidth, inserting
"           the current comment leader automatically.
" q         Allow formatting of comments with "gq".
" r         Automatically insert the current comment leader
"           after hitting <Enter> in Insert mode.
" t         Auto-wrap text using textwidth (does not apply
"           to comments)
set formatoptions=q "c,r,t

" Show the line and column number of the cursor position,
" separated by a comma.
set ruler

" When set to "dark", Vim will try to use colors that look
" good on a dark background. When set to "light", Vim will
" try to use colors that look good on a light background.
" Any other value is illegal.
set background=dark

" Enable the use of the mouse.
set mouse=a

" Use indentation scripts located in the 'indent' 
" folder of your vim installation.
filetype plugin indent on

" syntax highlighting?
syntax on



"" additional user settings

" solarized-specific settings
set t_Co=256
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme solarized

" enable native clipboard support?
" on mac: +clipboard -xterm_clipboard ==> use 'unnamed'
" on linux: +clipboard +xterm_clipboard ==> use 'unnamedplus'
set clipboard=unnamed

" nicer tab completion for :edit and such
set wildmode=longest,list,full
set wildmenu
