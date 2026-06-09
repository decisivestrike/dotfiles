hl.layer_rule({
	name = "no-anim-for-selection",
	match = { namespace = "selection" },
	no_anim = true,
})

hl.layer_rule({
	name = "chameleon-panel",
	match = { namespace = "chameleon-panel" },

	blur = true,
	blur_popups = true,
	ignore_alpha = 0.2,
	animation = "fade",
})

hl.layer_rule({
	name = "chameleon-launcher",
	match = { namespace = "chameleon-launcher" },

	blur = true,
	blur_popups = true,
	ignore_alpha = 0.2,
	animation = "popin",
})

hl.layer_rule({
	name = "chameleon-notifications",
	match = { namespace = "chameleon-notifications" },

	blur = true,
	blur_popups = true,
	ignore_alpha = 0.2,
	animation = "slide right",
})
