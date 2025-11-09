return {
    "dcampos/nvim-snippy",
    dependencies = { "dcampos/cmp-snippy" },
    event = "InsertEnter",
    config = function()
        local snippy = require("snippy")
        snippy.setup({
            mappings = {
                is = {
                    ["<Tab>"] = "expand_or_advance",
                    ["<S-Tab>"] = "previous",
                },
            },
        })
    end,
}
