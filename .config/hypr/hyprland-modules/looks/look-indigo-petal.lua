-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 16,
        border_size = 1,
        col = {
            active_border = "rgba(6a5fc0cc)",
            inactive_border = "rgba(3d358044)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 12,
        rounding_power = 3,
        active_opacity = 0.88,
        inactive_opacity = 0.70,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 24,
            render_power = 4,
            color = "rgba(0d0b1499)",
        },
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.14,
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

hl.curve("bloom", { type = "bezier", points = { {0.0, 0.8}, {0.2, 1} } })
hl.curve("wilt", { type = "bezier", points = { {0.6, 0}, {0.8, 0.1} } })
hl.curve("drift", { type = "bezier", points = { {0.3, 0.6}, {0.4, 1} } })
hl.curve("settle", { type = "bezier", points = { {0.2, 0.9}, {0.1, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 14, bezier = "bloom" })
hl.animation({ leaf = "border", enabled = true, speed = 12, bezier = "drift" })
hl.animation({ leaf = "windows", enabled = true, speed = 10.0, bezier = "bloom" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 7.0, bezier = "settle", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.5, bezier = "wilt", style = "popin 85%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5.0, bezier = "settle" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3.0, bezier = "wilt" })
hl.animation({ leaf = "layers", enabled = true, speed = 8.0, bezier = "bloom" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 7.0, bezier = "settle", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3.0, bezier = "wilt", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.0, bezier = "drift", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 4.0, bezier = "settle", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5.0, bezier = "drift", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 12, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
