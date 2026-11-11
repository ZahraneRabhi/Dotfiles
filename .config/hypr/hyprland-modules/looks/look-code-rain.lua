-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 1,
        col = {
            active_border = "rgba(00ff41cc)",
            inactive_border = "rgba(003010aa)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 2,
        rounding_power = 2,
        active_opacity = 0.90,
        inactive_opacity = 0.75,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 12,
            render_power = 3,
            color = "rgba(000a0099)",
        },
        blur = {
            enabled = true,
            size = 4,
            passes = 2,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.24,
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

hl.curve("cascade", { type = "bezier", points = { {0.0, 1.0}, {0.1, 1} } })
hl.curve("dissolve", { type = "bezier", points = { {0.4, 0}, {0.6, 0} } })
hl.curve("compile", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1} } })
hl.curve("stream", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 6, bezier = "cascade" })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "stream" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.0, bezier = "cascade" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2.5, bezier = "compile", style = "popin 70%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.2, bezier = "dissolve", style = "popin 70%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.8, bezier = "compile" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.0, bezier = "dissolve" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.5, bezier = "cascade" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 2.5, bezier = "compile", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.0, bezier = "dissolve", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.0, bezier = "stream", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.5, bezier = "compile", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.0, bezier = "stream", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 2, border_size = 1, match = { class = "^(Chromium|Brave|code)$" } })
