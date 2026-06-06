# ❄️ Hyprland Configuration

A modular, performance-oriented Hyprland setup tailored for Arch Linux. This configuration uses an **Atom One Dark** aesthetic and is optimized for both productivity and aesthetics.

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
- `alacritty`: GPU-accelerated terminal emulator
- `wofi`: Application launcher and menu
- `mako`: Lightweight notification daemon
- `swayosd`: GTK based on-screen display for volume/backlight
- `wl-clipboard`: Command-line copy/paste utilities
- `grim`: Grab images from a Wayland compositor
- `slurp`: Select a region in a Wayland compositor
- `imagemagick`: Image manipulation (required by scripts)

### 2. Deployment
1. Clone this repository: `git clone https://github.com/your-repo/dotfiles.git`
2. Symlink the configuration: `ln -s ~/dotfiles/hyprland/.config/hypr ~/.config/hypr`
3. Launch Hyprland from your TTY or display manager.

## ⌨️ Keybindings
The default mod key is `SUPER` (Windows key).

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
- **Colors:** Clean dark grays and vibrant syntax highlights based on **One Dark Pro**.

## 🛠️ Customization
- **Wallpapers:** Change images in `~/dotfiles/backgrounds/` and update `hyprpaper.conf`.
- **Monitors:** Edit `modules/monitor.conf` to match your hardware layout.
- **Rules:** Window rules can be adjusted in `modules/windowrules.conf`.
