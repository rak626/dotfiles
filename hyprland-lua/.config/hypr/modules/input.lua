-- Input
-- https://wiki.hypr.land/Configuring/Variables/#input

hl.config({
    input = {
        kb_layout = "us",
        follow_mouse = 0,
        sensitivity = 0,

        touchpad = {
            natural_scroll = false
        }
    },

    cursor = {
        no_hardware_cursors = true
    },

    gesture = {
        "3, horizontal, workspace"
    },

    device = {
        name = "epic-mouse-v1",
        sensitivity = -0.5
    }
})
