local wezterm = require("wezterm")
local config = {}

-- Use config builder object if possible
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Colorscheme
config.color_scheme = "Gruvbox Dark (Gogh)"
config.term = "xterm-256color"
config.colors = {
	tab_bar = {
		background = "#333333", -- Background for the entire tab bar

		active_tab = {
			bg_color = "#ad8434",
			fg_color = "#272727",
		},

		inactive_tab = {
			bg_color = "#333333",
			fg_color = "#d79921",
		},

		inactive_tab_hover = {
			bg_color = "#454545",
			fg_color = "#d79921",
		},

		new_tab = {
			bg_color = "#333333",
			fg_color = "#d79921",
		},

		new_tab_hover = {
			bg_color = "#454545",
			fg_color = "#d79921",
		},
	},
}

-- Shell
config.default_prog = { "pwsh.exe", "-NoLogo" }

-- Fonts
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font("JetBrainsMonoNL Nerd Font", {
			weight = "Bold",
			style = "Normal",
		}),
	},
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font("JetBrainsMonoNL Nerd Font", {
			weight = "Bold",
			style = "Italic",
		}),
	},
}
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
	top = 10,
	bottom = 0,
	left = 10,
	right = 10,
}
config.tab_bar_at_bottom = true
config.tab_and_split_indices_are_zero_based = false
config.use_fancy_tab_bar = false

-- Cursor
config.default_cursor_style = "SteadyBlock"
config.animation_fps = 1
config.cursor_blink_rate = 600

-- Others
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.enable_kitty_graphics = true

-- Keymaps
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{ key = "a", mods = "LEADER|CTRL", action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }) },
	{ key = "f", mods = "LEADER", action = wezterm.action.ToggleFullScreen },

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
		mods = "LEADER|CTRL",
		key = "LeftArrow",
		action = wezterm.action.AdjustPaneSize({ "Left", 2 }),
	},
	{
		mods = "LEADER|CTRL",
		key = "RightArrow",
		action = wezterm.action.AdjustPaneSize({ "Right", 2 }),
	},
	{
		mods = "LEADER|CTRL",
		key = "DownArrow",
		action = wezterm.action.AdjustPaneSize({ "Down", 2 }),
	},
	{
		mods = "LEADER|CTRL",
		key = "UpArrow",
		action = wezterm.action.AdjustPaneSize({ "Up", 2 }),
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
}

for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
