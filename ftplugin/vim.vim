setlocal tabstop=2 shiftwidth=2 softtabstop=2 smarttab expandtab
setlocal autoindent
setlocal textwidth=78 formatoptions-=r formatoptions-=o nomodeline
setlocal colorcolumn=+1
if &modifiable
  setlocal fileformat=unix
endif

let b:ale_linters = ['vint']

setlocal foldmethod=marker
setlocal keywordprg=:help

augroup reload_vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC
augroup END
