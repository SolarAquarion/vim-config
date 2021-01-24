let g:coc_fzf_preview = 'up:50%'
let g:coc_fzf_opts = []
nnoremap <leader>fd :CocFzfList diagnostics --current-buf<CR>
nnoremap <leader>fD :CocFzfList diagnostics<CR>
nnoremap <leader>fa :CocFzfList actions<CR>
nnoremap <leader>fo :CocFzfList outline<CR>
nnoremap <leader>fc :CocFzfList commands<CR>

" Highlight the symbol and its references when holding the cursor.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd CursorHold * silent call CocActionAsync('highlight')

