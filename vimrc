set nocompatible

filetype off

" append to runtime path
set runtimepath+=/usr/share/vim/vimfiles
"set runtimepath+=/usr/share/vim/vim82
let g:ale_disable_lsp = 1
" initialize dein, plugins are installed to this directory
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
" add packages here, e.g:
call dein#add('wsdjeg/dein-ui.vim')
call dein#add('skywind3000/vim-quickui')
call dein#add('liuchengxu/vista.vim')
call dein#add('ryanoasis/vim-devicons')
call dein#add('luochen1990/rainbow')
call dein#add('Shougo/defx.nvim')
call dein#add('Shougo/denite.nvim')
call dein#add('mhinz/vim-startify')
call dein#add('mhinz/vim-signify')
call dein#add('tyru/caw.vim')
call dein#add('sheerun/vim-polyglot', { 'build' : 'make'})
call dein#add('Raimondi/delimitMate')
call dein#add('sickill/vim-pasta')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('lambdalisue/fern.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('rhysd/committia.vim')
call dein#add('tpope/vim-unimpaired')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('wincent/terminus')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-sleuth')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-vinegar')
call dein#add('tpope/vim-git')
call dein#add('tpope/vim-rhubarb')
call dein#add('tpope/vim-eunuch')

call dein#add('junegunn/gv.vim')
call dein#add('tomtom/tcomment_vim')
call dein#add('tomtom/tlib_vim')
call dein#add('tomtom/tcommand_vim')
call dein#add('ConradIrwin/vim-bracketed-paste')

call dein#add('preservim/tagbar')
call dein#add('preservim/nerdtree')
call dein#add('preservim/nerdcommenter')

call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('liuchengxu/nerdtree-dash')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
call dein#add('godlygeek/tabular')
call dein#add('junegunn/vim-easy-align')
call dein#add('vim-scripts/SudoEdit.vim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim')
call dein#add('yuki-ycino/fzf-preview.vim', { 'rev': 'release/rpc' })
call dein#add('antoinemadec/coc-fzf')
call dein#add('dense-analysis/ale')
call dein#add('dominikduda/vim_current_word')
call dein#add('andymass/vim-matchup')
call dein#add('haya14busa/is.vim')
call dein#add('bfrg/vim-cpp-modern')
call dein#add('Yggdroot/indentLine')
call dein#add('thaerkh/vim-workspace')
call dein#add('thaerkh/vim-indentguides')
call dein#add('xolox/vim-session')
call dein#add('xolox/vim-misc')
call dein#add('mhinz/vim-sayonara')
call dein#add('t9md/vim-choosewin')
call dein#add('cohama/agit.vim')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('Yggdroot/LeaderF', { 'build': './install.sh', 'merged':0})
call dein#add('dyng/ctrlsf.vim')
call dein#add('wincent/ferret')
call dein#add('wincent/command-t', { 'build': 'rake make', 'merged':0} )
call dein#add('liuchengxu/vim-clap', {'do': ':Clap install-binary'} )
call dein#add('mhinz/vim-grepper')
call dein#add('sjl/gundo.vim')
call dein#add('skywind3000/asyncrun.vim')
call dein#add('skywind3000/asynctasks.vim')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('WolfgangMehner/c-support')

"Make gvim-only colorschemes work transparently in terminal vim
call dein#add('vim-scripts/CSApprox')
"Improved integration between Vim and its environment
call dein#add('Shougo/vimshell.vim')

"" Snippets
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')

call dein#add('bagrat/vim-buffet')
call dein#add('wsdjeg/FlyGrep.vim')
"call dein#add('WolfgangMehner/git-support')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('blankname/vim-fish')
call dein#add('farmergreg/vim-lastplace')
call dein#add('mboughaba/i3config.vim')
call dein#add('m-pilia/vim-pkgbuild')
call dein#add('haya14busa/dein-command.vim')
call dein#end()
call dein#save_state()
call dein#get_progress()
" auto-install missing packages on startup

if dein#check_install()
  call dein#install()
endif
endif

