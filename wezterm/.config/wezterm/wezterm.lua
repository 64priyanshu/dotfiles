local wezterm = require("wezterm")
local config = {}

-- Use config builder object if possible
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Colorscheme
config.color_scheme = "wezterm-theme"
config.term = "xterm-256color"
config.bold_brightens_ansi_colors = false

-- Shell
-- config.default_prog = { "pwsh.exe", "-NoLogo" }

-- Fonts
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
-- config.font_rules = {
-- 	{
-- 		intensity = "Bold",
-- 		italic = false,
-- 		font = wezterm.font("JetBrainsMonoNL Nerd Font", {
-- 			weight = "Bold",
-- 			style = "Normal",
-- 		}),
-- 	},
-- 	{
-- 		intensity = "Bold",
-- 		italic = true,
-- 		font = wezterm.font("JetBrainsMonoNL Nerd Font", {
-- 			weight = "Bold",
-- 			style = "Italic",
-- 		}),
-- 	},
-- }
config.font_size = 9.2
config.line_height = 1
config.adjust_window_size_when_changing_font_size = false

-- Window and Tabs
config.initial_rows = 30
config.initial_cols = 120
config.default_workspace = "home"
config.scrollback_lines = 3500
config.window_decorations = "RESIZE"
config.enable_scroll_bar = false
config.window_padding = {
	top = 15,
	bottom = 0,
	left = 5,
	right = 5,
}
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.tab_and_split_indices_are_zero_based = false
config.use_fancy_tab_bar = false

-- Cursor
config.default_cursor_style = "SteadyBlock"
config.animation_fps = 1
config.cursor_blink_rate = 500
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- Others
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.enable_kitty_graphics = true

-- Keymaps
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{ key = "a", mods = "LEADER|CTRL", action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }) },
	{ key = "f", mods = "LEADER", action = wezterm.action.ToggleFullScreen },
	-- Normally in Windows, terminals can't do the C-Space key combination and return NULL. Uncomment the below line to enable the keybinding.
	-- { key = "Space", mods = "CTRL", action = wezterm.action.SendKey({ key = "Space", mods = "CTRL" }) },
	{
		mods = "LEADER",
		key = "c",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "LEADER|SHIFT",
		key = "&",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "LEADER|SHIFT",
		key = "%",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER|SHIFT",
		key = '"',
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "LEADER",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "LEADER",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "LEADER",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "LeftArrow",
		action = wezterm.action.AdjustPaneSize({ "Left", 10 }),
	},
	{
		mods = "LEADER",
		key = "RightArrow",
		action = wezterm.action.AdjustPaneSize({ "Right", 10 }),
	},
	{
		mods = "LEADER",
		key = "DownArrow",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		mods = "LEADER",
		key = "UpArrow",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		mods = "LEADER",
		key = "p",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		mods = "LEADER",
		key = "n",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		mods = "LEADER",
		key = "P",
		action = wezterm.action.MoveTabRelative(-1),
	},
	{
		mods = "LEADER",
		key = "N",
		action = wezterm.action.MoveTabRelative(1),
	},
}

for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
