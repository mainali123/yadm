return {
  -- Nightfox colorscheme
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = false, -- Disable setting background
        terminal_colors = true, -- Set terminal colors (msys2 and guifont and win32 excluded)
        dim_inactive = false, -- Non-focused windows shadowed
        module_default = true, -- Default enable value for modules
        styles = { -- Style to be applied to different syntax groups
          comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
          conditionals = "NONE",
          constants = "NONE",
          functions = "NONE",
          keywords = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
          variables = "NONE",
        },
        inverse = { -- Inverse highlight for different types
          match_paren = false,
          visual = false,
          search = false,
        },
      },
      groups = {
        all = {
          NormalFloat = { bg = "palette.bg0" },
          FloatBorder = { fg = "palette.blue", bg = "palette.bg0" },
          CursorLine = { bg = "palette.bg1" },
          Folded = { fg = "palette.fg3", bg = "palette.bg1" }, -- UFO folded lines
          UfoFoldedFg = { fg = "palette.fg1" },
          UfoFoldedBg = { bg = "palette.bg1" },
          AerialNormal = { bg = "palette.bg0" },
          AerialLine = { bg = "palette.bg1", fg = "palette.blue" },
          BlinkCmpMenu = { bg = "palette.bg0" },
          BlinkCmpMenuBorder = { fg = "palette.blue", bg = "palette.bg0" },
          BlinkCmpDoc = { bg = "palette.bg0" },
          BlinkCmpDocBorder = { fg = "palette.blue", bg = "palette.bg0" },
          BlinkCmpLabelMatch = { fg = "palette.blue", style = "bold" },
        },
      },
    },
  },

  -- Configure LazyVim to load carbonfox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
    },
  },
}
