-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 2,
        col = {
            active_border = "rgba(f8a000cc)",
            inactive_border = "rgba(06020444)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 6,
        rounding_power = 2,
        active_opacity = 0.90,
        inactive_opacity = 0.72,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 24,
            render_power = 4,
            color = "rgba(06020499)",
        },
        blur = {
            enabled = true,
            size = 7,
            passes = 4,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.25,
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

hl.curve("ignite", { type = "bezier", points = { {0.0, 1.0}, {0.05, 1} } })
hl.curve("exhaust", { type = "bezier", points = { {0.6, 0}, {0.9, 0} } })
hl.curve("burn", { type = "bezier", points = { {0.05, 0.95}, {0.1, 1} } })
hl.curve("streak", { type = "bezier", points = { {0, 0}, {0.5, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 5, bezier = "ignite" })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "streak" })
hl.animation({ leaf = "windows", enabled = true, speed = 3.5, bezier = "ignite" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2.0, bezier = "burn", style = "popin 70%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.0, bezier = "exhaust", style = "popin 70%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.5, bezier = "burn" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 0.8, bezier = "exhaust" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.0, bezier = "ignite" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 2.0, bezier = "burn", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.0, bezier = "exhaust", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.0, bezier = "streak", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.5, bezier = "burn", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.0, bezier = "streak", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 6, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
