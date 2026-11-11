-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 16,
        border_size = 2,
        col = {
            active_border = "rgba(c8a040bb)",
            inactive_border = "rgba(7a9ab044)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 0.94,
        inactive_opacity = 0.80,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 16,
            render_power = 3,
            color = "rgba(3a3020aa)",
        },
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.28,
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
hl.curve("meadow", { type = "bezier", points = { {0.25, 1.0}, {0.5, 1} } })
hl.curve("drift", { type = "bezier", points = { {0.4, 0.05}, {0.2, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 11, bezier = "easeOutQuint" })
hl.animation({ leaf = "border", enabled = true, speed = 8, bezier = "meadow" })
hl.animation({ leaf = "windows", enabled = true, speed = 7.5, bezier = "meadow" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.0, bezier = "meadow", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.0, bezier = "drift", style = "slide" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.5, bezier = "meadow" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.5, bezier = "drift" })
hl.animation({ leaf = "layers", enabled = true, speed = 5.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5.5, bezier = "meadow", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.8, bezier = "drift", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.2, bezier = "easeInOutCubic", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.2, bezier = "meadow", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.2, bezier = "easeInOutCubic", style = "slide" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 10, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
