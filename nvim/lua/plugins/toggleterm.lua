local platform = require("config.platform")

return {
    "akinsho/toggleterm.nvim",

    version = "*",

    config = function()
        require("toggleterm").setup({
            size = platform.toggleterm_size[platform.name],
			direction = "vertical",
            start_in_insert = true,
            insert_mappings = true,
            terminal_mappings = true,
            persist_size = true,
            close_on_exit = true,
            shade_terminals = false,
        })

        local Terminal = require("toggleterm.terminal").Terminal

        local term = Terminal:new({
            direction = "vertical",

            on_open = function()
                vim.cmd("startinsert!")
            end,
        })

        function _G.toggle_project_terminal()
            term.dir = vim.fn.expand("%:p:h")
            term:toggle()
        end

        vim.keymap.set("n", "<C-t>", "<cmd>lua toggle_project_terminal()<CR>", {
            desc = "Toggle terminal",
            silent = true,
        })
    end,
}
