return {
    "folke/flash.nvim",

    event = "VeryLazy",

    opts = {
        labels = "asdfghjklqwertyuiopzxcvbnm",

        modes = {
            search = {
                enabled = true,
            },

            char = {
                enabled = true,
                jump_labels = true,
                multi_line = true,
            },

            treesitter = {
                labels = "abcdefghijklmnopqrstuvwxyz",
            },
        },
    },

    keys = {
        {
            "s",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump()
            end,
            desc = "Flash jump",
        },

        {
            "S",
            mode = { "n", "x", "o" },
            function()
                require("flash").treesitter()
            end,
            desc = "Flash Treesitter",
        },

        {
            "r",
            mode = "o",
            function()
                require("flash").remote()
            end,
            desc = "Remote Flash",
        },

        {
            "<C-s>",
            mode = { "c" },
            function()
                require("flash").toggle()
            end,
            desc = "Toggle Flash Search",
        },
    },
}
