return {
	"neovim/nvim-lspconfig",

	config = function()
		----------------------------------------------------------------
		-- Language servers
		----------------------------------------------------------------

		vim.lsp.enable("clangd")
		vim.lsp.enable("pyright")

		----------------------------------------------------------------
		-- LSP
		----------------------------------------------------------------

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if not client then
					return
				end

				local opts = {
					buffer = args.buf,
					silent = true,
				}

				----------------------------------------------------------------
				-- Navigation
				----------------------------------------------------------------

				vim.keymap.set(
					"n",
					"K",
					vim.lsp.buf.hover,
					opts
				)

				vim.keymap.set(
					"n",
					"gd",
					vim.lsp.buf.definition,
					opts
				)

				vim.keymap.set(
					"n",
					"gD",
					vim.lsp.buf.declaration,
					opts
				)

				vim.keymap.set(
					"n",
					"gr",
					vim.lsp.buf.references,
					opts
				)

				----------------------------------------------------------------
				-- Actions
				----------------------------------------------------------------

				vim.keymap.set(
					"n",
					"<leader>rn",
					vim.lsp.buf.rename,
					opts
				)

				vim.keymap.set(
					"n",
					"<leader>ca",
					vim.lsp.buf.code_action,
					opts
				)

				----------------------------------------------------------------
				-- Signature help
				----------------------------------------------------------------

				vim.keymap.set(
					"i",
					"<C-k>",
					vim.lsp.buf.signature_help,
					opts
				)

				----------------------------------------------------------------
				-- Diagnostics
				----------------------------------------------------------------

				vim.keymap.set(
					"n",
					"<leader>d",
					vim.diagnostic.open_float,
					opts
				)

				vim.keymap.set(
					"n",
					"[d",
					vim.diagnostic.goto_prev,
					opts
				)

				vim.keymap.set(
					"n",
					"]d",
					vim.diagnostic.goto_next,
					opts
				)
			end,
		})
	end,
}
