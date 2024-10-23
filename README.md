# 🦄 Dotfiles 🦄
Configured with GNU Stow

## How to Use
1. Clone this repo:

    ```shell
    git clone --recursive https://github.com/arithefirst/dotfiles.git $HOME/dotfiles
    cd $HOME/dotfiles/
    ```
2. Install GNU Stow:

    ```shell
    # On Arch Linux
    sudo pacman -S stow
    ```
3. Run stow for the things you want to install
   ```shell
   # Example
   stow nvim
   # Loads nvim config
   ```

## ZSH Dependencies
To load the ZSH config, some packages are required.

```bash
# On Arch Linux
yay -S \
eza bat \
pipes.sh fzf
```
- `eza` is a drop in replacement for `ls` with extra features
- `bat` is a version of `cat` with syntax highlighting and better readibility
- `fzf` (Fuzzy Finder) is a search tool for the CLI which can be activated by pressing `CTRL+t`
- `pipes.sh` (run with `pipes` if you're using my config) just displays random pipes on the screen
