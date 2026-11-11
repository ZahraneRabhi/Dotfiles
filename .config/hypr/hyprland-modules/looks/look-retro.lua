-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 18,
        border_size = 3,
        col = {
            active_border = "rgba(ff4d8fff)",
            inactive_border = "rgba(5a4aaa55)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 18,
        rounding_power = 3,
        active_opacity = 0.92,
        inactive_opacity = 0.75,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 18,
            render_power = 4,
            color = "rgba(ff4d8f55)",
        },
        blur = {
            enabled = true,
            size = 7,
            passes = 5,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.52,
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
hl.curve("sparkle", { type = "bezier", points = { {0.34, 1.56}, {0.64, 1} } })
hl.curve("moonrise", { type = "bezier", points = { {0.12, 0.8}, {0.2, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 9, bezier = "easeOutQuint" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "sparkle" })
hl.animation({ leaf = "windows", enabled = true, speed = 5.5, bezier = "sparkle" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.0, bezier = "sparkle", style = "popin 75%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.0, bezier = "moonrise", style = "popin 75%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.5, bezier = "moonrise" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.8, bezier = "easeOutQuint" })
hl.animation({ leaf = "layers", enabled = true, speed = 4.2, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.5, bezier = "sparkle", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.0, bezier = "moonrise", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.8, bezier = "easeInOutCubic", style = "slidevert" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.0, bezier = "sparkle", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.8, bezier = "easeInOutCubic", style = "slidevert" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 18, border_size = 3, match = { class = "^(Chromium|Brave|code)$" } })
