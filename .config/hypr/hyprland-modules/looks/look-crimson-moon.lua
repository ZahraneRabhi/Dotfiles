-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = "rgba(cc0020cc)",
            inactive_border = "rgba(0a000444)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 4,
        rounding_power = 2,
        active_opacity = 0.88,
        inactive_opacity = 0.72,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 24,
            render_power = 4,
            color = "rgba(0a000499)",
        },
        blur = {
            enabled = true,
            size = 6,
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

hl.curve("haunt", { type = "bezier", points = { {0.1, 0.9}, {0.05, 1} } })
hl.curve("banish", { type = "bezier", points = { {0.6, 0}, {0.8, 0.0} } })
hl.curve("rise", { type = "bezier", points = { {0.0, 0.95}, {0.05, 1} } })
hl.curve("linger", { type = "bezier", points = { {0.3, 0.7}, {0.4, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 13, bezier = "haunt" })
hl.animation({ leaf = "border", enabled = true, speed = 11, bezier = "linger" })
hl.animation({ leaf = "windows", enabled = true, speed = 10.0, bezier = "haunt" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6.5, bezier = "rise", style = "popin 76%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.5, bezier = "banish", style = "popin 76%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.5, bezier = "rise" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.0, bezier = "banish" })
hl.animation({ leaf = "layers", enabled = true, speed = 7.5, bezier = "haunt" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6.0, bezier = "rise", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.0, bezier = "banish", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "linger", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.0, bezier = "rise", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.5, bezier = "linger", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 4, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
