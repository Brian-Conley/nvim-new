return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("nightfox").setup({
            style = "carbonfox",
        })
    end
}
