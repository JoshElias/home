-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "One Half Black (Gogh)"
config.font = wezterm.font("JetBrainsMono NFP")

config.hide_tab_bar_if_only_one_tab = true
config.warn_about_missing_glyphs = false

config.cursor_blink_rate = 800
config.enable_wayland = true

-- and finally, return the configuration to wezterm
return config
