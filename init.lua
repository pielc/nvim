vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
-- vim.cmd("set number")
vim.wo.relativenumber = true
vim.cmd("set cmdheight=0")

vim.g.mapleader = " "

require("config.lazy")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set('n', '<leader>e', ':Neotree position=float<CR>')

require('nvim-treesitter').setup ({
  ensure_installed = {"lua", "javascript"},
  highlight = { enable = true },
  indent = { enable = true },
})

local noirbuddy_lualine = require("noirbuddy.plugins.lualine")

require("lualine").setup {
  options = {
    theme = noirbuddy_lualine.theme,
  },
  sections = noirbuddy_lualine.sections,
  inactive_sections = noirbuddy_lualine.inactive_sections,
}
