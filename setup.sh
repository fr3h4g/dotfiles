#!/bin/sh
nix-env -iA nixpkgs.stow
nix-env -iA nixpkgs.pyenv
nix-env -iA nixpkgs.neovim
nix-env -iA nixpkgs.starship
stow --restow --target="$HOME" files
