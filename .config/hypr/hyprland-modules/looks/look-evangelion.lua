-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 2,
        col = {
            active_border = "rgba(a0a8b8cc)",
            inactive_border = "rgba(06040844)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 2,
        rounding_power = 2,
        active_opacity = 0.92,
        inactive_opacity = 0.76,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 16,
            render_power = 4,
            color = "rgba(06040899)",
        },
        blur = {
            enabled = true,
            size = 4,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.15,
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

hl.curve("synch", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1} } })
hl.curve("eject", { type = "bezier", points = { {0.5, 0}, {0.6, 0.0} } })
hl.curve("boot", { type = "bezier", points = { {0.0, 0.95}, {0.05, 1} } })
hl.curve("scan", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 7, bezier = "synch" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "scan" })
hl.animation({ leaf = "windows", enabled = true, speed = 5.5, bezier = "synch" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.5, bezier = "boot", style = "popin 75%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.5, bezier = "eject", style = "popin 75%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.5, bezier = "boot" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.2, bezier = "eject" })
hl.animation({ leaf = "layers", enabled = true, speed = 4.5, bezier = "synch" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3.5, bezier = "boot", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "eject", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.8, bezier = "scan", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.0, bezier = "boot", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.8, bezier = "scan", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 2, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
