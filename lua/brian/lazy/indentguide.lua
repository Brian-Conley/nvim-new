return {
    "nvimdev/indentmini.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("indentmini").setup({
            minlevel = 2
        })
    end,
}
