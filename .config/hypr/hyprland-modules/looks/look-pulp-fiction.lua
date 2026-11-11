-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        col = {
            active_border = "rgba(e8a020cc)",
            inactive_border = "rgba(18181844)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 4,
        rounding_power = 2,
        active_opacity = 0.93,
        inactive_opacity = 0.76,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 14,
            render_power = 3,
            color = "rgba(18181899)",
        },
        blur = {
            enabled = true,
            size = 4,
            passes = 2,
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

hl.curve("cut", { type = "bezier", points = { {0.05, 0.8}, {0.1, 1} } })
hl.curve("smash", { type = "bezier", points = { {0.4, 0}, {0.1, 1} } })
hl.curve("snap", { type = "bezier", points = { {0.1, 0.95}, {0.15, 1} } })
hl.curve("noir", { type = "bezier", points = { {0.3, 0.5}, {0.4, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 7, bezier = "cut" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "snap" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.5, bezier = "cut" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.0, bezier = "snap", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.5, bezier = "smash", style = "popin 80%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.0, bezier = "snap" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.2, bezier = "smash" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.5, bezier = "cut" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3.0, bezier = "snap", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "smash", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.5, bezier = "noir", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.8, bezier = "snap", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.5, bezier = "noir", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 4, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
