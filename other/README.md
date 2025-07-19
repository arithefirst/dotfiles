# Other configs

The configs stored here either

- Are not stored within the `~/` direcory
- Are not for utilities related to my OS (ex: A config for some website)

Information about each individual config here can be found below

## LY

[LY](https://github.com/fairyglade/ly) is my display manager of choice for arch. It is written in Zig and C, and is entirely CLI based.

### Dependencies

- ly

### Install Command

```
# On Arch Linux
sudo pacman -S ly # requires 'extra' repo
```

### Loading config

Load the config for LY by deleting your existing `/etc/ly/config.ini` and replacing it with [`./ly/config.ini`](https://github.com/arithefirst/dotfiles/blob/master/other/ly/config.ini) (`sudo rm /etc/lyconfig.ini && cp ./ly/config.ini /etc/ly/`)

## Pacman

[Pacman](https://wiki.archlinux.org/title/Pacman) is the default package manager for Arch Linux and other Arch based systems.

### Dependencies

- pacman (Should come with your OS unless you royally fucked up the installation)

### Loading config

Load the config for Pacman by deleting your existing `/etc/pacman.conf` and replacing it with [`./pacman/pacman.conf`](https://github.com/arithefirst/dotfiles/blob/master/other/pacman/pacman.conf) (`sudo rm /etc/pacman.conf && cp ./pacman/pacman.conf /etc/pacman.conf`)
