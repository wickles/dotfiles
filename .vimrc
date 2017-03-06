" .vimrc
" Readme: http://vimdoc.sourceforge.net/htmldoc/options.html for details


" Pathogen: run plugins from .vim/bundle/
"execute pathogen#infect()
" Deprecated in favor of vim-plug plugin manager


" Vim_plug: plugin manager | https://github.com/junegunn/vim-plug
" To update, grab latest plug.vim from
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" vim-plug setup begin
call plug#begin('~/.vim/bundle')

" Declare plugins here

" Large colorschemes collection from Github
"Plug 'flazz/vim-colorschemes'

" solarized vim colors from Github
Plug 'altercation/vim-colors-solarized'

" Use tabs for indent, spaces for alignment
"Plug 'vim-scripts/Smart-Tabs'

" Pasting in Vim with indentation adjusted to destination context
Plug 'sickill/vim-pasta'

" Visually display indent levels
Plug 'nathanaelkane/vim-indent-guides'

" Python enhanced syntax highlighting
Plug 'hdima/python-syntax'
let python_highlight_string_formatting = 1

" C++ enhanced syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Add plugins to &runtimepath
call plug#end()
" vim-plug setup end

" Commands:
" PlugInstall [name ...] [#threads]	Install plugins
" PlugUpdate [name ...] [#threads]	Install or update plugins
" PlugClean[!]	Remove unused directories (bang version will clean without 
" 	prompt)
" PlugUpgrade	Upgrade vim-plug itself
" PlugStatus	Check the status of plugins
" PlugDiff	Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path]	Generate script for restoring the 
" 	current snapshot of the plugins


" Use indentation scripts located in the 'indent'
" folder of your vim installation.
filetype plugin indent on

" syntax highlighting?
syntax enable

" Set number of colors supported
set t_Co=256
"set t_Co=88


" Configure color scheme:
"
" When set to "dark", Vim will try to use colors that look
" good on a dark background. When set to "light", Vim will
" try to use colors that look good on a light background.
" Any other value is illegal.
set background=dark

" solarized specific settings
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_visibility="normal"
colorscheme solarized


" Enable the use of the mouse.
set mouse=a

" enable native clipboard support
" on mac: +clipboard -xterm_clipboard ==> use 'unnamed'
" on linux: +clipboard +xterm_clipboard ==> use 'unnamedplus'
set clipboard=unnamed

" nicer tab completion for :edit and such
set wildmode=longest,list,full
set wildmenu

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
set fileencodings=utf-8

" Show whitespace, all by default. Modify the 'listchars' command to adjust
set list
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<

" Show line numbers.
set number

" Show the line and column number of the cursor position,
" separated by a comma.
set ruler

" Show (partial) command in status line.
set showcmd

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
set backspace=indent,eol,start
" same as:
"set backspace=2

" Number of spaces that a <Tab> in the file counts for.
set tabstop=4

" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
" Does not affect start-of-line indentation when expandtab is enabled.
"set softtabstop=2

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

" Use the appropriate number of spaces to insert a <Tab>.
" Spaces are used in indents with the '>' and '<' commands
" and when 'autoindent' is on. To insert a real tab when
" 'expandtab' is on, use CTRL-V <Tab>.
set expandtab

" When on, a <Tab> in front of a line inserts blanks
" according to 'shiftwidth'. 'tabstop' is used in other
" places. A <BS> will delete a 'shiftwidth' worth of space
" at the start of the line.
set smarttab

" Copy indent from current line when starting a new line
" (typing <CR> in Insert mode or when using the "o" or "O"
" command).
set autoindent

" preserve line indentation
set copyindent
set preserveindent

" Maximum width of text that is being inserted. A longer line will
" be broken after white space to get this width.
"set textwidth=79

" comma separated list of screen columns that are highlighted with
" ColorColumn. Useful to align text.
set colorcolumn=80

" This is a sequence of letters which describes how automatic
" formatting is to be done.
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" c         Auto-wrap comments using textwidth, inserting
"           the current comment leader automatically.
" q         Allow formatting of comments with "gq".
" r         Automatically insert the current comment leader
"           after hitting <Enter> in Insert mode.
" t         Auto-wrap text using textwidth (does not apply
"           to comments)
set formatoptions=q

