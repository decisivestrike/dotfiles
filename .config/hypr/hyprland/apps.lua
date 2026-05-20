local M = {}

M.terminal = "kitty"
M.file_manager = "nautilus"
M.color_picker = "hyprpicker -a --format=rgb -t -d"

local chameleon_bin = "~/.chameleon/bin/"

M.launcher = chameleon_bin .. "chameleon-launcher"
M.notification_daemon = chameleon_bin .. "chameleon-notifications"
M.panel = chameleon_bin .. "chameleon-panel"

return M
