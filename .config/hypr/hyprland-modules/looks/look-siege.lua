-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 2,
        col = {
            active_border = "rgba(d8d0c8cc)",
            inactive_border = "rgba(48404033)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 3,
        rounding_power = 2,
        active_opacity = 0.93,
        inactive_opacity = 0.78,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 24,
            render_power = 4,
            color = "rgba(101010ee)",
        },
        blur = {
            enabled = true,
            size = 4,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.06,
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
hl.curve("siege", { type = "bezier", points = { {0.05, 0.85}, {0.1, 1} } })
hl.curve("rout", { type = "bezier", points = { {0.7, 0}, {0.9, 0.1} } })
hl.animation({ leaf = "global", enabled = true, speed = 13, bezier = "easeOutQuint" })
hl.animation({ leaf = "border", enabled = true, speed = 11, bezier = "siege" })
hl.animation({ leaf = "windows", enabled = true, speed = 9.5, bezier = "siege" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 7.0, bezier = "siege", style = "popin 95%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.5, bezier = "rout", style = "popin 95%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.5, bezier = "siege" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.0, bezier = "rout" })
hl.animation({ leaf = "layers", enabled = true, speed = 7.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 7.5, bezier = "siege", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.2, bezier = "rout", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.0, bezier = "easeInOutCubic", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.0, bezier = "siege", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.0, bezier = "easeInOutCubic", style = "slide" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 3, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
