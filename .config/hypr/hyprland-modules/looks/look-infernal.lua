-- converted from hyprlang by look2lua.py
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = "rgba(8a5820cc)",
            inactive_border = "rgba(0a080644)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 2,
        rounding_power = 2,
        active_opacity = 0.90,
        inactive_opacity = 0.74,
        fullscreen_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 28,
            render_power = 4,
            color = "rgba(0a0806bb)",
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

hl.curve("grind", { type = "bezier", points = { {0.1, 0.9}, {0.0, 1} } })
hl.curve("extinguish", { type = "bezier", points = { {0.6, 0}, {0.9, 0.0} } })
hl.curve("summon", { type = "bezier", points = { {0.0, 0.95}, {0.05, 1} } })
hl.curve("ritual", { type = "bezier", points = { {0.3, 0.8}, {0.2, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 15, bezier = "grind" })
hl.animation({ leaf = "border", enabled = true, speed = 12, bezier = "ritual" })
hl.animation({ leaf = "windows", enabled = true, speed = 11.0, bezier = "grind" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 7.0, bezier = "summon", style = "popin 72%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.5, bezier = "extinguish", style = "popin 72%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5.0, bezier = "summon" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.0, bezier = "extinguish" })
hl.animation({ leaf = "layers", enabled = true, speed = 8.0, bezier = "grind" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 7.0, bezier = "summon", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.0, bezier = "extinguish", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.0, bezier = "ritual", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3.5, bezier = "summon", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5.0, bezier = "ritual", style = "fade" })
hl.window_rule({ name = "windowrule-1", tile = true, rounding = 2, border_size = 2, match = { class = "^(Chromium|Brave|code)$" } })
