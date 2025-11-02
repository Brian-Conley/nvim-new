--vim.cmd[[colorscheme tokyonight-night]]

require("nightfox").setup({
  style = "carbonfox",  -- Use the Carbonfox variant
})

function SetColor(color)
	color = color or "nightfox"
	vim.cmd.colorscheme(color)

    -- Then remove background from key highlight groups
    vim.api.nvim_set_hl(0, "Normal",        { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC",      { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat",   { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder",   { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatTitle",    { bg = "none" })
    vim.api.nvim_set_hl(0, "WinSeparator",  { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLine",    { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLineNC",  { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn",    { bg = "none" })
    vim.api.nvim_set_hl(0, "VertSplit",     { bg = "none" })
    vim.api.nvim_set_hl(0, "Pmenu",         { bg = "none" })
    vim.api.nvim_set_hl(0, "PmenuSel",      { bg = "none" })

	--vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	--vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

SetColor()

vim.cmd [[
  highlight ColorColumn ctermbg=DarkGrey guibg=#3c3c3c
]]

vim.cmd.highlight('IndentLine guifg=#402040')
vim.cmd.highlight('IndentLineCurrent guifg=#804080')
