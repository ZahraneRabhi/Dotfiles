-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 9,
        border_size = 2,
        col = {
            active_border = "rgba(9c1c1ccc)",
            inactive_border = "rgba(12040488)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 0,
        rounding_power = 2,
        active_opacity = 0.94,
        inactive_opacity = 0.78,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 20,
            render_power = 4,
            color = "rgba(1204049c)",
        },
        blur = {
            enabled = true,
            size = 3,
            passes = 2,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.06,
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

hl.curve("stalk", { type = "bezier", points = { {0.1, 0.9}, {0.05, 1} } })
hl.curve("vanish", { type = "bezier", points = { {0.65, 0}, {0.85, 0.0} } })
hl.curve("strike", { type = "bezier", points = { {0.0, 0.97}, {0.02, 1} } })
hl.curve("watch", { type = "bezier", points = { {0.3, 0.7}, {0.4, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "stalk" })
hl.animation({ leaf = "border", enabled = true, speed = 9, bezier = "watch" })
hl.animation({ leaf = "windows", enabled = true, speed = 8.0, bezier = "stalk" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.0, bezier = "strike", style = "popin 72%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.0, bezier = "vanish", style = "popin 72%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.5, bezier = "strike" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.5, bezier = "vanish" })
hl.animation({ leaf = "layers", enabled = true, speed = 6.0, bezier = "stalk" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.5, bezier = "strike", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "vanish", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.5, bezier = "watch", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.5, bezier = "strike", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.5, bezier = "watch", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 0, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
