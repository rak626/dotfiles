-- UWSM Autostart
-- When using UWSM, most background services should be managed via systemd units
-- Use 'uwsm app -- <cmd>' for one-off background apps

hl.exec_once({
    -- Waybar managed via UWSM/systemd if possible, else:
    "uwsm app -- waybar",
    "uwsm app -- hyprsunset",

    -- Core services (should be systemd units on Arch)
    -- "systemctl --user start hyprpolkitagent", -- Managed by uwsm if using hyprpolkitagent.service

    -- Essential utilities
    "uwsm app -- wl-paste --type text --watch cliphist store",
    "uwsm app -- wl-paste --type image --watch cliphist store",
    "uwsm app -- swayosd-server",
    "uwsm app -- hyprpaper",
    "uwsm app -- mako",

    -- Welcome notification
    'notify-send "Arch Hyprland (UWSM)" "Session initialized successfully"'
})
