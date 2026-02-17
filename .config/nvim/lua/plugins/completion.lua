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
          -- VS Code behavior: don't automatically insert or preselect
          selection = { preselect = false, auto_insert = false },
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
      -- VS Code keymaps: Enter to accept, Tab to navigate
      keymap = {
        preset = "enter",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
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
