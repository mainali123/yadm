return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    config = function()
      require("tiny-inline-diagnostic").setup({
        signs = {
          left = "",
          right = "",
          diag = "●",
          arrow = "    ",
          up_arrow = "    ",
          vertical = " │",
          vertical_end = " └",
        },
        hi = {
          error = "DiagnosticError",
          warn = "DiagnosticWarn",
          info = "DiagnosticInfo",
          hint = "DiagnosticHint",
          arrow = "NonText",
          background = "CursorLine",
          mixing_color = "None",
        },
        blend = { factor = 0.27 },
        options = {
          show_source = true,
          throttle = 20,
          softwrap = 15,
          multiple_diag_under_cursor = true,
          multilines = false,
          overflow = { mode = "wrap" },
          format = function(diagnostic)
            local source = diagnostic.source or "LSP"
            return source .. ": " .. diagnostic.message
          end,
          break_line = { enabled = false, after = 30 },
          virt_texts = { priority = 2048 },
          severity = {
            vim.diagnostic.severity.ERROR,
            vim.diagnostic.severity.WARN,
            vim.diagnostic.severity.INFO,
            vim.diagnostic.severity.HINT,
          },
          overwrite_events = nil,
        },
      })
    end,
  },
}
