local M = {}

M.name = vim.env.NVIM_ENV or "unknown"

M.toggleterm_size = { wsl = 90, multipass = 70, ft = 90, }
M.neotree_size = { wsl = 36, multipass = 30, ft = 36, }

M.clipboard = {
    wsl = {
        name = "WslClipboard",
        copy = {
            ["+"] = "clip.exe",
            ["*"] = "clip.exe",
        },
        paste = {
            ["+"] = "powershell.exe -c Get-Clipboard",
            ["*"] = "powershell.exe -c Get-Clipboard",
        },
        cache_enabled = 0,
    },

    multipass = {
        -- TODO: macOS host ↔ Ubuntu VM clipboard
    },

    ft = {
        -- Native Ubuntu clipboard
    },
}

return M
