local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.font_size = 8.0
config.font = wezterm.font('Fira Code', { weight = 'Bold' })
config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = "#444444",
			fg_color = "#e49b9b",
		},
	},
	foreground = "#dca9a9",
	background = "#444444",
	ansi = {
		"#70384A",
		"#ff4b57",
		"#feba8b",
		"#f5f26c",
		"#6ECDB8",
		"#6c90d4",
		"#b260c9",
		"#fb8ba3",
	},
	brights = {
		"#873c5a",
		"#f96772",
		"#fecfa3",
		"#fdf89b",
		"#99efa8",
		"#8ba0cb",
		"#c278d6",
		"#ffb2c8",
	},
	cursor_fg = "#444444",
	cursor_bg = "#e49b9b",
}
config.window_frame = {
	font_size = 8.0,
	font = wezterm.font('Fira Code', { weight = 'Bold' }),
	active_titlebar_bg = "#444444",
	inactive_titlebar_bg = "#444444",
}
config.enable_wayland = true
return config
