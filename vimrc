nnoremap <esc> :noh<return><esc>
setlocal spell spelllang=en

if has("gui_running")
  set lines=76 columns=140
endif

" Use pathogen to easily modify the runtime path to include all plugins under
" the ~/.vim/bundle directory
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden " Allow buffers to be hidden and not closed
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set undofile	  " Persistently stores the undo tree
set relativenumber	" Show line numbers in terms of distance from the current line

" use <leader>w to strip all trailing whitespace in a file
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

" Enable syntax highlighting
syntax on
filetype plugin indent on

" Use F2 to switch to paste mode
set pastetoggle=<F2>

" Enable mouse use in the terminal
set mouse=a

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use sudo to give privileges to a already opened file
cmap w!! w !sudo tee % >/dev/null
