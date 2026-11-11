-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = "rgba(e08020cc)",
            inactive_border = "rgba(0a080644)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 8,
        rounding_power = 2,
        active_opacity = 0.90,
        inactive_opacity = 0.74,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 20,
            render_power = 4,
            color = "rgba(0a080699)",
        },
        blur = {
            enabled = true,
            size = 7,
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

hl.curve("warmth", { type = "bezier", points = { {0.2, 0.85}, {0.2, 1} } })
hl.curve("cool", { type = "bezier", points = { {0.5, 0}, {0.6, 0.1} } })
hl.curve("horizon", { type = "bezier", points = { {0.1, 0.9}, {0.15, 1} } })
hl.curve("layer", { type = "bezier", points = { {0.3, 0.7}, {0.3, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 11, bezier = "warmth" })
hl.animation({ leaf = "border", enabled = true, speed = 9, bezier = "layer" })
hl.animation({ leaf = "windows", enabled = true, speed = 8.5, bezier = "warmth" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.5, bezier = "horizon", style = "popin 82%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.8, bezier = "cool", style = "popin 82%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.0, bezier = "horizon" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.5, bezier = "cool" })
hl.animation({ leaf = "layers", enabled = true, speed = 6.5, bezier = "warmth" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5.5, bezier = "horizon", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.5, bezier = "cool", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.0, bezier = "layer", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.0, bezier = "horizon", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.0, bezier = "layer", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 8, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
