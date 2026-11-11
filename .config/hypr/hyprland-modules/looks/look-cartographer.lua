-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = "rgba(8a6a3ccc)",
            inactive_border = "rgba(3d251044)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 6,
        rounding_power = 2,
        active_opacity = 0.92,
        inactive_opacity = 0.78,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 16,
            render_power = 3,
            color = "rgba(1e120899)",
        },
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
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

hl.curve("scroll", { type = "bezier", points = { {0.2, 0.8}, {0.15, 1} } })
hl.curve("fold", { type = "bezier", points = { {0.5, 0}, {0.4, 0.1} } })
hl.curve("unfurl", { type = "bezier", points = { {0.1, 0.85}, {0.2, 1} } })
hl.curve("study", { type = "bezier", points = { {0.3, 0.7}, {0.3, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 11, bezier = "scroll" })
hl.animation({ leaf = "border", enabled = true, speed = 9, bezier = "study" })
hl.animation({ leaf = "windows", enabled = true, speed = 8.0, bezier = "scroll" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.5, bezier = "unfurl", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.8, bezier = "fold", style = "popin 85%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.0, bezier = "unfurl" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.5, bezier = "fold" })
hl.animation({ leaf = "layers", enabled = true, speed = 6.5, bezier = "scroll" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5.5, bezier = "unfurl", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.5, bezier = "fold", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.0, bezier = "study", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.0, bezier = "unfurl", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.0, bezier = "study", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 6, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
