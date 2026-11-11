-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 2,
        col = {
            active_border = "rgba(2a8fffcc)",
            inactive_border = "rgba(50408044)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 4,
        rounding_power = 2,
        active_opacity = 0.92,
        inactive_opacity = 0.74,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 18,
            render_power = 4,
            color = "rgba(080c1499)",
        },
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.22,
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

hl.curve("strike", { type = "bezier", points = { {0.05, 0.7}, {0.1, 1} } })
hl.curve("release", { type = "bezier", points = { {0.4, 0}, {0.2, 1} } })
hl.curve("channel", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve("surge", { type = "bezier", points = { {0.1, 0.9}, {0.2, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 8, bezier = "strike" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "surge" })
hl.animation({ leaf = "windows", enabled = true, speed = 5.0, bezier = "strike" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.5, bezier = "surge", style = "popin 75%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.8, bezier = "release", style = "popin 75%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.5, bezier = "surge" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.5, bezier = "release" })
hl.animation({ leaf = "layers", enabled = true, speed = 4.0, bezier = "strike" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3.5, bezier = "surge", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.8, bezier = "release", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.5, bezier = "strike", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.8, bezier = "surge", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.5, bezier = "strike", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 4, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
