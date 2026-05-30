#!/bin/bash

# Get current status of the panel
CURRENT_STATUS=$(dconf read /org/gnome/shell/extensions/just-perfection/panel)

# If it is false (hidden), set to true (visible). Otherwise, hide it.
if [ "$CURRENT_STATUS" = "false" ]; then
    dconf write /org/gnome/shell/extensions/just-perfection/panel true
else
    dconf write /org/gnome/shell/extensions/just-perfection/panel false
fi
