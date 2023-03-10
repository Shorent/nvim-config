local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    }, window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }, mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
        ["<S-Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
    }), sources = cmp.config.sources({
        {name = 'nvim_lua'},
        {name = 'nvim_lsp'},
        {name = 'path', max_item_count = 3},
        {name = 'luasnip'},
        {name = 'buffer', max_item_count = 3}
    }), experimental = {
        ghost_text_view = true
    }
})

