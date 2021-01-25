let g:NERDCustomDelimiters = {'c': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' }}


fu! NERDCommenter_before()
  if &filetype ==# 'markdown'
    let g:ft = 'markdown'
    let cf = context_filetype#get()
    if cf.filetype !=# 'markdown'
      exe 'setf ' . cf.filetype
    endif
  endif
endfu
fu! NERDCommenter_after()
  if g:ft ==# 'markdown'
    setf markdown
    let g:ft = ''
  endif
endfu

