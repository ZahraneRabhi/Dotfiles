-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 16,
        border_size = 1,
        col = {
            active_border = "rgba(c68a52cc)",
            inactive_border = "rgba(24201055)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 8,
        rounding_power = 2,
        active_opacity = 0.94,
        inactive_opacity = 0.80,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 18,
            render_power = 3,
            color = "rgba(241c1090)",
        },
        blur = {
            enabled = true,
            size = 6,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.12,
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

hl.curve("pastoral", { type = "bezier", points = { {0.22, 0.8}, {0.2, 1} } })
hl.curve("brush", { type = "bezier", points = { {0.4, 0}, {0.6, 0.1} } })
hl.curve("unveil", { type = "bezier", points = { {0.1, 0.9}, {0.15, 1} } })
hl.curve("settle", { type = "bezier", points = { {0.28, 0.7}, {0.35, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 14, bezier = "pastoral" })
hl.animation({ leaf = "border", enabled = true, speed = 11, bezier = "settle" })
hl.animation({ leaf = "windows", enabled = true, speed = 10.0, bezier = "pastoral" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6.5, bezier = "unveil", style = "popin 84%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.2, bezier = "brush", style = "popin 84%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5.0, bezier = "unveil" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.6, bezier = "brush" })
hl.animation({ leaf = "layers", enabled = true, speed = 7.5, bezier = "pastoral" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6.0, bezier = "unveil", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.6, bezier = "brush", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "settle", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.2, bezier = "unveil", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.5, bezier = "settle", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 8, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
