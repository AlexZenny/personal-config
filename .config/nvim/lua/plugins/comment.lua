return {
    "numToStr/Comment.nvim",

    config = function()
        require("Comment").setup({
            padding = true,
            sticky = true,
            mappings = {
                basic = false, -- Disable default gc/gb mappings
                extra = false,
            },
        })

        local api = require("Comment.api")

        -- Ctrl+K: Toggle comment on current line
        vim.keymap.set("n", "<C-k>", function()
            api.toggle.linewise.current()
        end, {
            desc = "Toggle comment",
            silent = true,
        })

        -- Ctrl+K: Toggle comment on selected lines
        vim.keymap.set("x", "<C-k>", function()
            vim.api.nvim_feedkeys(
                vim.api.nvim_replace_termcodes("<Esc>", true, false, true),
                "nx",
                false
            )
            api.toggle.linewise(vim.fn.visualmode())
        end, {
            desc = "Toggle comment",
            silent = true,
        })
    end,
}
