local platform = require("config.platform")

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    opts = {
        window = {
            width = platform.neotree_size[platform.name] or 30,
        },
    },

    keys = {
        {
            "<C-b>",
            "<Cmd>Neotree toggle<CR>",
            desc = "Toggle Neo-tree",
        },
    },
}
