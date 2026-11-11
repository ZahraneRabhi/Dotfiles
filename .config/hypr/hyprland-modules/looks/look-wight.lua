-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = "rgba(8a9a96cc)",
            inactive_border = "rgba(2a4a4a55)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 6,
        rounding_power = 2,
        active_opacity = 0.88,
        inactive_opacity = 0.72,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 20,
            render_power = 4,
            color = "rgba(080c0e99)",
        },
        blur = {
            enabled = true,
            size = 6,
            passes = 4,
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

hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve("creep", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1} } })
hl.curve("wither", { type = "bezier", points = { {0.4, 0}, {0.6, 0.05} } })
hl.animation({ leaf = "global", enabled = true, speed = 12, bezier = "easeOutQuint" })
hl.animation({ leaf = "border", enabled = true, speed = 9, bezier = "creep" })
hl.animation({ leaf = "windows", enabled = true, speed = 8.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.5, bezier = "creep", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.4, bezier = "wither", style = "popin 80%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.0, bezier = "creep" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.0, bezier = "wither" })
hl.animation({ leaf = "layers", enabled = true, speed = 5.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5.2, bezier = "creep", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.2, bezier = "wither", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.0, bezier = "easeInOutCubic", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.0, bezier = "easeInOutCubic", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.0, bezier = "easeInOutCubic", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 6, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
