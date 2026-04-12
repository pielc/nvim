return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    ensure_installed = {"lua", "javascript", "svelte"},
    highlight = { enable = true },
    indent = { enable = true },
  },
}
