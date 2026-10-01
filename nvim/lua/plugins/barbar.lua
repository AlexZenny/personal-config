return {
        "romgrk/barbar.nvim",

        dependencies = {
                "nvim-tree/nvim-web-devicons",
        },

        lazy = false,

        keys = {
                {
                        "<Tab>",
                        "<Cmd>BufferNext<CR>",
                        desc = "Next buffer",
                },
                {
                        "<S-Tab>",
                        "<Cmd>BufferPrevious<CR>",
                        desc = "Previous buffer",
                },
                {
                        "<C-x>",
                        "<Cmd>BufferClose<CR>",
                        desc = "Close current buffer",
                },
        },

        config = function()
                require("barbar").setup({
					icons = {
						preset = "default",

						separator = {
								left = "",
								right = "",
						},

						separator_at_end = false,

						current = {
								buffer_index = true,
						},

						inactive = {
								button = "×",
						},
				},
                        maximum_padding = 1,
                        minimum_padding = 1,
                })
        end,
}
