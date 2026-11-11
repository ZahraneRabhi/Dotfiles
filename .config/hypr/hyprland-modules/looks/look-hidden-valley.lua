-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 18,
        border_size = 1,
        col = {
            active_border = "rgba(5fa88fcc)",
            inactive_border = "rgba(21362e66)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 16,
        rounding_power = 2,
        active_opacity = 0.88,
        inactive_opacity = 0.70,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 28,
            render_power = 3,
            color = "rgba(0d1a1690)",
        },
        blur = {
            enabled = true,
            size = 9,
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

hl.curve("mist", { type = "bezier", points = { {0.15, 0.8}, {0.15, 1} } })
hl.curve("fade_out", { type = "bezier", points = { {0.45, 0}, {0.65, 0.15} } })
hl.curve("emerge", { type = "bezier", points = { {0.08, 0.9}, {0.12, 1} } })
hl.curve("drift", { type = "bezier", points = { {0.24, 0.72}, {0.32, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 15, bezier = "mist" })
hl.animation({ leaf = "border", enabled = true, speed = 12, bezier = "drift" })
hl.animation({ leaf = "windows", enabled = true, speed = 11.0, bezier = "mist" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 7.0, bezier = "emerge", style = "popin 86%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.8, bezier = "fade_out", style = "popin 86%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5.5, bezier = "emerge" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3.0, bezier = "fade_out" })
hl.animation({ leaf = "layers", enabled = true, speed = 8.0, bezier = "mist" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6.5, bezier = "emerge", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3.0, bezier = "fade_out", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.0, bezier = "drift", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.5, bezier = "emerge", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5.0, bezier = "drift", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 16, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
