autocmd!

syntax on
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bufexplorer.zip'
Plugin 'bufkill.vim'
Plugin 'derekwyatt/vim-scala.git'
Plugin 'mako.vim'
Plugin 'surround.vim'
Plugin 'google.vim'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'DirDiff.vim'
Plugin 'derekwyatt/vim-fswitch.git'
Plugin 'groenewege/vim-less.git'
Plugin 'tpope/vim-abolish.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-commentary.git'

Plugin 'git://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'git://github.com/tomtom/tlib_vim.git'
Plugin 'git://github.com/garbas/vim-snipmate.git'
Plugin 'git://github.com/tomtom/tskeleton_vim'
Plugin 'git://github.com/Rip-Rip/clang_complete.git'
Plugin 'reinh/vim-makegreen.git'
call vundle#end()

" filetype plugin on
filetype plugin indent on

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
" set winheight=3
" set winminheight=3

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

""" witch back and forth between: (credit David Reiss)
"         .h / -inl.h / .cc / .go / .py / .js / _test.* / _unittest.* 
"  with   ,h / ,i     / ,c  / ,g  / ,p  / ,j  / ,t      / ,u
let pattern = '\(\(_\(unit\)\?test\)\?\.\(cc\|js\|py\|go\)\|\(-inl\)\?\.h\)$'
nnoremap ,j :e <C-R>=substitute(expand("%"), pattern, ".js", "")<CR><CR>
nnoremap ,p :e <C-R>=substitute(expand("%"), pattern, ".py", "")<CR><CR>
" nnoremap ,g :e <C-R>=substitute(expand("%"), pattern, ".go", "")<CR><CR>
nnoremap ,u :e <C-R>=substitute(expand("%"), pattern, "_unittest.", "") . substitute(expand("%:e"), "h", "cc", "")<CR><CR>
nnoremap ,T :e <C-R>=substitute(expand("%"), pattern, "_test.", "") . substitute(expand("%:e"), "h", "cc", "")<CR><CR>
nnoremap ,i :e <C-R>=substitute(expand("%"), pattern, "-inl.h", "")<CR><CR>
nnoremap ,h :e <C-R>=substitute(expand("%"), pattern, ".h", "")<CR><CR>
nnoremap ,c :e <C-R>=substitute(expand("%"), pattern, ".cc", "")<CR><CR>
nnoremap <silent> ,sn :nohls<CR>
nnoremap <silent> ,sv :so $MYVIMRC<CR>
nnoremap <silent> ,ev :e $MYVIMRC<CR>
nnoremap . .`[

cnoremap <C-D> <C-r>=expand('%:h')<CR>/
cnoremap <C-G> <C-r>=expand('%:p:h')<CR>/
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>

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

" FSwitch mappings
nmap <silent> <Leader>z :FSHere<cr>
nmap <silent> <Leader>of :FSHere<cr>
nmap <silent> <Leader>ol :FSRight<cr>
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>oh :FSLeft<cr>
nmap <silent> <Leader>oH :FSSplitLeft<cr>
nmap <silent> <Leader>ok :FSAbove<cr>
nmap <silent> <Leader>oK :FSSplitAbove<cr>
nmap <silent> <Leader>oj :FSBelow<cr>
nmap <silent> <Leader>oJ :FSSplitBelow<cr>

nmap <silent> <Leader>x :qall<cr>
inoremap kj <Esc>

if &term =~ "xterm"
  cnoremap <Esc>b <S-Left>
  cnoremap <Esc>f <S-Right>
endif

" CommandT related settings
let g:ctrlp_map = ',t'

" latex-suite
let g:tex_flavor='latex'

" Supertab settings
" let g:SuperTabDefaultCompletionDiscoverDiscovery = [
" \ "&completefunc:<c-x><c-u>",
" \ "&omnifunc:<c-x><c-o>",
" \ ]
let g:SuperTabLongestEnhanced=1
let g:SuperTabLongestHighlight=1

augroup python
  " au FileType python map <buffer> <Leader>g :!python %<CR>
  au FileType python iab <buffer> im if __name__ == "__main__":<CR>main()
  au FileType python map <buffer> <silent> <leader>C ?class<CR>
  au FileType python map <buffer> <silent> <leader>D ?def<CR>
  au FileType python setlocal formatoptions-=t
  au FileType python compiler pyunit
augroup END

augroup mako
  au BufNewFile,BufRead *.mako set ft=mako
  au FileType mako map <Leader>g :!python %<CR>
augroup END

augroup objectivec
  au BufReadPost,BufNewFile *.m setf objc
  au FileType objc set shiftwidth=2
  au FileType objc set tabstop=2
  au FileType objc set makeprg=g++
  au FileType objc map <C-g> :make -o %:r % -framework Cocoa<CR>
augroup END

augroup cpp
  au FileType cpp map <Leader>g :!./%:r<CR>
  " au FileType cpp set makeprg=g++\ -o\ %:r\ %
  au FileType cpp iab cstr c_str()
  au BufEnter *.cc let b:fswitchdst = 'h'
  au BufEnter *.h let b:fswitchdst = 'cc'
  au FileType cpp let b:fswitchlocs = '.'
augroup END

augroup ccode
  au FileType c,cpp set shiftwidth=2
  au FileType c,cpp set tabstop=2
augroup END

augroup proto
  au BufRead,BufNewFile *.proto setfiletype proto
  au FileType proto set shiftwidth=2
  au FileType proto set tabstop=2
augroup end

augroup java
  au FileType java set colorcolumn=100
augroup END

augroup javascript
  au FileType javascript iabbr cl console.log
  au FileType javascript iabbr fk function()
augroup END

augroup scala
  au FileType scala set shiftwidth=2
  au FileType scala set tabstop=2
  au FileType scala set textwidth=120
  au FileType scala set colorcolumn=120
  au FileType scala let b:fswitchdst = 'scala'
  au BufEnter *\(Test\)\@!.scala let b:fswitchlocs = 'reg:+/main/scala+/test/scala/+' | let b:fswitchfnames='+$+Test+'
  au BufEnter *Test.scala let b:fswitchlocs = 'reg:+/test/scala+/main/scala/+' | let b:fswitchfnames='+Test$++'
augroup END

" Diff current buffer with the saved version
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

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

function! NotifyTmux()
  let panecmd = ("cd " . expand(g:tmux_cwd) . ";" . g:tmux_command . " && sleep 1")
  let cmdline = ("tmux respawn-pane -k -t " . g:tmux_pane . " \"" .  panecmd . "\"")
  call system(cmdline)
endfun

function! TmuxCopyMode()
  call system("tmux copy-mode -t " . g:tmux_pane)
endfun

function! TmuxSendKeys(keys)
  call system("tmux send-keys -t " . g:tmux_pane . " " . a:keys)
endfun

function! TmuxFind(pat)
  call TmuxCopyMode()
  call TmuxSendKeys("\"?" . a:pat . "\" C-m Down Down Down Down Down Down Down Down Down Down Down Down")
endfun

function! TmuxScrollUp()
  call TmuxCopyMode()
  call TmuxSendKeys("C-b")
endfun

function! TmuxScrollDown()
  call TmuxCopyMode()
  call TmuxSendKeys("C-f")
endfun

" Experimental tmux integration
let g:tmux_pane=1
nnoremap <silent> ,d :call NotifyTmux()<CR>
nnoremap <silent> ,f :call TmuxFind(g:build_start)<CR>
nnoremap <silent> ,v :call TmuxScrollUp()<CR>
nnoremap <silent> ,V :call TmuxScrollDown()<CR>

" Clang integration
let g:clang_periodic_quickfix=1

colorscheme xoria256
hi ColorColumn guibg=#2d2d2d ctermbg=235

if filereadable($HOME . "/.vimrc.local")
  exec ":source " . $HOME . "/.vimrc.local"
endif

" Pymode
let g:pymode_folding=0
let g:pymode_options_other=0

" CtrlP
let g:ctrlp_map=',t'

map <Leader>g :call MakeGreen('')<CR>
