return {
	{
		"folke/tokyonight.nvim",
		name = "folkeTokyonight",
		priority = 1000,
		config = function()
			local transparent = true
			require("tokyonight").setup({
				style = "night",
				transparent = transparent,

				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},
			})
			-- vim.cmd("colorscheme tokyonight")
		end,
	},
	{
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({
				transparent = true,
				italic = false,
			})
			vim.cmd("colorscheme vague")
		end,
	},
}
