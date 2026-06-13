local sh = hl.exec_cmd
local apps = require("hyprland.apps")

hl.on("hyprland.start", function()
	sh("awww-daemon")
	sh("hypridle")
	sh("hyprsunset")
	sh(apps.notification_daemon)
	sh(apps.launcher)
	sh(apps.panel)
	sh(apps.terminal)
	sh("systemctl --user start hyprpolkitagent")
	sh("bash ~/.config/hypr/scripts/restart_xdph.sh")
end)
