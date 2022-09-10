local ok, cmp = pcall(require, "cmp")
if not ok then
    print "CMP is not loading. Check your configuration"
end

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<A-y>']   = cmp.mapping.scroll_docs(-4),
        ['<A-e>']   = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>']   = cmp.mapping.abort(),
        ['<CR>']    = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        --- MY CUSTOM KEYS
        ['<C-y>']   = cmp.config.disable,
        ['<Tab>']   = cmp.mapping.select_next_item(),
        ['<C-n>']   = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-p>']   = cmp.mapping.select_prev_item(),
    }),
    sources = cmp.config.sources({
        { name = 'vsnip' },
        { name = 'nvim_lsp' },
        { name = 'path' },
    }, {
        { name = 'buffer' },
    })
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
