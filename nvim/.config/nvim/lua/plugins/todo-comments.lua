return {
	"folke/todo-comments.nvim",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")

		todo_comments.setup({
			signs = false,
			keywords = {
				FIX = { color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
				TODO = { color = "info" },
				HACK = { color = "warning", alt = { "DON SKIP" } },
				WARN = { color = "warning", alt = { "WARNING", "XXX" } },
				NOTE = { color = "hint", alt = { "INFO", "READ", "COLORS" } },
				TEST = { color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
			},
		})
		-- keymaps
		vim.keymap.set("n", "]t", function()
			todo_comments.jump_next()
		end, { desc = "Next todo comment" })

		vim.keymap.set("n", "[t", function()
			todo_comments.jump_prev()
		end, { desc = "Previous todo comment" })
	end,
}
