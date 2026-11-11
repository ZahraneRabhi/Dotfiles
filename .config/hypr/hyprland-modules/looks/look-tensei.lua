-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = "rgba(1a1a2acc)",
            inactive_border = "rgba(8a847844)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 2,
        rounding_power = 2,
        active_opacity = 0.95,
        inactive_opacity = 0.82,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 14,
            render_power = 4,
            color = "rgba(1a1a2a99)",
        },
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.08,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = true,
        mouse_move_enables_dpms = false,
        animate_manual_resizes = true,
    },
})

hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve("panel", { type = "bezier", points = { {0.18, 1.0}, {0.22, 1} } })
hl.curve("slash", { type = "bezier", points = { {0.8, 0}, {1, 0.5} } })
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "easeOutQuint" })
hl.animation({ leaf = "border", enabled = true, speed = 8, bezier = "panel" })
hl.animation({ leaf = "windows", enabled = true, speed = 6.5, bezier = "panel" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.5, bezier = "panel", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.8, bezier = "slash", style = "slide" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.0, bezier = "panel" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.5, bezier = "slash" })
hl.animation({ leaf = "layers", enabled = true, speed = 5.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5.2, bezier = "panel", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.8, bezier = "slash", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.8, bezier = "easeInOutCubic", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.0, bezier = "panel", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.8, bezier = "slash", style = "slide" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 2, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
