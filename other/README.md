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

Load the config for LY by deleting your existing `/etc/ly/config.ini` and replacing it with [`./ly/config.ini`](https://github.com/arithefirst/dotfiles/blob/master/other/ly/config.ini)
