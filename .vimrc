
syntax on
set incsearch
set ignorecase
set smartcase
set number
set nocompatible
set clipboard=unnamed

filetype off

filetype plugin indent on
set hidden

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-c> :bd<CR>


nnoremap <C-]> :bnext<CR>
" noremap <C-[> :bprev<CR>


" Key mappings
imap kj <Esc>
nnoremap - $
nnoremap ; :

set smartindent
set shiftwidth=2

set t_Co=256

" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" recognize Gemfile
autocmd BufNewFile,BufRead Gemfile set filetype=ruby

set fileencoding=utf-8
set encoding=utf-8
set noswapfile
set expandtab
set tabstop=2 softtabstop=2 shiftwidth=2

" Move lines up and down
nnoremap <S-k> :m .-2<CR>==
nnoremap <S-j> :m .+1<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

let mapleader = ","
filetype plugin on

nnoremap <silent> <F4> :let @+=expand("%:p")<CR>
function! CopyFilePath()
	:let @+ = expand("%:p")
endfunction

map <silent> <C-f> :call CopyFilePath()<CR>

