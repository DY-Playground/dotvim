" Launch Config {{{
call pathogen#infect()
call pathogen#helptags()
set nocompatible        " no vi compatibility
set encoding=utf-8
syntax enable           " enable syntax processing
:autocmd InsertEnter * set nocul
:autocmd InsertLeave * set cul
" }}}
" Colors {{{
"colorscheme badwolf
:highlight Normal ctermfg=grey ctermbg=black
set guifont=Monaco:h14
" }}}
" Misc {{{
set ttyfast             " faster redraw
set backspace=indent,eol,start
set ruler               " show cursor line and column in status bar
set visualbell          " ding
set title               " vim's status line
set wrap                " line wrapping
set textwidth=79        " text width
set formatoptions=qrn1  " quotes  
set colorcolumn=85      " colored column as a guide
au FocusLost * :wa
" }}}
" Spaces and Tabs {{{
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set shiftwidth=4
set modelines=0
filetype plugin on
filetype indent on      " load filetype-specific indent files
set autoindent
" }}}
" UI Layout {{{
set relativenumber      " show relative line numbers
set number              " show absolute line number at cursor
set wildmenu            " visual autocomplete for command menu
set wildmode=list:full  " scroll through list
set undofile            " saves undo files to ~/.vim/undo
set showcmd             " show command in bottom bar
set showmode            " show mode in bottom bar
set hidden              " manage buffers more effectively
set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set smartcase
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set showmatch
" turn off search regex handling
nnoremap / /\v
vnoremap / /\v
" remaps tab to toggling between braces
nnoremap <tab> %
vnoremap <tab> %
" }}}
" Folding {{{
set foldmethod=syntax   " default fold based on syntax, see leader shortcutss
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
" }}}
" Movement {{{
" move to beginning/end of lines
nnoremap B ^
nnoremap E $
" }}}
" Leader Shortcuts {{{
let mapleader=","       " leader is a comma
nnoremap ; :
inoremap jj <ESC>
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag
nnoremap <leader>m :set foldmethod=marker<CR>
nnoremap <leader>x :set foldmethod=syntax<CR>
" yank/copy current line, paste it below, select it, replace every char w/ =
nnoremap <leader>1 yypVr=
" insert section seperator below cursor
nnoremap <leader>2 j^i=========+=========+=========+=========+=========+=========+=========+=========+<CR><esc>
" }}}
" Backups, stored in /tmp {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
