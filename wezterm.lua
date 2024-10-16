local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { "bash" }

config.enable_wayland = false

------------------------------
-- import utility funcitons --
------------------------------

local utils = require("utils")

---------------------------------
-- apply modules to the config --
---------------------------------

local looks = require("looks")
local keybindings = require("keybindings")

-- the modules should not be required from withing the join function
-- `return utils.join({ require("modname") })` is not allowed
return utils.join({
	config,
	looks,
	keybindings
})
