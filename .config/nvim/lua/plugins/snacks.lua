return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      animate = { enabled = false },
      picker = {
        enabled = true,
        layout = { preset = "telescope" },
        matcher = {
          fuzzy = true,
          smartcase = true,
          ignorecase = true,
        },
        sources = {
          grep = { regex = false },
          grep_buffers = { regex = false },
        },
      },
      terminal = {
        win = {
          style = "terminal",
          position = "float",
          border = "rounded",
          width = 0.9,
          height = 0.9,
        },
      },
      dashboard = {
        enabled = true,
        preset = {
          header = [[

███╗   ██╗██╗   ██╗██╗  ██╗██████╗  █████╗ ██╗     ██╗███████╗
████╗  ██║╚██╗ ██╔╝╚██╗██╔╝██╔══██╗██╔══██╗██║     ██║██╔════╝
██╔██╗ ██║ ╚████╔╝  ╚███╔╝ ██████╔╝███████║██║     ██║███████╗
██║╚██╗██║  ╚██╔╝   ██╔██╗ ██╔══██╗██╔══██║██║     ██║╚════██║
██║ ╚████║   ██║   ██╔╝ ██╗██║  ██║██║  ██║███████╗██║███████║
╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚══════╝

“My name is Nyxralis. Remember it, for it is the last sound many stars ever hear.”

          ]]
        },
      },
    },
    keys = {
      { "<leader>ts", function() Snacks.terminal.toggle(nil, { id = "scratchpad" }) end, mode = { "n", "t" }, desc = "Scratchpad Terminal" },
      { "<c-/>",      function() Snacks.terminal.toggle(nil, { id = "scratchpad" }) end, mode = { "n", "t" }, desc = "Toggle Scratchpad Terminal" },
      { "<c-_>",      function() Snacks.terminal.toggle(nil, { id = "scratchpad" }) end, mode = { "n", "t" }, desc = "which_key_ignore" },
    },
  },
}
