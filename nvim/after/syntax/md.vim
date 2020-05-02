" Vim syntax file
" Language: Category for vimwiki
" Maintainer: Bourgeois Christophe 
" Latest Revision: 18.04.2020
Test
syn region Title  start="{" end="}"
hi Title ctermfg=red guifg=white

if exists("b:current_syntax")
  finish
endif
