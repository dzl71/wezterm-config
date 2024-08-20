local wezterm = require 'wezterm'
local utils = require("utils")
local config = {}

------------------------
-- configure the font --
------------------------

config.font = wezterm.font("JetBrains Mono Nerd Font")
config.font_size = 12.4

----------------------------
-- define the colorscheme --
----------------------------

config.color_scheme = 'kanagawabones'
config.window_background_opacity = 0.70

-- change some colors in the colorscneme
local colorscheme_change = {
	background = "#000000",
	-- do not change the text color inside the seleciton
	selection_fg = 'none',
	selection_bg = '#2d4f67',
}

---------------------------
-- configure the tab bar --
---------------------------


-- join the changed colors into its place in the config
config.colors = utils.join({
	colorscheme_change,
})

return config
