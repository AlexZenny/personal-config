-- Requirements ----------------------------------------------------
local p = require("config.platform")
require("config.colors")
require("config.lazy")
require("config.keymaps")
--------------------------------------------------------------------


-- 42 header -------------------------------------------------------
vim.g.user42 = "azieniuk"
vim.g.mail42 = "azieniuk@student.42warsaw.pl"
--------------------------------------------------------------------


-- Folds -----------------------------------------------------------
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldcolumn = "0"
vim.opt.fillchars = {
    eob = " ",
    fold = " ",
    foldopen = "▾",
    foldclose = "▸",
    foldsep = " ",
}
vim.opt.foldtext = "v:lua.MyFoldText"
function MyFoldText()
  local lines = vim.v.foldend - vim.v.foldstart + 1
    return "▸ " .. lines .. " lines"
end
vim.api.nvim_create_autocmd("BufWinLeave", {
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "" and vim.fn.expand("%:p") ~= "" then
            vim.cmd("mkview")
        end
    end,
})
vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "" and vim.fn.expand("%:p") ~= "" then
            vim.cmd("silent! loadview")
        end
    end,
})
---------------------------------------------------------------------


-- Tab behaviour ----------------------------------------------------
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
---------------------------------------------------------------------


-- Clipboard --------------------------------------------------------
local clipboard = p.clipboard[p.name]

if clipboard then
    vim.g.clipboard = clipboard
end

vim.opt.clipboard = ""

vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("i", "<C-v>", '<C-r>+')
---------------------------------------------------------------------


-- Misc -------------------------------------------------------------
vim.opt.termguicolors = true 
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.fillchars:append({eob = " ",})
vim.cmd("highlight Normal guibg=NONE")
vim.cmd("highlight NormalNC guibg=NONE")

vim.keymap.set("c", "q", function()
    return "qa"
end, { expr = true })
---------------------------------------------------------------------
