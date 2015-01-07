call pathogen#infect()
call pathogen#helptags()
set scrolloff=5
set sidescrolloff=5

" no ~ files or swap files
set nobackup
set nowrap
" type ca in normal mode to copy everything to clipboard
nnoremap ca gg"+yG
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
filetype plugin on
filetype on
filetype indent on
set tags=./tags,tags;$HOME
let g:pep8_map='<leader>8'
set nu
set wildmenu
set ruler
set cmdheight=2
set hid
"set smarttab
set tabstop=4
set lbr
"set tw=79
set ai "Auto indent
":colorscheme fruity
let python_highlight_all = 1
"set fdm=indent
"set fdc=4
"set fdl=1
set t_Co=256
:color molokai
" set colorcolumn to 80
set cc=80
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

" shortcut for buffer listing
:cmap bl :buffers

" Nerd tree view toggler
:nmap \e :NERDTreeToggle<CR>

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
