servers = {
    'cmake',
    'clangd',
    'gopls',
    'rust_analyzer',
    'pylsp',
    'ts_ls',
    'html',
}

require('mason').setup()
--[[
require('mason-lspconfig').setup({
    ensure_installed = servers
})
]]
