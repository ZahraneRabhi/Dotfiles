-- Hyprland main config (Lua, Hyprland >= 0.57)
-- Ported from the old hyprlang config (see git history)

local home = os.getenv("HOME")

------------------
---- MONITORS ----
------------------
hl.monitor({ output = "eDP-1",    mode = "1920x1080@60", position = "0x0",    scale = 1 })
hl.monitor({ output = "HDMI-A-2", mode = "1920x1080@60", position = "1920x0", scale = 1 })

---------------------
---- MY PROGRAMS ----
---------------------
local terminal      = "foot"
local fileManager   = "dolphin"
local browser       = "chromium"
local menu          = "wofi --show drun"
local reload_waybar = "pkill waybar; waybar &"

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    -- Restores last theme's wallpaper + bar (eww for WINDOWS XP, waybar otherwise)
    hl.exec_cmd(home .. "/.local/bin/toggle-waybar-theme --restore")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRSHOT_DIR", home .. "/Pictures/Screenshots")

hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")

-----------------------
---- LOOK AND FEEL ----
-----------------------
-- Active theme, symlinked by ~/.local/bin/toggle-waybar-theme
dofile(home .. "/.config/hypr/hyprland-modules/look.lua")

---------------
---- INPUT ----
---------------
hl.config({
    input = {
        kb_layout    = "fr",
        kb_options   = "caps:shiftlock",
        kb_variant   = "",
        kb_model     = "",
        kb_rules     = "",
        repeat_rate  = 35,
        repeat_delay = 300,
        follow_mouse = 1,
        sensitivity  = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
    cursor = {
        inactive_timeout    = 30,
        no_hardware_cursors = true,
    },
})

hl.device({ name = "epic-mouse-v1", sensitivity = -0.5 })

---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER"
local function exec(cmd) return hl.dsp.exec_cmd(cmd) end

-- Hyprshot (screenshot package)
hl.bind(mainMod .. " + PRINT",     exec("hyprshot -m output"))
hl.bind(mainMod .. " + SHIFT + S", exec("hyprshot -m region"))

-- Brightness controls with F2 and F3
hl.bind("F2", exec("brightnessctl set 5%-"))
hl.bind("F3", exec("brightnessctl set 5%+"))

hl.bind(mainMod .. " + Return", exec(terminal))
hl.bind(mainMod .. " + W",      hl.dsp.window.close())
hl.bind(mainMod .. " + B",      exec(browser))
hl.bind(mainMod .. " + A",      exec(browser .. " --app=https://chatgpt.com"))
hl.bind(mainMod .. " + Y",      exec(browser .. " --app=https://youtube.com"))
hl.bind(mainMod .. " + M",      exec("swaylock"))
hl.bind(mainMod .. " + E",      exec(fileManager))
hl.bind(mainMod .. " + V",      hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R",      exec(menu))
hl.bind(mainMod .. " + P",      hl.dsp.window.pseudo())
hl.bind(mainMod .. " + F",      exec(reload_waybar))

hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Workspaces 1-10 on keys 1-0
for i = 1, 10 do
    hl.bind(mainMod .. " + " .. (i % 10), hl.dsp.focus({ workspace = i }))
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

local el = { locked = true, repeating = true }
hl.bind("XF86AudioRaiseVolume",  exec("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), el)
hl.bind("XF86AudioLowerVolume",  exec("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      el)
hl.bind("XF86AudioMute",         exec("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     el)
hl.bind("XF86AudioMicMute",      exec("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   el)
hl.bind("XF86MonBrightnessUp",   exec("brightnessctl -e4 -n2 set 5%+"),                  el)
hl.bind("XF86MonBrightnessDown", exec("brightnessctl -e4 -n2 set 5%-"),                  el)

local l = { locked = true }
hl.bind("XF86AudioNext",  exec("playerctl next"),       l)
hl.bind("XF86AudioPause", exec("playerctl play-pause"), l)
hl.bind("XF86AudioPlay",  exec("playerctl play-pause"), l)
hl.bind("XF86AudioPrev",  exec("playerctl previous"),   l)

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
hl.window_rule({
    name = "chromium-apps",
    match = { class = "^(Chromium)$" },
    tile = true, rounding = 10, border_size = 2,
})

-- wofi as a normal floating window instead of an input-blocking layer
hl.window_rule({
    name = "wofi",
    match = { class = "^(wofi)$" },
    float = true, center = true, size = "(monitor_w*0.6) (monitor_h*0.5)",
})

-- Float and center the terminal running nmtui
hl.window_rule({
    name = "nmtui",
    match = { class = "^(foot)$", title = ".*nmtui.*" },
    float = true, center = true, size = "800 600",
})

hl.window_rule({
    name = "recordly",
    match = { class = "^(Recordly)$" },
    float = true, pin = true, no_blur = true,
})
