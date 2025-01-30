# Hyprland

[Wallpaper Switcher Script](https://www.youtube.com/watch?v=6euidiSWaKM) - [Workspace Switch Animation](https://www.youtube.com/watch?v=fyRkQ3hKVE4)
![hyprland](../README-DEPENDENCIES/hyprland.png)

<details>
<summary><h2>Binds</h2></summary>

### Keybinds
- `MOD + C`: Close focused window
- `MOD + E`: Open file explorer
- `MOD + F`: Toggle floating
- `MOD + K`: Enter force-kill mode
- `MOD + M`: Exit hyprland
- `MOD + R`: Open launcher (rofi)
- `MOD + S`: Take screenshot of a window
- `MOD + V`: Show clipboard
- `MOD + W`: View all open windows
- `MOD + ENTER`: Open terminal
- `MOD + UP-ARROW`: Move focus up
- `MOD + DOWN-ARROW`: Move focus down
- `MOD + LEFT-ARROW`: Move focus left
- `MOD + RIGHT-ARROW`: Move focus right
- `MOD + {Number 0-9}`: Switch to workspace {Number 0-9}

- `ALT + SHIFT + S`: Open wlogout (Power Menu)

- `MOD + SHIFT + C`: Open colorpicker
- `MOD + SHIFT + S`: Take screenshot of a region

- `MOD + SHIFT + HOME`: Take screenshot of a screen
- `MOD + SHIFT + {Number 0-9}`: Move focused window to workspace {Number 0-9}

### Mousebinds
- `Hover over window`: Focus hovered window
- `MOD + SCROLL`: Scroll through workspaces
- `MOD + LEFTCLICK + Drag Mouse`: Move window
- `MOD + SHIFT + LEFTCLICK + Drag Mouse`: Resize window
- `POPMOUSE ACTION BUTTON`: Open launcher (rofi) (this only works on a Logi Popmouse)
</details>

## Dependencies

- apple_cursor
- cliphist
- Ghostty
- hyprland suite
  - hypridle
  - hyprland
  - hyprpicker
  - hyprshot
- pavucontrol
- rofi (wayland)
- swaync
- swww (git)
- roboto mono nerd font
- thunar
- tumbler
- waybar
- wlogout

## Install Command

```
# On Arch Linux
yay -S apple_cursor cliphist ghostty \
hypridle hyprland hyprpaper \
hyprpicker hyprshot pavucontrol \
rofi-wayland swaync swww-git \
ttf-roboto-mono-nerd thunar \
tumbler waybar wlogout \
```

## GTK Theming

For GTK Theming, I reccomend using nwg-look to install Catppuccin Mocha Mauve Styles. To adhere to the theme that I have setup for my rice, follow the steps below.

1. Run `yay -S nwg-look catppuccin-gtk-theme-mocha`
2. Run `nwg-look` from your terminal, or launch it from your app launcher
3. Select "catppuccin-mocha-mauve-standard+default"
4. Click Apply

## QT6 Theming

For QT6 Theming, I reccomend using Kvantum to install Catppuccin Mocha Mauve Styles. To adhere to the theme that I have setup for my rice, follow the steps below.

1. Run `yay -S kvantum`
2. Run `stow hyprland` from the root dotfiles directory
3. Kvantam themes should be applied
