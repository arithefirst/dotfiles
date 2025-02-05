# VSCodium

To load this config into VSCodium, Not VSCode ([learn the difference](https://vscodium.com/)), follow the steps below.

1. Install the [local sync extension](https://open-vsx.org/extension/anweber/local-sync)
2. In the extension settings, Set "Local-Sync: Backup Path" to the absolute path of this folder. (EX: `/home/ari/dotfiles/vscodium`)
3. Press `CRTL + SHIFT + P`
4. Select and run "local-sync: restore"

This should load all configs and extensions for VSCodium

> [!TIP]
> If this does not work, you may need to go into your local clone of this folder
> and run `git reset --hard HEAD`, as somesimes the extension will overwrite existing
> files when first installed.
