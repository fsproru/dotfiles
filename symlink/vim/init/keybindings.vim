" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" Make Y consistent with D and C
map Y           y$

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
map <leader>v   :vsp<CR>

" Open .vimrc file in new tab. Think Command + , [Preferences...] but with Shift.
map <D-<>       :tabedit ~/.vimrc<CR>

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Undo/redo - Doesn't MacVim already have this?
map <D-z>       :earlier 1<CR>
map <D-Z>       :later 1<CR>

" Auto-indent whole file
map <silent> <F8> mzgg=G'z :delmarks z<CR>:echo "Reformatted."<CR>

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" FuzzyFinder and switchback commands
map <leader>F   :FufRenewCache<CR>:FufFile **/<CR>
map <Leader>f   :FufFile **/<CR>
map <Leader>b   :FufBuffer<CR>

" Git blame
map <leader>g   :Gblame<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Easy access to the shell
map <Leader><Leader> :!

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Recalculate diff when it gets messed up.
nmap du :diffupdate<CR>

" Show Tags
map <Leader>l <ESC>:Tlist<RETURN> " (normal mode) brings up the tag list

" Bubble single lines
nmap { [e
nmap } ]e
" Bubble multiple lines
vmap { [egv
vmap } ]egv

" RubyTest
map <Leader>rt <Plug>RubyTestRun<Up>
map <Leader>rat <Plug>RubyFileRun
map <Leader>rlt <Plug>RubyTestRunLast

" Reload Ctags
map <silent> <Leader>ct :!echo "Updating ctags..." && ctags --extra=+f --exclude=.git --exclude=log --exclude=tmp -R * $GEM_HOME/gems/* 2> /dev/null &<CR><CR>

" Horizontal block movement
vmap > >gv
vmap < <gv

" vim-chef
map <Leader>cf :<C-u>ChefFindAny<CR>
map <Leader>csf :<C-u>ChefFindAnySplit<CR>
map <Leader>cvf :<C-u>ChefFindAnyVsplit<CR>

" Save on CTRL-s
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
vmap <C-s> <Esc>:w<CR>gv
