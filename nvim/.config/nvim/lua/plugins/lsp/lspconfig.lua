return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- Define sign icons for each severity
		local signs = {
			[vim.diagnostic.severity.ERROR] = "E",
			[vim.diagnostic.severity.WARN] = "W",
			[vim.diagnostic.severity.HINT] = "H",
			[vim.diagnostic.severity.INFO] = "I",
		}

		-- Set diagnostic config
		vim.diagnostic.config({
			signs = {
				text = signs,
			},
			virtual_text = true,
			underline = true,
			update_in_insert = false,
		})

		-- Setup capabilities
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Global LSP config
		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- Setup lua_ls
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					completion = {
						callSnippet = "Replace",
					},
					workspace = {
						checkThirdParty = false,
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
							-- ["${3rd}/love2d/library"] = true,
						},
					},
				},
			},
		})
		vim.lsp.enable("lua_ls")

		-- TS: typescript-language-server
		vim.lsp.config("ts_ls", {
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue"
			},
			single_file_support = true,
			init_options = {
				preferences = {
					includeCompletionsForModuleExports = true,
					includeCompletionsForImportStatements = true,
				},
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = vim.fn.stdpath("data")
							.. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
						languages = { "vue" },
					},
				},
			},
		})
		vim.lsp.enable("ts_ls")

		-- Tailwindcss: tailwind-language-server
		vim.lsp.config("tailwindcss", {
			settings = {},
		})
		vim.lsp.enable("tailwindcss")

		-- CSS: css-lsp
		vim.lsp.config("cssls", {
			settings = {
				css = {
					validate = true,
					lint = {
						unknownAtRules = "ignore",
					},
				},
				scss = {
					validate = true,
					lint = {
						unknownAtRules = "ignore",
					},
				},
				less = {
					validate = true,
					lint = {
						unknownAtRules = "ignore",
					},
				},
			},
		})
		vim.lsp.enable("cssls")

		-- PHP: Intelephense
		vim.lsp.config("intelephense", {
			settings = {
				intelephense = {
					telemetry = {
						enabled = false,
					},
				},
			},
			init_options = {
				globalStoragePath = os.getenv("HOME") .. "/.local/share/intelephense",
			},
		})
		vim.lsp.enable("intelephense")

		-- GO: gopls
		vim.lsp.config("gopls", {
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
					gofumpt = true,
				},
			},
		})
		vim.lsp.enable("gopls")

		-- Vue: vue-language-server
		vim.lsp.config("vue_ls", {})
		vim.lsp.enable("vue_ls")
	end,
}
