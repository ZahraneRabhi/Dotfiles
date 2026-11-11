-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 7,
        gaps_out = 14,
        border_size = 1,
        col = {
            active_border = "rgba(d87060cc)",
            inactive_border = "rgba(05030844)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 0.87,
        inactive_opacity = 0.70,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 26,
            render_power = 4,
            color = "rgba(05030899)",
        },
        blur = {
            enabled = true,
            size = 9,
            passes = 5,
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

hl.curve("bloom", { type = "bezier", points = { {0.1, 0.85}, {0.15, 1} } })
hl.curve("collapse", { type = "bezier", points = { {0.5, 0}, {0.6, 0.05} } })
hl.curve("ionize", { type = "bezier", points = { {0.05, 0.95}, {0.1, 1} } })
hl.curve("nebula", { type = "bezier", points = { {0.25, 0.75}, {0.3, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 13, bezier = "bloom" })
hl.animation({ leaf = "border", enabled = true, speed = 11, bezier = "nebula" })
hl.animation({ leaf = "windows", enabled = true, speed = 10.0, bezier = "bloom" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 7.0, bezier = "ionize", style = "popin 82%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.5, bezier = "collapse", style = "popin 82%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5.0, bezier = "ionize" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3.0, bezier = "collapse" })
hl.animation({ leaf = "layers", enabled = true, speed = 8.0, bezier = "bloom" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 7.0, bezier = "ionize", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3.0, bezier = "collapse", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.0, bezier = "nebula", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 4.0, bezier = "ionize", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5.0, bezier = "nebula", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 10, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
