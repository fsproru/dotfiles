" GUI Options
  set guifont=Inconsolata:h24
  set guioptions-=T               " Remove GUI toolbar
  set guioptions-=e               " Use text tab bar, not GUI
  set guioptions-=rL              " Remove scrollbars
  set notimeout                   " No command timeout
  set showcmd                     " Show typed command prefixes while waiting for operator
  set mouse=a                     " Use mouse support in XTerm/iTerm.

" General Options
  set number                     " Line numbers
  set nowrap                     " No wrapping
  set backspace=indent,eol,start " Let backspace work over anything.
  set clipboard=                 " turns out I do like is sharing windows clipboard
  set ffs=unix,mac               " support these in this order
  filetype on                    " detect the type of file
  filetype plugin on             " load filetype plugins
  set viminfo+=!                 " make sure it can save viminfo

set list                         " Show whitespace
if has("gui_running")
  set listchars=trail:·
else
  set listchars=trail:~
endif

" Visual Cues
  set showmatch                                      " show matching brackets
  set mat=5                                          " how many tenths of a second to blink matching brackets for
  set hlsearch                                       " highlight searched for phrases
  set incsearch                                      " highlight as you type you search phrase
  set history=1024                                   " History size
  set listchars=tab:\\.,trail:.,extends:>,precedes:< " what to show when I hit :set list
  set list
  set so=5                                           " Keep x lines (top/bottom) for scope
  set novisualbell                                   " don't blink
  set noerrorbells                                   " no noises
  " Statusline from ~1994 => 2011
  " set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%05l,%04v][%LL:%p%%]

  set statusline=[%n]                             " buffer number
  set statusline+=\ %<%.99f                       " tail of the filename
                                                  " set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, " file encoding
  set statusline+=\ %m                            " modified flag
  set statusline+=[
  set statusline+=%{&ff},                         " file format
  set statusline+=%R                              " read only flag
  set statusline+=%Y                              " filetype
  set statusline+=]
  set statusline+=%=                              " left/right separator
  set statusline+=%-16(%{fugitive#statusline()}%) " git branch
  set statusline+=%l/%LL                          " cursor line/total lines
  set statusline+=\ %c%VC                         " cursor column
  set statusline+=\ %P                            " percent through file


  set laststatus=2 " always show the status line
  set hidden                      " Allow hidden, unsaved buffers
  set splitright                  " Add new windows towards the right
  set splitbelow                  " ... and bottom

" Text Formatting/Layout
  set fo=tcrqn      " See Help (complex)
  set ai            " autoindent
  set si            " smartindent
  set smarttab      " Use shiftwidth to tab at line beginning
  set cindent       " do c-style indenting
  set tabstop=2     " tab spacing (settings below are just to unify it)
  set softtabstop=2 " unify
  set shiftwidth=2  " unify
  set expandtab     " Give me spaces or give me death
  set nowrap        " do not wrap lines

" Folding
  set nofoldenable      " Turn off folding
  set foldmethod=indent " Make folding indent sensitive
  set foldlevel=1
  set foldopen-=search  " don't open folds when you search into them
  set foldopen-=undo    " don't open folds when you undo stuff

" Files/Backups
  "set backup " make backup file
  "set backupdir=$VIM\vimfiles\backup " where to put backup file
  "set directory=$VIM\vimfiles\temp " directory is the directory for temp file
  "set makeef=error.err " When using make, where should it dump the file
  set autowrite                     " Save the file when shell/cmd are run
  set autoread
  set wildmode=list:longest         " activate tab auto-complete for file paths
  set autoread                      " No prompt for file changes outside Vim
  set swapfile                      " Keep swapfiles
  set wildignore+=tags              " Ignore tags when globbing.
  set wildignore+=tmp/**            " ...Also tmp files.
  set wildignore+=public/uploads/** " ...Also uploads.
  set wildignore+=public/images/**  " ...Also images.
  set wildignore+=vendor/**         " ...Also vendor.
  set isk+=_,$,@,%,#,-              " none of these should be word dividers, so make them not be
  set wildignore+=.git,*.o,tmp/**,vendor/rails/**
  set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
  set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

" Vim UI
  set lsp=0                            " space it out a little more (easier to read)
  set wildmenu                         " turn on wild menu
  set ruler                            " Always show current positions along the bottom
  set cmdheight=2                      " the command bar is 2 high
  set number                           " turn on line numbers
  set numberwidth=3
  set cpoptions+=n                     " show wrapped lines in the line number gutter
                                       " Hitting ctrl-n ctrl-n whill toggle the display of numbers
  :nmap <C-N><C-N> :set invnumber<CR>
  set lz                               " do not redraw while running macros (much faster) (LazyRedraw)
  set hid                              " you can change buffer without saving
                                       " set backspace=2                                               " make backspace work normal
  set whichwrap+=<,>,h,l               " backspace and cursor keys wrap to
  set mouse=a                          " use mouse everywhere
  set shortmess=atI                    " shortens messages to avoid 'press a key' prompt
  set report=0                         " tell us when anything is changed via :...
  set noerrorbells                     " don't make noise
                                       " make the splitters between windows be blank
  set fillchars=vert:\ ,stl:\ ,stlnc:\
  set scrolloff=3                      " Scroll when the cursor is 3 lines from edge
  set cursorline                       " Highlight current line
  set laststatus=2                     " Always show statusline

" Write all writeable buffers when changing buffers or losing focus.
  set autowriteall                " Save when doing various buffer-switching things.
  autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.

" Autosave current buffer periodically
  au BufRead,BufNewFile * let b:start_time=localtime()
  au CursorHold * call UpdateFile()
  au BufWritePre * let b:start_time=localtime()

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
  if has("gui_running")
    set noballooneval
  endif

" Case insensitive search by default
  set ignorecase

" Use shell in vim (sources rvm)
  set shell=/bin/sh
