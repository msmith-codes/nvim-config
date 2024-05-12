local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

local cmp = require('cmp')
cmp.setup({
    sources = {
        {name = "nvim_lsp"},
        {name = "buffer"},
    },
    formatting = cmp_format,
    mapping = {
        ["<Enter>"] = cmp.mapping.confirm({select = false}),
        ["<Esc>"] = cmp.mapping.abort(),
        ["<Up>"] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ["<Down>"] = cmp.mapping.select_next_item({behavior = 'select'}),
        ["<C-Space>"] = cmp.mapping.complete(),
    }
})


require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
        require('lspconfig')[server_name].setup({})
        end,
    },
})
