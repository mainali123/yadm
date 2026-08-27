-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 1
local omarchy_monitor_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Secondary / External monitor placed ABOVE the laptop screen
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "auto-up", scale = omarchy_monitor_scale })

-- Fallback for internal laptop screen and any other connected monitors
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })
