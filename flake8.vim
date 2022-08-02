" Flake8

" Remap default map to run Flask8 from F7 to F3
autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>

let g:flake8_show_quickfix=1

let g:flake8_show_in_gutter=0

let g:flake8_show_in_file=0

" add binding to call the function
nnoremap <F2> :call flake8#Flake8ShowError()<cr>

" Run Flake8 when writing a python buffer
"autocmd BufWritePost *.py call flake8#Flake8()
