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
      { "tjdevries/colorbuddy.nvim" }
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
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local noirbuddy_lualine = require("noirbuddy.plugins.lualine")
      require("lualine").setup({
        options = {
          theme = noirbuddy_lualine.theme,
        },
        sections = noirbuddy_lualine.sections,
        inactive_sections = noirbuddy_lualine.inactive_sections,
      })
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }
}

