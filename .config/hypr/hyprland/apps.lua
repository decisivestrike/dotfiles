local M = {}

M.terminal = "alacritty"
M.file_manager = "nautilus"
M.color_picker = "hyprpicker -a --format=rgb -t -d"

M.shell = "chameleon"
local style_path = "~/.config/chameleon/themes/material.css"

M.launcher = "chameleon-launcher -s " .. style_path
M.notification_daemon = "chameleon-notifications -s " .. style_path
M.panel = "chameleon-panel -s " .. style_path

return M
