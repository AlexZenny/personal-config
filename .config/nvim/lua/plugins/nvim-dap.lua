return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "mfussenegger/nvim-dap-python",
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local dap = require("dap")
            local dap_python = require("dap-python")
            local dapui = require("dapui")

            -- Configure DAP UI
            dapui.setup()

            -- Automatically manage the UI during debugging sessions
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end

            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end

            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end

            -- Python adapter: dedicated environment containing debugpy
            local debugpy_python = vim.fn.expand(
                "~/.venvs/nvim-debug/bin/python"
            )

            dap_python.setup(debugpy_python)

            -- Python launch configuration
            dap.configurations.python = {
                {
                    type = "python",
                    request = "launch",
                    name = "Launch current file",
                    program = "${file}",
                    pythonPath = function()
                        local venv = vim.env.VIRTUAL_ENV

                        if venv and venv ~= "" then
                            return venv .. "/bin/python"
                        end

                        return vim.fn.exepath("python3")
                    end,
                },
            }

            -- Debugging controls
            vim.keymap.set("n", "<F5>", dap.continue,
                { desc = "Debug: Continue" })
            vim.keymap.set("n", "<F6>", dap.step_over,
                { desc = "Debug: Step over" })
            vim.keymap.set("n", "<F7>", dap.step_into,
                { desc = "Debug: Step into" })
            vim.keymap.set("n", "<F8>", dap.step_out,
                { desc = "Debug: Step out" })

            vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint,
                { desc = "Debug: Toggle breakpoint" })

            vim.keymap.set("n", "<leader>B", function()
                dap.set_breakpoint(
                    vim.fn.input("Breakpoint condition: ")
                )
            end, { desc = "Debug: Conditional breakpoint" })

            vim.keymap.set("n", "<leader>dr", dap.repl.toggle,
                { desc = "Debug: Toggle REPL" })

            vim.keymap.set("n", "<leader>du", dapui.toggle,
                { desc = "Debug: Toggle UI" })

            vim.keymap.set("n", "<leader>dq", dap.terminate,
                { desc = "Debug: Terminate session" })
        end,
    },
}
