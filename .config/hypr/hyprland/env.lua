local env = hl.env

env("XCURSOR_THEME", "MacTahoe-dark")
env("XCURSOR_SIZE", "28")

env("XDG_CURRENT_DESKTOP", "Hyprland")
env("XDG_SESSION_TYPE", "wayland")
env("XDG_SESSION_DESKTOP", "Hyprland")

env("QT_QPA_PLATFORM", "wayland")
env("QT_QPA_PLATFORMTHEME", "qt6ct")
env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
env("QT_STYLE_OVERRIDE", "kvantum")

env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
env("GDK_BACKEND", "wayland")
