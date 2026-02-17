return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        -- Set to 0 for instant completion, or higher to save CPU
        trigger = {
          prefetch_on_insert = false,
        },
        list = {
          selection = { preselect = true, auto_insert = true },
        },
        menu = {
          border = "rounded",
          winblend = 0,
          draw = {
            columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
          },
        },
        documentation = {
          auto_show = true,
          window = { border = "rounded" },
        },
      },
      -- Increase debounce to save CPU on low-spec machines
      keymap = {
        preset = "default",
        ["<C-y>"] = { "select_and_accept" },
      },
    },
  },

  -- LSP Performance Tuning
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Disable inlay hints by default for better performance on low-spec machines
      inlay_hints = { enabled = false },
      -- Performance settings for servers
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly", -- Only analyze open files to save RAM
              },
            },
          },
        },
      },
    },
  },
}
