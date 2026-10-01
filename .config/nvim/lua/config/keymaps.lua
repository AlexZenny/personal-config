vim.keymap.set("n", "<C-n>", function()
	vim.opt.number = not vim.opt.number:get()
end, {
	desc = "Toggle line numbers",
	silent = true,
})
