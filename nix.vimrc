set autoindent
set cmdheight=2
set colorcolumn=100
set directory=~/tmp,.
set encoding=utf-8
set expandtab
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10,Monaco:h13
set hidden
set history=1000
set hlsearch
set ignorecase smartcase
set incsearch
set laststatus=2
set mouse=a
set ruler
set shiftwidth=4
set showmatch
set smartindent
set t_Co=256
set tabstop=4
set textwidth=78
set wildignore+=*.o,*.obj,.git,*.pyc,*.cache,*.lock,*.mako.py,*.class,**/build/**,**/.git5_specs/**
set wildignore+=doc/**
set wildmenu
set wildmode=longest,list
set completeopt=menu,longest
let mapleader=","

nnoremap ,a <C-^>
nnoremap <Leader>0 10gt
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>g :!./%:r<CR>

nnoremap <silent> <left> :bp<cr>
nnoremap <silent> <right> :bn<cr>

nnoremap <silent> <Leader>` :cfirst<CR>
nnoremap <silent> <Leader><Left> :cprev<CR>
nnoremap <silent> <Leader><Right> :cnext<CR>
nnoremap <silent> <Leader>m :make<CR>


cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
cnoremap <C-D> <C-r>=expand('%:h')<CR>/
cnoremap <C-G> <C-r>=expand('%:p:h')<CR>/

noremap <silent> ,, :wincmd w<cr>
noremap <silent> ,. :wincmd W<cr>
noremap <silent> ,Cc :close<cr>
noremap <silent> ,Ch :wincmd h<cr>:close<cr>
noremap <silent> ,Cj :wincmd j<cr>:close<cr>
noremap <silent> ,Ck :wincmd k<cr>:close<cr>
noremap <silent> ,Cl :wincmd l<cr>:close<cr>
noremap <silent> ,H <C-W>H
noremap <silent> ,J <C-W>J
noremap <silent> ,K <C-W>K
noremap <silent> ,L <C-W>L
noremap <silent> ,h :wincmd h<cr>
noremap <silent> ,j :wincmd j<cr>
noremap <silent> ,k :wincmd k<cr>
noremap <silent> ,l :wincmd l<cr>

nmap <silent> ,q cs"'
nmap <silent> ,w cs'"


nmap <silent> <Leader>x :qall<cr>
inoremap kj <Esc>

"Delete trailing white space, useful for Python ;)
func! s:DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
com! DeleteTrailingWS call s:DeleteTrailingWS()

function! DiffSetup()
  set number
  wincmd w
  set number
  wincmd =
endfun

if &diff
  autocmd VimEnter * call DiffSetup()
endif

hi ColorColumn guibg=#2d2d2d ctermbg=235

if filereadable($HOME . "/.vimrc.local")
  exec ":source " . $HOME . "/.vimrc.local"
endif

" CtrlP
let g:ctrlp_map=',t'
colorscheme happy_hacking
