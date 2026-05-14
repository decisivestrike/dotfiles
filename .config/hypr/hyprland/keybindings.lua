local bind = hl.bind
local window = hl.dsp.window
local focus = hl.dsp.focus

local shared = require("hyprland.shared")
local terminal = shared.terminal
local file_manager = shared.file_manager

local main_mod = "SUPER"

bind(main_mod .. " + Q", window.close())

bind(main_mod .. " + F", function()
	local win = hl.get_active_window()

	if win == nil then
		hl.dispatch(
			hl.dsp.exec_raw("notify-send -t 2000 'Nothing to fullscreen, you dummy!'")
		)
	else
		hl.dispatch(window.fullscreen({ mode = "fullscreen" }))
	end
end, { description = "Toggle fullscreen" })

bind(main_mod .. " + V", function()
	local win = hl.get_active_window()

	if win == nil then
		-- hl.exec_cmd('notify-send -t 2000 "Nothing can\'t be float!"')
		hl.dispatch(hl.dsp.exec_raw('notify-send -t 2000 "Nothing can\'t be float!"'))
	elseif win.floating then
		hl.dispatch(window.float({ action = "unset" }))
	else
		hl.dispatch(window.float({ action = "set" }))
		hl.dispatch(window.resize({ x = 1760, y = 990 }))
		hl.dispatch(window.center())
	end
end, { description = "Toggle floating" })

-- Layout
bind(main_mod .. " + P", window.pseudo())
bind(main_mod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Utils
bind(main_mod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- Program shortcuts
bind(main_mod .. " + E", hl.dsp.exec_cmd(file_manager))
bind(main_mod .. " + T", hl.dsp.exec_cmd(terminal))

-- Pass
-- hl.bind(mainMod .. " + F10", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$" }))
bind(
	main_mod .. " + M",
	hl.dsp.send_shortcut({ mods = main_mod, key = "SHIFT + M", window = "class:discord" })
)

-- Scripts
hl.bind(
	main_mod .. "+ SHIFT + W",
	hl.dsp.exec_raw("bash -c ~/.config/hypr/scripts/change_wallpaper.sh")
)
hl.bind(main_mod .. "+ RETURN", hl.dsp.exec_raw("~/.chameleon/bin/chameleon-launcher -t"))

-- Move focus
bind(main_mod .. " + left", focus({ direction = "left" }))
bind(main_mod .. " + right", focus({ direction = "right" }))
bind(main_mod .. " + up", focus({ direction = "up" }))
bind(main_mod .. " + down", focus({ direction = "down" }))

-- Swap window
bind(main_mod .. "+ SHIFT + left", window.swap({ direction = "left" }))
bind(main_mod .. "+ SHIFT + right", window.swap({ direction = "right" }))
bind(main_mod .. "+ SHIFT + up", window.swap({ direction = "up" }))
bind(main_mod .. "+ SHIFT + down", window.swap({ direction = "down" }))

-- Resize window

---@param x number
---@param y number
---@return HL.Dispatcher
local function resize(x, y)
	return window.resize({ x = x, y = y, relative = true })
end

bind(main_mod .. "+ CTRL + left", resize(-24, 0), { repeating = true })
bind(main_mod .. "+ CTRL + right", resize(24, 0), { repeating = true })
bind(main_mod .. "+ CTRL + up", resize(0, 24), { repeating = true })
bind(main_mod .. "+ CTRL + down", resize(0, -24), { repeating = true })

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(main_mod .. " + " .. key, focus({ workspace = i }))
	hl.bind(main_mod .. " + SHIFT + " .. key, window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(main_mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(main_mod .. " + SHIFT + S", window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(main_mod .. " + mouse_down", focus({ workspace = "r+1" }))
hl.bind(main_mod .. " + mouse_up", focus({ workspace = "r-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(main_mod .. " + mouse:272", window.drag(), { mouse = true })
hl.bind(main_mod .. " + mouse:273", window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
	{ locked = true, repeating = true }
)

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
