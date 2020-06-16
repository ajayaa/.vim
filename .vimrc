call pathogen#infect()
call pathogen#helptags()
set t_Co=256
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
:color faith-molokai
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
":cmap bl :buffers

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
set foldnestmax=100
"
" " These two settings work well if you want to start with folded code. If you
" " prefer to start with unfolded code, these two lines will work best.
" " (foldnestmax defaults to 20).
" " set foldlevel=99
" " set foldnestmax=20
"
"map <c-t> :tabnew
" syntax highlighting for markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
set encoding=utf-8

" noremap ff gqq
"

" Make it easy to open up vimrc file.
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Reload vimrc file.
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Add abbreviations.
" http://learnvimscriptthehardway.stevelosh.com/chapters/08.html
:iabbrev @@   ajku.agr@gmail.com
:iabbrev tehn then
:iabbrev waht what

" Easily go to beginning and end of line.
:nnoremap H ^
:nnoremap L $

" Wrap a word in double quotes.
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Wrap a word in single quotes.
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Map tagbartoggle to <leader>t
:nnoremap <leader>t :TagbarToggle<cr>

" shortcuts after installing go-vim.
" au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType python nnoremap <buffer> <leader>r :w<cr>:!python %<cr>

:nnoremap <leader>s :%s/\s\+$//<cr>


function! Copy() range
  echo system('echo '.shellescape(join(getline(a:firstline, a:lastline), "\n")).'| pbcopy')
endfunction

:nnoremap <leader>yy y:call Copy()<CR>
:vnoremap <leader>yy y:call Copy()<CR>

syntax on

set backspace=indent,eol,start
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set laststatus=2
set statusline+=%F%{fugitive#statusline()}
imap <C-t> <Plug>snipMateNextOrTrigger

" Open quick fix list in a vertical split.
" autocmd! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L
" :command! -nargs=+ SS :sp|Ggrep "<args>"
" :command! -nargs=+ SV :vs|Ggrep "<args>"
" Opens search result in a split
:command! -nargs=+ SS execute 'silent Ggrep!' <q-args> | cw | redraw!

" func! GitGrep(...)
"   let save = &grepprg
"   set grepprg=git\ grep\ -n\ $*
"   let s = 'grep'
"   for i in a:000
"     let s = s . ' ' . i
"   endfor
"   exe s
"   let &grepprg = save
" endfun
" command! -nargs=? G call GitGrep(<f-args>) | cw | redraw!

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

inoremap <C-e> <C-o>$

" Allows you to easily replace the current word and all its occurrences.
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
vnoremap <Leader>rc y:%s/<C-r>"/

" Allows you to easily change the current word and all occurrences to
" something
" " else. The difference between this and the previous mapping is that the
" mapping
" " below pre-fills the current word for you to change.
nnoremap <Leader>cc :%s/\<<C-r><C-w>\>/<C-r><C-w>
vnoremap <Leader>cc y:%s/<C-r>"/<C-r>"

" Remove ANSI color escape codes for the edited file. This is handy when
" " piping colored text into Vim.
nnoremap <Leader>rac :%s/<C-v><Esc>\[\(\d\{1,2}\(;\d\{1,2}\)\{0,2\}\)\?[m\|K]//g<CR>

" Tab colors.
au BufEnter * hi TabLine guibg=black guifg=gray ctermbg=black ctermfg=gray
au BufEnter * hi TabLineSel guibg=black guifg=white ctermbg=black ctermfg=white
au BufEnter * hi TabLineFill guibg=black guifg=black ctermbg=black ctermfg=black

autocmd BufRead,BufNewFile *.md,*.txt setlocal spell
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
:set switchbuf+=usetab,newtab

