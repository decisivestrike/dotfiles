hl.config({
	general = {
		gaps_in = 5,
		gaps_out = { top = 5, left = 10, right = 8, bottom = 10 },
		col = {
			active_border = "rgba(606060aa)",
			inactive_border = "rgba(404040aa)",
		},
		border_size = 0,
		layout = "dwindle",
		resize_on_border = true,
		extend_border_grab_area = 15,
		allow_tearing = false,
	},
	decoration = {
		rounding = 4,
		rounding_power = 4,
		blur = {
			enabled = true,
			size = 2,
			passes = 3,
			noise = 0.02,
			contrast = 0.6,
			vibrancy = 1,
			popups = true,
			popups_ignorealpha = 0.3,
		},
		shadow = {
			enabled = true,
			range = 8,
			render_power = 3,
			color = "rgba(22, 22, 22, 0.7)",
			offset = { 0, 1 },
			scale = 1.0,
		},
	},
	animations = {
		enabled = true,
		workspace_wraparound = false,
	},
	input = {
		kb_layout = "us,ru",
		kb_options = "caps:swapescape, grp:shifts_toggle",
		follow_mouse = 1,
		sensitivity = -0.9,
		scroll_factor = 1,

		touchpad = {
			natural_scroll = true,
		},
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		force_default_wallpaper = 0,
		font_family = "Iosevka Nerd Font",
		splash_font_family = "Iosevka Nerd Font",
	},
	binds = {
		scroll_event_delay = 100,
		workspace_back_and_forth = false,
		allow_workspace_cycles = false,
		movefocus_cycles_fullscreen = false,
	},
	xwayland = {
		force_zero_scaling = true,
	},
	cursor = {},
	-- Layouts
	dwindle = {
		force_split = 0,
		preserve_split = true,
	},
})
