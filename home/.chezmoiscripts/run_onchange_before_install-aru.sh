#!/bin/bash

set -euo pipefail

sudo pacman -S --needed base-devel
temp_directory="$(mktemp -d)"
cd "${temp_directory}"
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
