-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        col = {
            active_border = "rgba(d09040cc)",
            inactive_border = "rgba(10080644)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 6,
        rounding_power = 2,
        active_opacity = 0.90,
        inactive_opacity = 0.74,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 18,
            render_power = 3,
            color = "rgba(10080699)",
        },
        blur = {
            enabled = true,
            size = 6,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.18,
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

hl.curve("katana", { type = "bezier", points = { {0.05, 0.85}, {0.1, 1} } })
hl.curve("sheath", { type = "bezier", points = { {0.5, 0}, {0.4, 0.1} } })
hl.curve("blossom", { type = "bezier", points = { {0.2, 0.9}, {0.15, 1} } })
hl.curve("fall", { type = "bezier", points = { {0.3, 0.6}, {0.4, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 8, bezier = "katana" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "fall" })
hl.animation({ leaf = "windows", enabled = true, speed = 6.5, bezier = "katana" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.0, bezier = "blossom", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.0, bezier = "sheath", style = "popin 80%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.0, bezier = "blossom" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.8, bezier = "sheath" })
hl.animation({ leaf = "layers", enabled = true, speed = 5.5, bezier = "katana" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.5, bezier = "blossom", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.8, bezier = "sheath", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.5, bezier = "fall", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.5, bezier = "blossom", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.5, bezier = "fall", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 6, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
