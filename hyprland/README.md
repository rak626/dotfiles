# ❄️ Hyprland Configuration

A modular, performance-oriented Hyprland setup tailored for Arch Linux. This configuration uses a **Rose Pine Moon** aesthetic and is optimized for both productivity and aesthetics.

## 🚀 Quick Start

### 1. Install Dependencies
Ensure you have the following packages installed on your Arch system:

**Core:**
- `hyprland`: The compositor
- `waybar`: Highly customizable status bar
- `hyprpaper`: Fast wallpaper utility
- `hyprlock`: Modern screen locker
- `hypridle`: Idle management daemon
- `xdg-desktop-portal-hyprland`: Essential for screen sharing and portals

**Apps & Utilities:**
- `alacritty`: Terminal emulator
- `wofi`: Application launcher and clipboard menu
- `mako`: Lightweight notification daemon
- `nautilus`: File manager
- `swayosd-git` (AUR): On-screen display for volume/brightness
- `cliphist`: Clipboard history manager
- `wl-clipboard`: Wayland clipboard utilities
- `hyprsunset`: Blue light filter (Night light)

### 2. Deployment
Copy the contents of this folder to your config directory:
```bash
cp -r .config/hypr ~/.config/
```

## 📂 Configuration Structure
The config is modularized for easy maintenance in `~/.config/hypr/modules/`:

- `animations.conf`: Window and workspace transition effects.
- `autostart.conf`: Startup services (Waybar, Mako, etc.).
- `binds.conf`: All keyboard shortcuts.
- `decoration.conf`: Rounding, blur, and shadows.
- `env.conf`: Environment variables (GTK/QT themes, Nvidia fixes).
- `input.conf`: Mouse, keyboard, and touchpad settings.
- `monitor.conf`: Resolution and refresh rate settings.
- `program.conf`: Default application definitions.
- `windowrules.conf`: Specific rules for app behavior (floating, pinning).

## ⌨️ Keybindings
The **SUPER** (Windows) key is the primary modifier.

| Keybind | Action |
| :--- | :--- |
| `SUPER + Return` | Open Terminal (Alacritty) |
| `SUPER + D` | Application Launcher (Wofi) |
| `SUPER + Q` | Kill Active Window |
| `SUPER + V` | Toggle Floating |
| `SUPER + SHIFT + V` | Clipboard History |
| `SUPER + E` | File Manager |
| `SUPER + 1-0` | Switch Workspaces |
| `SUPER + SHIFT + 1-0` | Move Window to Workspace |
| `Print` | Screenshot (Select Area) |
| `SHIFT + Print` | Screenshot (Fullscreen) |

## 🎨 Themes
- **GTK/QT:** Configured to use **Adwaita-dark** with **Papirus-Dark** icons.
- **Colors:** Deep purple and muted pastel accents based on **Rose Pine Moon**.

## 🛠️ Customization
- **Wallpapers:** Change images in `~/dotfiles/backgrounds/` and update `hyprpaper.conf`.
- **Monitors:** Edit `modules/monitor.conf` to match your hardware layout.
