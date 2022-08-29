-- Jump forward or backward
vim.cmd [[ imap <expr> <C-j> vsnip#jumpable(1)  ? '<Plug>(vsnip-jump-next)' : '\<C-j>' ]]
vim.cmd [[ imap <expr> <C-k> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '\<C-k>' ]]

-- If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
vim.cmd [[ let g:vsnip_filetypes = {} ]]
vim.cmd [[ let g:vsnip_filetypes.javascriptreact = ['javascript'] ]]
vim.cmd [[ let g:vsnip_filetypes.typescriptreact = ['typescript'] ]]
