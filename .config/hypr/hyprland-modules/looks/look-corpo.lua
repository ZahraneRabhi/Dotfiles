-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 14,
        border_size = 2,
        col = {
            active_border = "rgba(5a8cffdd)",
            inactive_border = "rgba(cfd6e255)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 8,
            render_power = 3,
            color = "rgba(00000022)",
        },
        blur = {
            enabled = false,
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
    },
})

hl.curve("easeOutCubic", { type = "bezier", points = { {0.33, 1}, {0.68, 1} } })
hl.curve("smooth", { type = "bezier", points = { {0.4, 0}, {0.2, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 6, bezier = "easeOutCubic" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "easeOutCubic" })
hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "easeOutCubic" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.2, bezier = "easeOutCubic", style = "popin 90%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.2, bezier = "smooth", style = "popin 90%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.0, bezier = "smooth" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.6, bezier = "smooth" })
hl.animation({ leaf = "fade", enabled = true, speed = 2.5, bezier = "smooth" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.0, bezier = "easeOutCubic" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3.0, bezier = "easeOutCubic", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.6, bezier = "smooth", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.0, bezier = "smooth", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 10, border_size = 2, match = { class = "^(Chromium)$" } })
