-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 7,
        gaps_out = 14,
        border_size = 1,
        col = {
            active_border = "rgba(d060c8cc)",
            inactive_border = "rgba(18083044)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 8,
        rounding_power = 2,
        active_opacity = 0.87,
        inactive_opacity = 0.70,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 22,
            render_power = 4,
            color = "rgba(18083099)",
        },
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
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

hl.curve("flicker", { type = "bezier", points = { {0.1, 1.2}, {0.2, 0.9} } })
hl.curve("static", { type = "bezier", points = { {0.3, 0}, {0.5, 0.1} } })
hl.curve("project", { type = "bezier", points = { {0.0, 0.9}, {0.1, 1} } })
hl.curve("scan", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 9, bezier = "project" })
hl.animation({ leaf = "border", enabled = true, speed = 7, bezier = "scan" })
hl.animation({ leaf = "windows", enabled = true, speed = 6.5, bezier = "project" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.0, bezier = "flicker", style = "popin 78%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.0, bezier = "static", style = "popin 78%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.5, bezier = "project" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.8, bezier = "static" })
hl.animation({ leaf = "layers", enabled = true, speed = 5.5, bezier = "project" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.5, bezier = "flicker", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.0, bezier = "static", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.5, bezier = "scan", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.5, bezier = "flicker", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.5, bezier = "scan", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 8, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
