-- Keep only your personal input overrides here. Uncommented settings below
-- replace Omarchy's defaults.

-- Keyboard and Touchpad options.
-- See https://wiki.hypr.land/Configuring/Basics/Variables/#input
hl.config({
  input = {
    kb_options = "compose:caps",
    repeat_rate = 40,
    repeat_delay = 250,
    numlock_by_default = true,

    touchpad = {
      -- Turn off natural (inverse) scrolling for traditional scrolling
      natural_scroll = false,

      -- Use two-finger clicks for right-click instead of lower-right corner
      clickfinger_behavior = true,

      -- Control the speed of your scrolling
      scroll_factor = 0.4,
    },
  },
})

-- Scroll nicely in terminal emulators
o.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
