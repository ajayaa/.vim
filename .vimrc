call pathogen#infect()
call pathogen#helptags()

" no ~ files or swap files
set nobackup
set nowrap
" anything selected would be copied to default register in vim
" set clipboard=unnamedplus
" type sa in normal mode to copy everything to clipboard
nnoremap sa gg"+yG
nnoremap sd gg"+dG
" type zz in normal mode to paste formatted text from clipboard.
nnoremap zz :set paste<CR>o<esc>"+p:set nopaste<CR>
" This example shows how to write a function in vim.

" function! Copy_clipboard()
"     :set paste
"     call feedkeys('"+p')
"     :set nopaste
" endfunction
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" set jj to escape
ino jj <esc>
cno jj <c-c>
vno v <esc>
set tags=./tags,tags;$HOME
let g:pep8_map='<leader>8'
set nu
set wildmenu
set ruler
set cmdheight=2
set hid
set lbr
"set tw=79
set ai "Auto indent
let python_highlight_all = 1
"set fdm=indent
"set fdc=4
"set fdl=1
set t_Co=256
":colorscheme fruity
:color molokai
":color pablo
":color morning
" set colorcolumn to 80
set cc=80

filetype plugin on
filetype on
filetype indent on
set shiftwidth=4
set smartindent
set tabstop=4
:set expandtab
" starts highlighting text as you start typing
:set incsearch
" Ignores case of search text
:set ignorecase
" foo matches Foo, FOO, fOo but Foo matches only Foo.
:set smartcase
" highlights the current search
:set hlsearch
" type \q to undo the highlight done with hlsearch
:nmap <leader>q :nohlsearch<CR>
:nmap <leader>+ :vertical resize +5<CR>
:nmap <leader>- :vertical resize -5<CR>
" shortcut for buffer listing
:cmap bl :buffers

" Nerd tree view toggler
:nmap \n :NERDTreeToggle<CR>

" Learn about gnu global sometime.
" It is allegedly better than ctags.



" Uncomment the following to have Vim jump to the last position when                                                       
" " reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal! g'\"" | endif
endif

" change working directory to that of opened file.
set autochdir
" Write read only files by typing :sudow
cnoremap sudow w !sudo tee % >/dev/null

" Allow folding of text. Python syntax is indent based, so make Vim detect
" " folds based on indentation level. If only this line is set, all folds will
" " start closed (value of 'foldlevel' is 0). To open/close fold, type'za'.
set foldmethod=indent
"
" " The indentation level upto which lines are folded when you open the file.
" " By default it is 0 (all folds closed). Value of 1 means in object-oriented
" " Python code, upto class method definitions is shown. If
" " this is changed to 'foldlevel=99', files will open without any folding
" " already in place.
set foldlevel=1
"
" " Maximum indentation depth upto which code is folded. If you use classes in
" " Python, '2' means code will be folded at class level, and method level.
" " Once you unfold a method, further indents (e.g. a 'for' loop) won't be
" folded
set foldnestmax=2
"
" " These two settings work well if you want to start with folded code. If you
" " prefer to start with unfolded code, these two lines will work best.
" " (foldnestmax defaults to 20).
" " set foldlevel=99
" " set foldnestmax=20
"
map <c-t> :tabnew
" syntax highlighting for markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
set encoding=utf-8

" noremap ff gqq
