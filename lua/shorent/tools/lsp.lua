require('mason').setup()

local lsp_flags = {
  debounce_text_changes = 150,
}
require('lspconfig')['lua_ls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

