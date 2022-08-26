" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
" Prettier Format
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocActionAsync('runCommand', 'editor.action.organizeImport')

" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

"" MAPS ########################################################################

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for applying codeAction to the current buffer.
nmap <leader>a <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl <Plug>(coc-codelens-action)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" CocRefactor
nmap <leader>rf <Plug>(coc-refactor)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Show all diagnostics.
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nnoremap <silent><nowait> <space>d  :<C-u>CocList diagnostics<cr>

" Hide Popups
nmap <leader>h <Plug>(coc-float-hide)

" Show commands.
nnoremap <silent><nowait> <space>cc :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o :<C-u>CocList outline<cr>

"" Extensions List #############################################################
"" - just a list of the extensions choose for future consulting
"" - Command to list :CocList extensions
"" 1. coc-html
"" 2. coc-css
"" 3. coc-prettier
"" 4. coc-pyright
"" 5. coc-eslint
"" 6. coc-tsserver
"" 7. coc-vetur
"" 8. coc-tailwindcss
