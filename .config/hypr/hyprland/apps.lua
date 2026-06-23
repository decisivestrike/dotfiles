local M = {}

M.terminal = "kitty"
M.file_manager = "nautilus"
M.color_picker = "hyprpicker -a --format=rgb -t -d"

local chameleon_bin = "~/.chameleon/bin/"
M.shell = "chameleon"
local style_path = "~/.config/chameleon/themes/material.css"

M.launcher = chameleon_bin .. "chameleon-launcher -s " .. style_path
M.notification_daemon = chameleon_bin .. "chameleon-notifications -s " .. style_path
M.panel = chameleon_bin .. "chameleon-panel -s " .. style_path

return M
