local capabilities = require('cmp_nvim_lsp').default_capabilities()

_G.LSP_CAPABILITIES = require('cmp_nvim_lsp').default_capabilities()

_G.ON_ATTACH = function(client, bufnr)
    local opts = {buffer = bufnr}

    if vim.lsp.inlay_hint then
        vim.lsp.inlay_hint.enable(true, { 0 })
    end

    --[[
    if client.server_capabilities.inlayHindProvider then
        vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end
    ]]

    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

    vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
end

vim.lsp.enable('cmake')
vim.lsp.enable('clangd')
vim.lsp.enable('gopls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('pylsp')
vim.lsp.enable('ts_ls')
vim.lsp.enable('html')
