return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		-- lazy = false, -- neo-tree will lazily load itself
	},
	{
		"jesseleite/noirbuddy.nvim",
		dependencies = {
			{ "tjdevries/colorbuddy.nvim" },
		},
		lazy = false,
		priority = 1000,
		opts = {
			-- All of your `setup(opts)` will go here when using lazy.nvim
			colors = {
				background = "#090B0F",
			},
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local noirbuddy_lualine = require("noirbuddy.plugins.lualine")
			require("lualine").setup({
				options = {
					theme = noirbuddy_lualine.theme,
				},
				sections = noirbuddy_lualine.sections,
				inactive_sections = noirbuddy_lualine.inactive_sections,
			})
		end,
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		opts = {
			transparent_bg = true,
			-- hi = {
			--   error = "DiagnosticWarn"
			-- },
			signs = {
				left = "",
				right = "",
				diag = "●",
				arrow = "    ",
				up_arrow = "    ",
				vertical = " │",
				vertical_end = " └",
			},
			blend = {
				factor = 0.22,
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				show_buffer_icons = false,
				show_close_icon = false,
				show_buffer_close_icons = false,
			},
			highlights = {
				buffer_selected = {
					fg = "#000000",
					bg = "#EA3387",
					bold = true,
					italic = false,
				},
				indicator_selected = {
					fg = "#EA3387",
					bg = "#EA3387",
				},
				fill = {
					bg = "#0E0F11",
				},
				background = {
					fg = "#888888",
					bg = "#0E0F11",
				},
				separator = {
					fg = "#0E0F11",
					bg = "#0E0F11",
				},
				separator_selected = {
					fg = "#0E0F11",
					bg = "#EA3387",
				},
				close_button = {
					bg = "#0E0F11",
				},
				close_button_selected = {
					bg = "#EA3387",
				},
				modified = {
					bg = "#0E0F11",
				},
				modified_selected = {
					bg = "#EA3387",
				},
			},
		},
	},
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
}
