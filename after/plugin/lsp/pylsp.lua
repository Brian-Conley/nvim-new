vim.lsp.config('pylsp', {
    on_attach = _G.ON_ATTACH,
    capabilities = _G.CAPABILITIES,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    maxLineLength = 100
                }
            }
        }
    }
})
