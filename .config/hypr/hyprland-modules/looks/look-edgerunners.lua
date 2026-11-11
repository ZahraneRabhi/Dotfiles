-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 16,
        border_size = 3,
        col = {
            active_border = "rgba(00fff9cc)",
            inactive_border = "rgba(ff003366)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 14,
        rounding_power = 2,
        active_opacity = 0.83,
        inactive_opacity = 0.7,
        fullscreen_opacity = 0.9,
        shadow = {
            enabled = true,
            range = 14,
            render_power = 4,
            color = "rgba(fcee0944)",
        },
        blur = {
            enabled = true,
            size = 5,
            passes = 5,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.38,
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
hl.curve("quick", { type = "bezier", points = { {0.15, 0}, {0.1, 1} } })
hl.curve("flick", { type = "bezier", points = { {0.2, 0.7}, {0.3, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "easeOutQuint" })
hl.animation({ leaf = "border", enabled = true, speed = 7, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 6.3, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.2, bezier = "easeOutQuint", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.8, bezier = "linear", style = "popin 85%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.2, bezier = "quick" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.7, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.8, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.8, bezier = "flick", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.3, bezier = "easeInOutCubic", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.5, bezier = "easeInOutCubic", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.3, bezier = "easeInOutCubic", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 14, border_size = 3, match = { class = "^(Chromium|Brave|code)$" } })
