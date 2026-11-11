-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 7,
        gaps_out = 14,
        border_size = 2,
        col = {
            active_border = "rgba(d060a0cc)",
            inactive_border = "rgba(08061844)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 0.88,
        inactive_opacity = 0.72,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 22,
            render_power = 4,
            color = "rgba(08061899)",
        },
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.16,
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

hl.curve("aurora", { type = "bezier", points = { {0.1, 0.85}, {0.15, 1} } })
hl.curve("snowfall", { type = "bezier", points = { {0.4, 0}, {0.5, 0.1} } })
hl.curve("peak", { type = "bezier", points = { {0.05, 0.95}, {0.1, 1} } })
hl.curve("drift", { type = "bezier", points = { {0.3, 0.7}, {0.3, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 13, bezier = "aurora" })
hl.animation({ leaf = "border", enabled = true, speed = 11, bezier = "drift" })
hl.animation({ leaf = "windows", enabled = true, speed = 10.0, bezier = "aurora" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6.5, bezier = "peak", style = "popin 83%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.0, bezier = "snowfall", style = "popin 83%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.5, bezier = "peak" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.5, bezier = "snowfall" })
hl.animation({ leaf = "layers", enabled = true, speed = 7.5, bezier = "aurora" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6.5, bezier = "peak", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.5, bezier = "snowfall", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "drift", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.5, bezier = "peak", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.5, bezier = "drift", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 10, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
