return {
  -- Breadcrumbs
  {
    "Bekaboo/dropbar.nvim",
    event = "LazyFile",
    opts = {
      menu = {
        win_configs = {
          border = "rounded",
        },
      },
    },
  },

  -- Sidebar (Neo-tree) optimization
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- show hidden files by default
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true, -- follow the current file
        },
      },
      window = {
        width = 35,
        mappings = {
          ["<space>"] = "none",
        },
      },
    },
  },

  -- Fast jumping
  {
    "folke/flash.nvim",
    opts = {
      labels = "asdfghjklqwertyuiopzxcvbnm",
      search = {
        mode = "fuzzy",
      },
    },
  },
}
