"" FUNCTIONS ###################################################################
" for K show_docs
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" for <Tab> trigger completion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"" CONFIG ######################################################################

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=500

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Highlight the symbol and its references when holding the cursor.
if has("gui_running")
  autocmd CursorHold * silent call CocActionAsync('highlight')
endif

" <CR> to confirm completion
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" <Tab> to trigger completion
inoremap <silent><expr> <TAB>
   \ pumvisible() ? "\<C-n>" :
   \ <SID>check_back_space() ? "\<TAB>" :
   \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : \<C-h>"

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"" MAPS ########################################################################

" Use <c-space> to trigger completion.
imap <silent><expr> <c-space> coc#refresh()

" Remap keys for applying codeAction to the current buffer.
nmap <leader>a  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" CocRefactor
nmap <leader>rf <Plug>(coc-refactor)

" Show docs on current symbol
nmap <silent> K :call <SID>show_documentation()<CR>

" Go Definition
nmap <silent> gd <Plug>(coc-definition)
" Go Type
nmap <silent> gy <Plug>(coc-type-definition)
" Go implementation
nmap <silent> gi <Plug>(coc-implementation)
" Go References
nmap <silent> gr <Plug>(coc-references)

" Show all diagnostics.
nmap <silent><nowait> <leader>d :<C-u>CocList diagnostics<CR> 
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Hide Popups
nmap <leader>h <Plug>(coc-float-hide)

" Format
" '<Plug>(coc-format)' keybind set at mymaps.vim
command! -nargs=0 Format :call CocActionAsync('format')

" Prettier Format
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"" Extensions List #############################################################
"" - just a list of the extensions choose for future consulting
"" - Command to list :CocList extensions
"" 1. coc-html
"" 2. coc-css
"" 3. coc-prettier
"" 4. coc-pyright
"" 5. coc-eslint
"" 6. coc-tsserver
