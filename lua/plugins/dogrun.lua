return {
  {
    "wadackel/vim-dogrun",
    priority = 1000, -- load before other UI plugins
    config = function()
      vim.cmd("colorscheme dogrun")
    end,
  },
}
