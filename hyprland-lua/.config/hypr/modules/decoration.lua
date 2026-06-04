-- Look and Feel
-- Refer to https://wiki.hypr.land/Configuring/Variables/

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 4,
        border_size = 1,
        "col.active_border" = "rgba(c4a7e7ee) rgba(3e8fb0ee) 45deg",
        "col.inactive_border" = "rgba(44415a66)",
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle"
    },

    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 0.94,
        inactive_opacity = 0.7,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)"
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696
        }
    }
})
