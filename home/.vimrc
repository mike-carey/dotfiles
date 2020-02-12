"""
"  Sets up configurations for vim editor
""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"   Vundle plugins!
Plugin 'tomasiser/vim-code-dark'
Plugin 'rjayatilleka/vim-insert-char'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'Lokaltog/powerline'

call vundle#end()
filetype plugin indent on

" Use tabs as 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

syntax enable

" VS code
colorscheme codedark

" Monokai
"colorscheme monokai

" Line numbers
set nu

" Show commands being typed
set showcmd

" Specify specific syntax for certain file types
autocmd FileType c,cpp,java set formatoptions+=ro
autocmd FileType vim,lua,nginx set shiftwidth=2 softtabstop=2
autocmd FileType html,xhtml,css,xml,xslt set shiftwidth=2 softtabstop=2
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" Autocomplete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xhtml,html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete

" Comments
autocmd FileType apache setlocal commentstring=#\ %s

" Remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Trim trailing whitespace
if has("autocmd")
  autocmd BufWritePre * :%s/\s\+$//e
endif

" Change the binding for ctrlp
let g:ctrlp_map = ',f'

" .vimrc
