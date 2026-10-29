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
		rounding = 8,
		rounding_power = 4,
		blur = {
			enabled = true,

			brightness = 0.5,
			contrast = 0.9,
			noise = 0.02,

			vibrancy = 0.5,
			vibrancy_darkness = 0.5,

			passes = 2,
			size = 10,

			popups = true,
			popups_ignorealpha = 0.3,

			variant = "haze",
			special = false,

			acrylic = {
				aberration = 0.05,
				bulb = 8,
				clarity = 0.1,
				refraction = 48,
				tint = "0x14EEF5FF",
			},
			aurora = {
				intensity = 1,
			},
			haze = {
				intensity = 0.5,
				iridescence = 0.8,
			},
		},
		shadow = {
			enabled = true,
			range = 8,
			render_power = 3,
			color = "rgba(22, 22, 22, 0.7)",
			offset = { 0, 1 },
			scale = 1.0,
		},
		motion_blur = {
			enabled = true,
			samples = 7,
		},
		wobble = {
			damping = 24,
			mass = 100,
			intensity = 1,
			enabled = false,
		},
	},
	animations = {
		enabled = true,
		workspace_wraparound = false,
	},
	input = {
		accel_profile = "flat",
		kb_layout = "us,ru",
		kb_options = "caps:swapescape, grp:shifts_toggle",
		follow_mouse = 1,
		sensitivity = -0.2,
		scroll_factor = 1.5,
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		force_default_wallpaper = 0,
		font_family = "Iosevka Nerd Font",
		splash_font_family = "Iosevka Nerd Font",
	},
	binds = {
		scroll_event_delay = 200,
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
