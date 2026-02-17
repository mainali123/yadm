return {
  -- Mason for managing LSPs, Linters, and Formatters
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },

  -- Auto-install LSPs based on file extension
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
    },
  },

  -- Ensure standard servers are always present for your core workflow
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- LazyVim will automatically setup servers installed with mason-lspconfig
      servers = {
        -- Data Engineering Essentials
        pyright = {}, -- Python logic
        ruff = {},    -- Python ultra-fast linting
        sqlls = {},   -- SQL
        
        -- Web Essentials
        html = {},
        cssls = {},
        jsonls = {},
      },
    },
  },
}
