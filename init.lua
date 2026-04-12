vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
-- vim.cmd("set number")
vim.wo.relativenumber = true
vim.cmd("set cmdheight=0")

vim.cmd("autocmd BufNewFile,BufRead *.svelte setf svelte")

vim.g.mapleader = " "

require("config.lazy")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set('n', '<leader>e', ':Neotree position=float<CR>')
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>')


vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'svelte' },
  callback = function() vim.treesitter.start() end,
})
