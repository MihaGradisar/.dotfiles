return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				-- lua
				lua = { "stylua" },

				-- go
				go = { "goimports", "gofmt" },

				-- rust
				rust = { "rustfmt" },

				-- Web technologies
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				jsonc = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				scss = { "prettier" },

				-- php
				php = { "pint" },

				-- shell
				sh = { "shfmt" },
				bash = { "shfmt" },
			},
			-- format_on_save = {
			--     lsp_fallback = true,
			--     async = false,
			-- },
		})
		vim.keymap.set("n", "<leader>cf", function()
			require("conform").format()
		end, { noremap = true, silent = true })
	end,
}
