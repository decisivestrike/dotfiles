local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	-- Disable blur for xwayland context menus
	name = "disable-xwayland-menus-blur",
	match = { class = "^()$", title = "^()$" },

	no_blur = true,
})

hl.window_rule({
	name = "terminal-border",
	match = { class = "(kitty|com.mitchellh.ghostty)" },

	border_size = 1,
})

hl.window_rule({
	name = "steam",
	match = { class = "steam" },

	rounding = 0,
	no_shadow = true,
})

hl.window_rule({
	name = "chrome-screenshare",
	match = {
		title = "(Приложение .* предоставило доступ к окну.|Приложению .* предоставлен доступ к вашему экрану.)",
	},

	no_blur = true,
	no_shadow = true,
})

hl.window_rule({
	name = "pavucontrol",
	match = {
		class = "^org.pulseaudio.pavucontrol$",
	},

	size = "900 600",
	center = true,
	float = true,
})

hl.window_rule({
	name = "gtk-file-picker",
	match = {
		class = "^xdg-desktop-portal-gtk$",
	},

	size = "1080 800",
	center = true,
	float = true,
})

hl.window_rule({
	name = "fix-megabonk-scroll-factor",
	match = {
		class = "^Megabonk.x86_64$",
		title = "^Megabonk$",
	},

	scroll_mouse = 10,
})
