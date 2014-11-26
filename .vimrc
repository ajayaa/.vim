call pathogen#infect()
" call pathogen#helptags()
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
set tw=79
set ai "Auto indent
":colorscheme fruity
let python_highlight_all = 1
"set fdm=indent
"set fdc=4
"set fdl=1
set t_Co=256
:color molokai
set cc=79

" starts highlighting text as you start typing
:set incsearch
" Ignores case of search text
:set ignorecase
" foo matches Foo, FOO, fOo but Foo matches only Foo.
:set smartcase
" highlights the current search
:set hlsearch
" type \q to undo the highlight done with hlsearch
:nmap \q :nohlsearch<CR>

" shortcuts for moving between buffer.
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>
:nmap <C-b> :buffers<CR>
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
