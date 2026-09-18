return {
        "nvim-lualine/lualine.nvim",
        dependencies = {
                "nvim-tree/nvim-web-devicons",
        },
        config = function()
                local colors = {
                        bg       = "#262424",
                        fg       = "#FAF2EB",
                        yellow   = "#F0AD62", -- softened #EDA356
                        cyan     = "#7AC7D9",
                        darkblue = "#3D5A80",
                        green    = "#7BC275",
                        orange   = "#EDA356",
                        violet   = "#B48EEC",
                        magenta  = "#D67AD2",
                        blue     = "#6CA6F0",
                        red      = "#87AFD7",
                }

                local my_theme = {
                        normal = {
                                a = { fg = colors.bg, bg = "#EDA356", gui = "bold" },
                                b = { fg = colors.fg, bg = "#2A2F3A" },
                                c = { fg = colors.fg, bg = colors.bg },
                        },

                        insert = {
                                a = { fg = "#262424", bg = "#87AFD7", gui = "bold" },
                        },

                        visual = {
                                a = { fg = "#262424", bg = "#FAF2EB", gui = "bold" },
                        },

                        replace = {
                                a = { fg = "#262424", bg = "#B48EEC", gui = "bold" },
                        },

                        command = {
                                a = { fg = "#262424", bg = "#7AC7D9", gui = "bold" },
                        },

                        terminal = {
                                a = { fg = "#262424", bg = "#4CB963", gui = "bold" },
                        },

                        inactive = {
                                a = { fg = "#7A818E", bg = colors.bg, gui = "bold" },
                                b = { fg = "#7A818E", bg = colors.bg },
                                c = { fg = "#7A818E", bg = colors.bg },
                        },
                }

                local function cursor_info()
                        local row, col = unpack(vim.api.nvim_win_get_cursor(0))

                        -- Global character offset from the beginning of the file
                        local global = vim.api.nvim_buf_get_offset(0, row - 1) + col + 1

                        -- Character position on current line
                        local line_char = col + 1

                        return string.format("Ln %d, Col %d │ Char %d", row, line_char, global)
                end

                require("lualine").setup({
                        options = {
                                theme = my_theme,
                                component_separators = { left = "", right = "" },
                                section_separators = { left = "", right = "" },
                                globalstatus = true,
                                disabled_filetypes = {
                                        statusline = { "dashboard", "alpha", "starter" },
                                },
                        },

                        sections = {
                                lualine_a = { "mode" },
                                lualine_b = { "branch", "diff" },
                                lualine_c = {
                                        {
                                                "filename",
                                                path = 1,
                                        },
                                },
                                lualine_x = {
                                        "diagnostics",
                                },
                                lualine_y = {},
                                lualine_z = {
                                        cursor_info,
                                },
                        },

                        inactive_sections = {
                                lualine_a = {},
                                lualine_b = {},
                                lualine_c = { "filename" },
                                lualine_x = {
                                        cursor_info,
                                },
                                lualine_y = {},
                                lualine_z = {},
                        },
                })
        end,
}
