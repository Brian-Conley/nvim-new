return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- equivalent to Packer's run
    event = { "BufReadPost", "BufNewFile" }, -- lazy-load on file open
    config = function()
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all"
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query",
                "markdown", "markdown_inline",
                "javascript", "typescript", "rust",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,
                -- Set this to true if you depend on 'syntax' being enabled
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
