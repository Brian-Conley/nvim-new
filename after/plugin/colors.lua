--vim.cmd[[colorscheme tokyonight-night]]

require("nightfox").setup({
  style = "carbonfox",  -- Use the Carbonfox variant
})

function SetColor(color)
	color = color or "nightfox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

SetColor()

vim.cmd [[
  highlight ColorColumn ctermbg=DarkGrey guibg=#3c3c3c
]]
