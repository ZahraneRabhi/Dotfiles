-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = "rgba(3060d0cc)",
            inactive_border = "rgba(04000c44)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        rounding_power = 3,
        active_opacity = 0.88,
        inactive_opacity = 0.72,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 30,
            render_power = 4,
            color = "rgba(04000c99)",
        },
        blur = {
            enabled = true,
            size = 10,
            passes = 5,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.20,
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

hl.curve("omnipotent", { type = "bezier", points = { {0.0, 1.0}, {0.0, 1} } })
hl.curve("quantum", { type = "bezier", points = { {0.5, 0}, {0.4, 0.05} } })
hl.curve("transcend", { type = "bezier", points = { {0.0, 0.9}, {0.05, 1} } })
hl.curve("perceive", { type = "bezier", points = { {0.2, 0.8}, {0.2, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 11, bezier = "omnipotent" })
hl.animation({ leaf = "border", enabled = true, speed = 9, bezier = "perceive" })
hl.animation({ leaf = "windows", enabled = true, speed = 8.5, bezier = "omnipotent" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.5, bezier = "transcend", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.5, bezier = "quantum", style = "popin 85%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.0, bezier = "transcend" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.0, bezier = "quantum" })
hl.animation({ leaf = "layers", enabled = true, speed = 6.5, bezier = "omnipotent" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5.5, bezier = "transcend", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.0, bezier = "quantum", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.0, bezier = "perceive", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.0, bezier = "transcend", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.0, bezier = "perceive", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 10, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
