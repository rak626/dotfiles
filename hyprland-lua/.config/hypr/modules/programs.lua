-- My Programs
-- Set programs that you use

_G.terminal = "alacritty"
_G.fileManager = "nautilus"
_G.menu = "ulauncher"
_G.browser = "chromium-browser"
_G.brave = "brave"
-- Cliphist requires dmenu/wofi, standardizing to wofi here
_G.clipboard = "cliphist list | wofi --drun-print_line --show dmenu | cliphist decode | wl-copy"
