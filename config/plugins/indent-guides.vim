" disable default mapping <leader>ig for toggling indent-guides
let g:indent_guides_default_mapping = 0

" don't classify spaces as indention
let g:indent_guides_space_guides = 0

" exclude filetypes
let g:indent_guides_exclude_filetypes = [
    \ 'ctrlsf',
    \ 'help',
    \ 'nerdtree'
    \ ]

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
