return {
    {
        "m4xshen/autoclose.nvim",
        opts = {
            options = {
                disabled_filetypes = { "text" },
                disable_when_touch = true,
                pair_spaces = true,
            }
        }
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                keymaps = {
                    normal = "gs",
                    normal_cur = "gss",
                }
            })
        end,
    }
}   
