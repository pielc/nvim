return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"saghen/blink.cmp",
		version = "*",
		opts = {
			keymap = {
				preset = "default",
				["<Tab>"] = { "accept", "fallback" },
				["<CR>"] = { "accept", "fallback" },
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				svelte = { "prettierd" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				css = { "prettierd" },
				html = { "prettierd" },
			},
			-- format_on_save = {
			-- 	timeout_ms = 2000,
			-- 	lsp_format = "fallback",
			-- },
		},
	},
}
