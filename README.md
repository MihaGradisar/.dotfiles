# My dotfiles

## Instalation
Clone the repo and move into the root directory.
Use stow on specific directories to place the config files in the correct locations on your machine.

Example:

```sh
stow nvim
```

This will create a symlink in ~/.config/nvim.

## Dependencies

### Core (Required for Installation)
- **Git**: Duh obviously! 
- **GNU Stow**: Manages symlinks.
- **CaskaydiaMono Nerd Font**: Required for Ghostty and Neovim icon support.

### Runtime (Required for Configs)
- **Oh My Zsh**: Required for theme and plugin management.
- **Nvim**: fzf, fd, rg, lazygit
- **Zsh**: fzf, zoxide
- **Zsh Plugins**: zsh-autosuggestions, zsh-syntax-highlighting

Install script will be added when I have time.
