# Hyprland
![hyprland](https://github.com/user-attachments/assets/e33e3114-7c4d-48bc-9a3d-4e3363a9cda9)



## Dependencies
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
- font awesome
- roboto mono
- thunar
- tumbler
- waybar
- wlogout


## Install Command
```
# On Arch Linux
yay -S cliphist ghostty-git \
hypridle hyprland hyprpaper \
hyprpicker hyprshot pavucontrol \
rofi-wayland swaync swww-git \
ttf-font-awesome ttf-roboto-mono thunar \
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