"Vim Settings
filetype plugin on
filetype indent on
" Enable syntax highlighting
syntax enable
set termguicolors

colorscheme zenburn

" Give more space for displaying messages.
set cmdheight=2
set signcolumn=yes
set hidden
set history=1000
set foldenable                  " Auto fold code
set completeopt=longest,menuone,preview

" Encryption
if has("crypt-blowfish2")
    set cm=blowfish2
endif

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Set to auto read when a file is changed from the outside
set autoread
augroup FocusGained,BufEnter * checktime

set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap/
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

set diffopt      +=vertical,foldcolumn:0,indent-heuristic,algorithm:patience
if !isdirectory($HOME . "/.vim/files/swap") | call mkdir($HOME . "/.vim/files/swap", "p") | endif
if !isdirectory($HOME. "/.vim/files/undo") | call mkdir($HOME . "/.vim/files/undo", "p") | endif
if !isdirectory($HOME. '/.vim/files/backup') | call mkdir($HOME . "/.vim/files/backup", 'p') | endif
" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Keep 8 lines above or below the cursor when scrolling.
set scrolloff=8


" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
autocmd VimEnter * set guitablabel=%N:\ %t\ %M

" Filetype specific commands
augroup filtypes
    autocmd!
    autocmd FileType c,cpp setlocal comments^=:///
    autocmd FileType c,cpp setlocal commentstring=///\ %s
    autocmd FileType crontab setlocal nobackup nowritebackup
augroup end

let g:libclang_location 	= '/usr/lib/'							" Path to the 'libclang.so

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extension#hunks#enabled = 1
let g:airline#extension#coc#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_detect_paste=1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#denite#enabled = 1
let g:airline#extensions#fern#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#grepper#enabled = 1
let g:airline#extensions#hunks#coc_git = 1
let g:airline#extensions#nerdtree_statusline = 1


"NerdTree
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeDirArrows=1
let NERDTreeChDirMode=2
let NERDTreeBookmarksFile= $HOME . '/.vim/NERDTreeBookmarks'
let g:nerdtree_tabs_focus_on_files = 1
" Load NERDTree, not load netrw when open a dir
augroup loadNERDTree
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
    \ if isdirectory(expand('<amatch>')) |
    \   call plug#load('nerdtree') |
    \   call nerdtree#checkForBrowse(expand('<amatch>')) |
    \ endif
augroup END

"NerdCommenter
" Add extra space around delimiters when commenting, remove them when
" uncommenting
let g:NERDSpaceDelims = 1
let g:NERDCreateDefaultMappings = 0

" Always remove the extra spaces when uncommenting regardless of whether
" NERDSpaceDelims is set
let g:NERDRemoveExtraSpaces = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Always use alternative delimiter
let g:NERD_c_alt_style = 1
let g:NERDCustomDelimiters = {'c': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' }}
let g:ft = ''
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

"Coc.nvim
" Highlight the symbol and its references when holding the cursor.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd CursorHold * silent call CocActionAsync('highlight')

"Startify
let g:startify_fortune_use_unicode = 1
let g:startify_update_oldfiles     = 1
let g:startify_use_env             = 1
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1
let g:startify_recursive_dir       = 1

" Show Startify
autocmd VimEnter *
            \ if !argc() |
            \   Startify |
            \   execute "normal \<c-w>w" |
            \ endif
" Keep NERDTree from opening a split when startify is open
autocmd FileType startify setlocal buftype=



" Rainbow
 let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" Ale
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

"Surround
let g:surround_indent = 1

"GitGutter
" Your vimrc
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" Committia
let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " Additional settings
    setlocal spell

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    endif
  endfunction

  "indentLine
let g:indentLine_enabled = 1

" Base16
let base16colorspace=256

"Vim Cpp Modern
" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

"Defx
let g:defx_git#indicators = {
	\ 'Modified'  : '•',
	\ 'Staged'    : '✚',
	\ 'Untracked' : 'ᵁ',
	\ 'Renamed'   : '≫',
	\ 'Unmerged'  : '≠',
	\ 'Ignored'   : 'ⁱ',
	\ 'Deleted'   : '✖',
	\ 'Unknown'   : '⁇'
	\ }

