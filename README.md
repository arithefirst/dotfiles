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

### ZSH Dependencies
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

## Credits
### Neovim
- Neovim distro from [NvChad](https://nvchad.com/)

### Tmux
- `tmux-copycat` from [tmux-plugins/tmux-copycat](https://github.com/tmux-plugins/tmux-copycat)
- `tmux-open` from [tmux-plugins/tmux-open](https://github.com/tmux-plugins/tmux-open)
- `tmux-power` from [wfxr/tmux-power](https://github.com/wfxr/tmux-power)
- `tmux-powerline` from [erikw/tmux-powerline](https://github.com/erikw/tmux-powerline)
- `tmux-prefix-highlight` from [tmux-plugins/tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)
- `tmux-sensible` from [tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
- `tmux-session-wizard` from [27medkamal/tmux-session-wizard](https://github.com/27medkamal/tmux-session-wizard)
- `tmux-yank` from [tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank)
- Tmux Plugin Manager from [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)

### ZSH
- Powerline and Plugins from [Oh My ZSH](https://ohmyz.sh/)
