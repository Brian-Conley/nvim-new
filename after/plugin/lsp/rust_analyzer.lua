vim.lsp.config('rust_analyzer', {
    on_attach = _G.ON_ATTACH,
    capabilities = _G.LSP_CAPABILITIES,
    settings = {
        ['rust-analyzer'] = {
            rustfmt = { enableRangeFormatting = true },
            cargo = { allFeatures = true },
            procMacro = { enable = true }
        },
    },
})
