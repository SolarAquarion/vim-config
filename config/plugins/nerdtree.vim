augroup loadNERDTree
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
    \ if isdirectory(expand('<amatch>')) |
    \   call plug#load('nerdtree') |
    \   call nerdtree#checkForBrowse(expand('<amatch>')) |
    \ endif
augroup END

