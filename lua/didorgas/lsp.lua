local map = vim.keymap.set

-- Mappings --------------------------------------------------------------------

map("n", "<F12>", "<cmd>LspInfo<Enter>", { silent = true })
map("n", "<C-p>", vim.diagnostic.goto_prev, { silent = true })
map("n", "<C-n>", vim.diagnostic.goto_next, { silent = true })
map("n", "<leader>do", vim.diagnostic.open_float, { silent = true })
map("n", "<leader>dl", vim.diagnostic.setloclist, { silent = true })
map("n", "<leader>dd", vim.diagnostic.disable, { silent = true })
map("n", "<leader>de", vim.diagnostic.enable, { silent = true })
map("n", "<leader>cf", vim.lsp.buf.format)

-- Config ----------------------------------------------------------------------

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
})

-- Connect LSP and CMP completion
local capabilities = require("cmp_nvim_lsp")
    .update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { silent = true, buffer = bufnr }
    map("n", "gy", vim.lsp.buf.declaration, bufopts)
    map("n", "gd", vim.lsp.buf.definition, bufopts)
    map("n", "gi", vim.lsp.buf.implementation, bufopts)
    map("n", "gt", vim.lsp.buf.type_definition, bufopts)
    map("n", "gr", vim.lsp.buf.references, bufopts)

    map("n", "K", vim.lsp.buf.hover, bufopts)

    map("n", "<leader>rn", vim.lsp.buf.rename, bufopts)

    map("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
end

-- Servers ---------------------------------------------------------------------

require('lspconfig')['clangd'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

require('lspconfig')['sumneko_lua'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use" }
            }
        }
    }
}

require('lspconfig')['tsserver'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

require('lspconfig')['csharp_ls'].setup {
    capabilities = capabilities,
    on_attach = on_attach,
}
