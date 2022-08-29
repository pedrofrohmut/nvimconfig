-- Emmet Config
vim.cmd [[ let g:user_emmet_mode='iv' ]]
vim.cmd [[ let g:user_emmet_leader_key='<c-\>' ]]
vim.cmd [[ autocmd FileType * EmmetInstall ]]

vim.keymap.set("i", "<C-Space>", "<Plug>(emmet-expand-abbr)", { silent = true })
vim.keymap.set("v", "<C-Space>", "<Plug>(emmet-wrap-with-abbreviation)", { silent = true })

--[[
Main commands
  1. Insert <C-y>,   emmet-expand-abbr
  2. Visual v_<C-y>, emmet-wrap-with-abbreviation
  3. Normal <C-y>u   emmet-update-tag
  4. Normal <C-y>/   emmet-toggle-comment
  4. lorem{n}        emmet-lorem-ipsum
]]
