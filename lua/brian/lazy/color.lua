return {
    "EdenEast/nightfox.nvim",
    priority = 1000, -- Load before other UI-affecting plugins
    config = function()
        require("nightfox").setup({
            style = "carbonfox",
        })

        -- Function to set colorscheme and make background transparent
        local function SetColor(color)
            color = color or "carbonfox"
            vim.cmd.colorscheme(color)

            local hl = vim.api.nvim_set_hl
            --hl(0, "Normal",        { bg = "none" })
            --hl(0, "NormalNC",      { bg = "none" })
            --hl(0, "NormalFloat",   { bg = "none" })
            hl(0, "FloatBorder",   { bg = "none" })
            hl(0, "FloatTitle",    { bg = "none" })
            hl(0, "WinSeparator",  { bg = "none" })
            hl(0, "StatusLine",    { bg = "none" })
            hl(0, "StatusLineNC",  { bg = "none" })
            hl(0, "SignColumn",    { bg = "none" })
            hl(0, "VertSplit",     { bg = "none" })
            hl(0, "Pmenu",         { bg = "none" })
            hl(0, "PmenuSel",      { bg = "none" })
            hl(0, "LspInlayHint",  { fg = "#FF40FF", bg = "none" })
        end

        --SetColor("duskfox")
        SetColor("carbonfox")

        -- Extra highlight customizations
        vim.cmd [[
          highlight ColorColumn ctermbg=DarkGrey guibg=#3c3c3c
        ]]
        vim.cmd [[
          highlight IndentLine guifg=#402040
        ]]
        vim.cmd [[
          highlight IndentLineCurrent guifg=#804080
        ]]
    end,
}
