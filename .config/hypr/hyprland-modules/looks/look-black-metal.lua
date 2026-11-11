-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 1,
        col = {
            active_border = "rgba(e8e8e8cc)",
            inactive_border = "rgba(1a1a1a99)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 0,
        rounding_power = 2,
        active_opacity = 0.96,
        inactive_opacity = 0.82,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 16,
            render_power = 3,
            color = "rgba(000000a0)",
        },
        blur = {
            enabled = true,
            size = 2,
            passes = 1,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.04,
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

hl.curve("etch", { type = "bezier", points = { {0.08, 0.92}, {0.05, 1} } })
hl.curve("smear", { type = "bezier", points = { {0.6, 0}, {0.8, 0.0} } })
hl.curve("carve", { type = "bezier", points = { {0.02, 0.96}, {0.05, 1} } })
hl.curve("still", { type = "bezier", points = { {0.3, 0.68}, {0.4, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "etch" })
hl.animation({ leaf = "border", enabled = true, speed = 9, bezier = "still" })
hl.animation({ leaf = "windows", enabled = true, speed = 8.0, bezier = "etch" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5.0, bezier = "carve", style = "popin 74%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.2, bezier = "smear", style = "popin 74%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.8, bezier = "carve" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.8, bezier = "smear" })
hl.animation({ leaf = "layers", enabled = true, speed = 6.0, bezier = "etch" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.8, bezier = "carve", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.8, bezier = "smear", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.5, bezier = "still", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.6, bezier = "carve", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.5, bezier = "still", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 0, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
