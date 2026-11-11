-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 2,
        col = {
            active_border = { colors = {"rgba(4e9bffee)", "rgba(0b3faeee)"}, angle = 45 },
            inactive_border = { colors = {"rgba(a8c0e0aa)", "rgba(5c7aa8aa)"}, angle = 45 },
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 6,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 0.98,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 12,
            render_power = 2,
            color = "rgba(00000070)",
        },
        blur = {
            enabled = false,
            size = 2,
            passes = 1,
            new_optimizations = true,
            ignore_opacity = false,
            vibrancy = 0.0,
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

hl.curve("winswitch", { type = "bezier", points = { {0.1, 0.9}, {0.1, 1} } })
hl.curve("minimize", { type = "bezier", points = { {0.5, -0.2}, {0.7, 0.1} } })
hl.curve("popin", { type = "bezier", points = { {0.05, 0.9}, {0.05, 1} } })
hl.curve("snap", { type = "bezier", points = { {0.2, 0.7}, {0.3, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 8, bezier = "winswitch" })
hl.animation({ leaf = "border", enabled = true, speed = 7, bezier = "snap" })
hl.animation({ leaf = "windows", enabled = true, speed = 6.0, bezier = "winswitch" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.0, bezier = "popin", style = "popin 90%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.0, bezier = "minimize", style = "popin 88%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.0, bezier = "popin" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.5, bezier = "minimize" })
hl.animation({ leaf = "layers", enabled = true, speed = 5.0, bezier = "winswitch" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4.0, bezier = "popin", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.5, bezier = "minimize", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.0, bezier = "snap", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.5, bezier = "popin", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.0, bezier = "snap", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 6, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
