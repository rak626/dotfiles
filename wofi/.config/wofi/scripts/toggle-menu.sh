#!/usr/bin/env bash
# toggle-menu.sh — toggle the wofi drun launcher.
# If a drun window is open, close it; otherwise open it.
# Matches the full command line so clipboard/power dmenu
# instances (wofi --show dmenu) are never touched.
set -euo pipefail

if pgrep -f "[w]ofi --show drun" >/dev/null; then
  pkill -f "[w]ofi --show drun"
else
  exec wofi --show drun --columns 2 --lines 7 --prompt "  Search…"
fi
