local sh = hl.exec_cmd

hl.monitor({
	output = "DP-1",
	mode = "1920x1080@143.60Hz",
	position = "0x0",
	scale = 1,
})

local shared = require("hyprland.shared")

-- AUTOSTART --
hl.on("hyprland.start", function()
	sh("xray -c ~/.config/xray/config.json")
	sh("awww-daemon")
	sh("hypridle")
	sh("hyprsunset")
	sh(shared.notification_daemon)
	sh(shared.launcher)
	sh(shared.panel)
	sh(shared.terminal)
end)

-- ENVIRONMENT VARIABLES --
local env = hl.env

env("XCURSOR_THEME", "MacTahoe-dark")
env("XCURSOR_SIZE", "28")

env("QT_QPA_PLATFORM", "wayland")
env("QT_QPA_PLATFORMTHEME", "qt6ct")
env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
env("QT_STYLE_OVERRIDE", "kvantum")

env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")

-- CONFIG --
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
})

require("hyprland.animations")
require("hyprland.gestures")
require("hyprland.keybindings")
require("hyprland.layerrules")
require("hyprland.windowrules")
