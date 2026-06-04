-- UWSM Environment Variable Management
-- When using UWSM, most environment variables should be defined in
-- /etc/uwsm/env or ~/.config/uwsm/env
-- This file remains for Hyprland-specific tweaks if needed.

-- UWSM handles XDG_CURRENT_DESKTOP, XDG_SESSION_TYPE, etc.
-- It also handles toolkit backends and Nvidia specifics if configured in UWSM.

-- We keep only essential Hyprland-specific UI overrides here
hl.env({
    XCURSOR_SIZE = "24",
    HYPRCURSOR_SIZE = "24",

    -- Force Qt and Gtk themes as fallback
    QT_QPA_PLATFORMTHEME = "qt6ct",
    GTK_THEME = "Adwaita:dark",
})
