-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        col = {
            active_border = "rgba(ffcc33cc)",
            inactive_border = "rgba(3d0a0a88)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 2,
        rounding_power = 2,
        active_opacity = 0.92,
        inactive_opacity = 0.76,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 22,
            render_power = 4,
            color = "rgba(b81c1c99)",
        },
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.10,
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

hl.curve("march", { type = "bezier", points = { {0.16, 0.9}, {0.1, 1} } })
hl.curve("rally", { type = "bezier", points = { {0.5, 0}, {0.75, 0.05} } })
hl.curve("raise", { type = "bezier", points = { {0.05, 0.95}, {0.1, 1} } })
hl.curve("wave", { type = "bezier", points = { {0.3, 0.75}, {0.35, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 12, bezier = "march" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "wave" })
hl.animation({ leaf = "windows", enabled = true, speed = 9.0, bezier = "march" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6.0, bezier = "raise", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.0, bezier = "rally", style = "popin 80%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4.5, bezier = "raise" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.2, bezier = "rally" })
hl.animation({ leaf = "layers", enabled = true, speed = 7.0, bezier = "march" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5.5, bezier = "raise", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.2, bezier = "rally", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.0, bezier = "wave", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.0, bezier = "raise", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.0, bezier = "wave", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 2, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
