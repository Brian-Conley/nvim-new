local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_preferences, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local cmp = require('cmp')
cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('snippy').expand_snippet(args.body) -- For `snippy` users.
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        {name = 'nvim_lsp'},
        {name = 'snippy'},
    }, {
        {name = 'buffer'},
    })
})

vim.diagnostic.config({
  virtual_text = true,  -- Shows inline error messages
  signs = true,         -- Enables the signs in the gutter
  underline = true,     -- Underlines the offending code
  update_in_insert = false, -- Don't update diagnostics in insert mode
  severity_sort = true, -- Sort diagnostics by severity
  float = {
    border = "rounded",
    source = "always",  -- Show the source of the diagnostic
    header = "",
    prefix = "",
  },
})

local servers = {
    'cmake',
    'clangd',
    'gopls',
    'rust_analyzer',
    'pylsp',
}
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = servers
})
--lspconfig.cmake.setup {}
--lspconfig.clangd.setup {}
--lspconfig.gopls.setup {}
--lspconfig.rust_analyzer.setup{}
