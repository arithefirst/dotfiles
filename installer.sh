#!/bin/bash

function hyprland_del() {
  # removes the bajillion files we need for hyprland
  rm -rf ~/.local/bin/rofi-clipping-mode ~/.config/hypr 
  rm -rf ~/.config/Kvantum/catppuccin-mocha-mauve ~/.config/Kvantum/kvantum.kvconfig
  rm -rf ~/.config/rofi ~/.config/swaync ~/.config/waybar ~/.config/wlogout
}

function select_item() {
  # Get all the current dirs and open a gum menu for them
  sel=$(find . -maxdepth 1 -type d | sed -n 's/^\.\///p' | grep -v -E "\.git" | gum choose --no-limit --selected.foreground="177")
  gum confirm "This will overwrite all existing configs for these selections. Are you sure?"
  for i in $sel;
  do 
    case $i in
      # Remove existing comment files
      "yazi")      rm -rf ~/.config/yazi;;
      "ghostty")   rm -rf ~/.config/ghostty;;
      "nvim")      rm -rf ~/.config/nvim;;
      "zsh")       rm -rf ~/.zshrc ~/.zsh;;
      "fastfetch") rm -rf ~/.config/fastfetch;;
      "tmux")      rm -rf ~/.tmux.conf ~/.tmux;;
      "hyprland")  hyprland_del;;
    esac
    gum spin --spinner dot --title "Loading $i config..." --show-error --show-output -- stow $i
    echo "$i config loaded.";
  done
}

# Only run if on arch
source /etc/os-release
if [[ $ID == "arch" ]]; then
  if pacman -Q gum > /dev/null; then
    select_item;
  else
    read -p "Install required pkg gum? (Y/n): " yn;
    case $yn in
      [Yy]* )          sudo pacman -S gum --noconfirm;;
      ''|*[[:space:]]) sudo pacman -S gum --noconfirm;;
      [Nn]* )          echo "Exiting" && exit;;
      * )              echo "Invalid input. Exiting." && exit;;
    esac
    select_item;
  fi
else
  echo "This script is only currently supported on Arch linux."
  echo "Support for other systems is coming soon."
fi