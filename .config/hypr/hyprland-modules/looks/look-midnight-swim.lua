-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 14,
        border_size = 1,
        col = {
            active_border = "rgba(1f7a8ccc)",
            inactive_border = "rgba(0d344488)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 14,
        rounding_power = 2,
        active_opacity = 0.90,
        inactive_opacity = 0.74,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 26,
            render_power = 3,
            color = "rgba(07162099)",
        },
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.20,
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

hl.curve("drift", { type = "bezier", points = { {0.13, 0.75}, {0.15, 1} } })
hl.curve("surface", { type = "bezier", points = { {0.3, 0.9}, {0.2, 1} } })
hl.curve("sink", { type = "bezier", points = { {0.5, 0}, {0.7, 0.15} } })
hl.curve("ripple", { type = "bezier", points = { {0.22, 0.75}, {0.3, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 14, bezier = "drift" })
hl.animation({ leaf = "border", enabled = true, speed = 11, bezier = "ripple" })
hl.animation({ leaf = "windows", enabled = true, speed = 10.0, bezier = "drift" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6.5, bezier = "surface", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.5, bezier = "sink", style = "popin 85%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5.0, bezier = "surface" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.8, bezier = "sink" })
hl.animation({ leaf = "layers", enabled = true, speed = 7.5, bezier = "drift" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6.0, bezier = "surface", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.8, bezier = "sink", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "drift", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.2, bezier = "surface", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.5, bezier = "drift", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 14, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
