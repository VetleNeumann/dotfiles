
# dotfiles

dotfile setup for Linux/Arch computers.




## Installation

Installation is done using chezmoi. Since we're on a fresh install, make sure SSH is set up first

```bash
  sudo pacman -S openssh
  ssh-keygen -t ed25519 -C "vetle.neumann@protonmail.com"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_ed25519
  # Add id_ed25519.pub to GitHub
```

Then, get chezmoi files and install packages.

```bash
  sudo pacman -S chezmoi
  chezmoi init --apply git@github.com:VetleNeumann/dotfiles.git

  # packages
  pacman -S --needed - < ~/.config/packages/pacman.explicit.txt
  # AUR packages
  sudo pacman -S --needed base-devel
  cd /tmp
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si
  paru -S --needed - < ~/.config/packages/aur.explicit.txt
```
