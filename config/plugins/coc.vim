let g:coc_fzf_preview = 'up:50%'
let g:coc_fzf_opts = []
nnoremap <leader>fd :CocFzfList diagnostics --current-buf<CR>
nnoremap <leader>fD :CocFzfList diagnostics<CR>
nnoremap <leader>fa :CocFzfList actions<CR>
nnoremap <leader>fo :CocFzfList outline<CR>
nnoremap <leader>fc :CocFzfList commands<CR>

" I have to restart Coc sometimes because outdated error stick around.
nnoremap <leader>cr :CocRestart<cr>

" Show documentation in preview window
nnoremap <silent>gD :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ?
	  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	let g:coc_snippet_next = '<tab>'

" Highlight the symbol and its references when holding the cursor.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd CursorHold * silent call CocActionAsync('highlight')
set statusline^=%{coc#status()}

function! StatusDiagnostic() abort
	  let info = get(b:, 'coc_diagnostic_info', {})
	  if empty(info) | return '' | endif
	  let msgs = []
	  if get(info, 'error', 0)
	    call add(msgs, 'E' . info['error'])
	  endif
	  if get(info, 'warning', 0)
	    call add(msgs, 'W' . info['warning'])
	  endif
	  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
	endfunction
