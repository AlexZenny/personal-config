local M = {}

M.name = vim.env.CUR_PLAT or "unknown"
M.scheme = vim.env.CUR_SCHEME or "unknown"

M.toggleterm_size = { WSL = 90, YOGA = 70, FT = 90, }
M.neotree_size = { WSL = 36, YOGA = 30, FT = 36, }

M.clipboard = {
    WSL = {
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

    FT = {
        -- Native Ubuntu clipboard
    },
}

return M
