syntax on 

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'vimwiki/vimwiki'
call plug#end()

set title 
set tabstop=4
set softtabstop=4
set number
set cursorline
set noswapfile
set nocompatible
set wildmenu

filetype plugin on
filetype plugin indent on

" COLOR SCHEME & FONTS
set background=dark
"set background=light
"set guifont=Envy\ Code\ R\ 10
set guifont=Fira\ Code:h12
set termguicolors
let g:sonokai_style = 'shusia'
colorscheme sonokai
let g:airline_theme = 'archery'
hi Normal gui=bold guibg=NONE ctermbg=NONE

"FoldMethod
set foldmethod=manual
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" VIM WIKI
let g:vimwiki_list = [{'path': '/home/Desktop/',
			\ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_folding='list'
let g:vimwiki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 1 
let mapleader=","

"Edit config file
nnoremap <Leader>re :edit $MYVIMRC<CR>
nnoremap <Leader>rs :source $MYVIMRC<CR>
"Fkeys Mapping
" Underline Text with F5
nnoremap <F5> <c-v>$r guibg=sFF0000
"nnoremap <F5> yyp<c-v>$r-
inoremap <F5> <Esc>yyp<c-v>$r-A 	

let g:livepreview_previewer = 'evince'

set clipboard+=unnamedplus
