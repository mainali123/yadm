return {
  {
    "supermaven-inc/supermaven-nvim",
    event = "VeryLazy",
    opts = {
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      ignore_filetypes = { "bigfile", "log" }, -- Don't run on logs or huge files to save CPU
      color = {
        suggestion_color = "#565f89", -- Subtle gray for ghost text (matching Carbonfox palette)
        cterm = 244,
      },
      disable_inline_completion = false, -- We want the ghost text
      disable_keymaps = false,
      log_level = "off", -- Disable logging to save IO/CPU
    },
  },
}
