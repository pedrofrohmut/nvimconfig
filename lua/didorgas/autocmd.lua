local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Remove auto insert comments next line
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = {"*"}, command = "setlocal formatoptions-=cro" })

-- Only show the cursor line in the active buffer.
augroup("CursorLine", { clear = true })
autocmd({ "VimEnter", "WinEnter", "BufWinEnter" }, {
    group = "CursorLine", pattern = { "*" }, command = "setlocal cursorline" })
autocmd({ "WinLeave" }, {
    group = "CursorLine", pattern = { "*" }, command = "setlocal nocursorline" })

