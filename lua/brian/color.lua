local hl = vim.api.nvim_set_hl

function _G.SetColor(color)
    color = color or "carbonfox"
    vim.cmd.colorscheme(color)
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
    hl(0, "PmenuSel",      { bg = "#3c3c3c" })
    hl(0, "LspInlayHint",  { fg = "#FF40FF", bg = "none" })

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
end

local themes = {
    "carbonfox", "duskfox", "nightfox", "habamax", "sorbet", "terafox",
    "nordfox", "wildcharm", "tokyonight-moon", "tokyonight-storm",
    "tokyonight-night"
}

local current = 1
vim.keymap.set("n", "<leader>c", function() CycleColor() end, { silent = true })
vim.keymap.set("n", "<leader>tc", ":Telescope colorscheme<CR>")

function _G.CycleColor()
    current = current % #themes + 1
    SetColor(themes[current])
    print("Switched to: " .. vim.g.colors_name)
end

SetColor("carbonfox")
