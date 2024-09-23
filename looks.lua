local wezterm = require 'wezterm'
local utils = require("utils")
local config = {}

------------------------
-- configure the font --
------------------------

config.font = wezterm.font({
	family = "JetBrains Mono Nerd Font",
	-- remove ligatures from the font family
	-- harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
})
config.font_size = 12.4

----------------------------
-- define the colorscheme --
----------------------------

config.color_scheme = 'kanagawabones'
config.window_background_opacity = 0.4

-- change some colors in the colorscneme
local colorscheme_change = {
	background = "#000000",
	-- do not change the text color inside the seleciton
	selection_fg = 'none',
	selection_bg = '#2d4f67',
	-- the brights and ansi should be a vec of lenght 8
	brights = {
		"#838371",
		"#ec818c",
		"#9ec967",
		"#f1c982",
		"#7bc2df",
		"#a98fd2",
		"#7bc2df",
		"#a8a48d"
	},
}

---------------------------
-- configure the tab bar --
---------------------------


-- join the changed colors into its place in the config
config.colors = utils.join({
	colorscheme_change,
})

return config
