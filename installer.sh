#!/bin/bash

# removes the bajillion files we need for hyprland
function hyprland_del() { 
  rm -rf ~/.local/bin/rofi-clipping-mode ~/.config/hypr 
  rm -rf ~/.config/Kvantum/catppuccin-mocha-mauve ~/.config/Kvantum/kvantum.kvconfig
  rm -rf ~/.config/rofi ~/.config/swaync ~/.config/waybar ~/.config/wlogout
}

# Checks if a given package is installed, if not installs it
function check_pkg() {
  if pacman -Q "$1" > /dev/null; then
      continue;
    else
      read -p "Install required pkg $1? (Y/n): " yn;
      case $yn in
        [Yy]* )          sudo pacman -S $1 --noconfirm;;
        ''|*[[:space:]]) sudo pacman -S $1 --noconfirm;;
        [Nn]* )          echo "Exiting" && exit;;
        * )              echo "Invalid input. Exiting." && exit;;
      esac
      continue;
    fi
}

# select_item opens a select menu for all of the config options
function select_item() {
  # Get all the current dirs and open a gum menu for them
  sel=$(find . -maxdepth 1 -type d | sed -n 's/^\.\///p' | grep -v -E "\.git" | gum choose --no-limit --selected.foreground="177" || echo "Command failed." && exit)

  if gum confirm "This will overwrite all existing configs for these selections. Are you sure?" --selected.background="177"; then 
    # Select AUR helper
    aur=$(gum choose --limit=1 --selected.foreground="177" yay paru)
    echo $aur

    for i in $sel; do 
      case $i in
        # Remove existing config files
        "yazi")      rm -rf ~/.config/yazi;;
        "ghostty")   rm -rf ~/.config/ghostty;;
        "nvim")      rm -rf ~/.config/nvim;;
        "zsh")       rm -rf ~/.zshrc ~/.zsh;;
        "fastfetch") rm -rf ~/.config/fastfetch;;
        "tmux")      rm -rf ~/.tmux.conf ~/.tmux;;
        "hyprland")  hyprland_del;;
      esac

      # Put a spinner in case the stow takes a billion years for some reason
      gum spin --spinner dot --title "Loading $i config..." --show-error --show-output -- stow $i

      # Read the dependencies.txt file
      echo "Installing dependencies for $i through yay..."
      yay -S $(cat ./$i/dependencies.txt) --noconfirm || echo "Command failed." && exit
      echo "$i config loaded.";
    done
  else
    echo "Quitting..." && exit
  fi
}

# Only run if on arch
source /etc/os-release
if [[ $ID == "arch" ]]; then
  # Check if gum and stow are installed
  check_pkg "gum"
  check_pkg "stow"
  select_item
else
  echo "This script is only currently supported on Arch linux."
  echo "Support for other systems is coming soon."
fi

