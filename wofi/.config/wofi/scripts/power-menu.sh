#!/usr/bin/env bash
# power-menu.sh — Wayland power menu via wofi (Rosé Pine Moon-themed via style.css).
# Usage: power-menu.sh
set -euo pipefail

chosen=$(printf "Lock\nLogout\nSuspend\nReboot\nShutdown" | wofi --show dmenu --prompt "Power" --insensitive) || exit 0

case "$chosen" in
  Lock)
    if command -v hyprlock >/dev/null 2>&1; then
      hyprlock
    else
      loginctl lock-session
    fi
    ;;
  Logout) hyprctl dispatch exit ;;
  Suspend) systemctl suspend ;;
  Reboot) systemctl reboot ;;
  Shutdown) systemctl poweroff ;;
  *) exit 1 ;;
esac
