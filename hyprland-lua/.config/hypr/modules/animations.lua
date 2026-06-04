-- Animations
-- https://wiki.hypr.land/Configuring/Variables/#animations

hl.config({
    animations = {
        enabled = true,

        bezier = {
            "easeOutQuint, 0.23, 1, 0.32, 1",
            "fluent_out, 0.1, 1, 0, 1"
        },

        animation = {
            "windows, 1, 3, easeOutQuint, popin 80%",
            "windowsIn, 1, 3, easeOutQuint, popin 80%",
            "windowsOut, 1, 3, easeOutQuint, popin 80%",
            "fade, 1, 3, default",
            "workspaces, 1, 3, fluent_out, slide",
            "border, 1, 3, default",
            "borderangle, 0, 10, default"
        }
    }
})