"Denite
let s:denite_options = {
      \ 'default' : {
      \ 'winheight' : 15,
      \ 'mode' : 'insert',
      \ 'start_filter' : 1,
      \ 'quit' : 1,
      \ 'highlight_matched_char' : 'MoreMsg',
      \ 'highlight_matched_range' : 'MoreMsg',
      \ 'direction': 'rightbelow',
      \ 'statusline' : has('patch-7.4.1154') ? v:false : 0,
      \ }}

function! s:profile(opts) abort
  for fname in keys(a:opts)
    for dopt in keys(a:opts[fname])
      call denite#custom#option(fname, dopt, a:opts[fname][dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)

" buffer source
call denite#custom#var(
      \ 'buffer',
      \ 'date_format', '%m-%d-%Y %H:%M:%S')

" enable unite menu compatibility
call denite#custom#var('menu', 'unite_source_menu_compatibility', 1)

" Vim Workspace
let g:workspace_autosave_always = 1

let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_to = 'default'
let g:session_verbose_messages = 0

"Grepper
let g:grepper = {}

"Fugitive
" The tree buffer makes it easy to drill down through the directories of your
" git repository, but it’s not obvious how you could go up a level to the
" parent directory. Here’s a mapping of .. to the above command, but
" only for buffers containing a git blob or tree
autocmd User fugitive
  \ if get(b:, 'fugitive_type', '') =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif

" Every time you open a git object using fugitive it creates a new buffer.
" This means that your buffer listing can quickly become swamped with
" fugitive buffers. This prevents this from becomming an issue:

autocmd BufReadPost fugitive://* set bufhidden=delete

"CtrlP
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" CtrlP will load from the CWD, makes it easier with all these nested repos
let g:ctrlp_working_path_mode = ''

"AsyncRun
let g:asyncrun_open = 8
let g:asyncrun_open = 6
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

" CommandT
let g:CommandTMatchWindowAtTop=1
let g:CommandTMaxHeight=10
let g:CommandTMinHeight=2

"Vim-Buffet
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

"Indent Guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'fzf', 'startify']
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 1

" Base
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" -----------
" FZF Preview
" -----------

let g:fzf_preview_use_dev_icons = 1
let g:fzf_preview_grep_cmd = 'rg --line-number --no-heading --color=always --smart-case'
let g:fzf_preview_floating_window_winblend = 0
let $BAT_THEME = 'Monokai Extended Origin'
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'Monokai Extended Origin'

" Base search commands I use a bunch
nnoremap <leader>. :FzfPreviewProjectFiles<CR>
nnoremap <leader>m :FzfPreviewProjectMruFiles<CR>
nnoremap <leader>fr :FzfPreviewProjectGrep<space>

" Find X commands
nnoremap <leader>fg :FzfPreviewGitStatus<CR>
nnoremap <leader>fb :FzfPreviewBuffers<CR>
nnoremap <leader>fl :FzfPreviewLocationList<CR>
nnoremap <leader>fq :FzfPreviewQuickFix<CR>
" These don't work, but they will soon I bet
" nnoremap <leader>fd :FzfPreviewCocCurrentDiagnostics<CR>
" nnoremap <leader>fD :FzfPreviewCocDiagnostics<CR>
" nnoremap <leader>fR :FzfPreviewCocReferences<CR>

let g:coc_fzf_preview = 'up:50%'
let g:coc_fzf_opts = []
nnoremap <leader>fd :CocFzfList diagnostics --current-buf<CR>
nnoremap <leader>fD :CocFzfList diagnostics<CR>
nnoremap <leader>fa :CocFzfList actions<CR>
nnoremap <leader>fo :CocFzfList outline<CR>
nnoremap <leader>fc :CocFzfList commands<CR>

" === Denite setup ==="
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight

let s:denite_options = {'default' : {
\ 'split': 'floating',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction


