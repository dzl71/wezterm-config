local wezterm = require("wezterm")
local config = {}

config.keys = {
	{
		mods = "SUPER",
		key = ';',
		action = wezterm.action.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
	},
	{
		mods = "SUPER",
		key = '\'',
		action = wezterm.action.SplitVertical({ domain = 'CurrentPaneDomain' }),
	},
	{
		mods = "CTRL|ALT|SHIFT",
		key = ':',
		action = wezterm.action.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
	},
	{
		mods = "CTRL|SHIFT",
		key = 'A',
		action = wezterm.action.PaneSelect({
			mode = "Activate",
		}),
	},
}

return config
