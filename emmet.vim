" Emmet Config
let g:user_emmet_mode='a'  "enable all functions in Insert and Visual Mode
let g:user_emmet_leader_key='<c-y>'
autocmd FileType * EmmetInstall

inoremap <C-k> <Plug>(emmet-expand-abbr)
vnoremap <C-k> <Plug>(emmet-expand-abbr)

inoremap <C-e> <Esc>:Emmet 

"" Main commands
" 1. Insert <C-y>,   emmet-expand-abbr
" 2. Visual v_<C-y>, emmet-wrap-with-abbreviation
" 3. Normal <C-y>u   emmet-update-tag
" 4. Normal <C-y>/   emmet-toggle-comment
" 4. lorem{n}        emmet-lorem-ipsum
