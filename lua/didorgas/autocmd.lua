-- Remove auto insert comments next line
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = {"*"},
    command = "setlocal formatoptions-=cro"
})
