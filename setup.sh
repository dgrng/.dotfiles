#!/usr/bin/env bash

export DOTFILES="$HOME/.dotfiles"
# xdg config
export XDG_CONFIG_HOME="$HOME/.config"

mkdir -p "$XDG_CONFIG_HOME"

## zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
mkdir -p "$ZDOTDIR"

ln -sfn "$DOTFILES/zsh/zshenv" "$HOME/.zshenv"
ln -sfn "$DOTFILES/zsh/zprofile" "$ZDOTDIR/.zprofile"
ln -sfn "$DOTFILES/zsh/zshrc" "$ZDOTDIR/.zshrc"
ln -sfn "$DOTFILES/zsh/extra" "$ZDOTDIR/extra"

## neovim
ln -sfn "$DOTFILES/nvim" "$XDG_CONFIG_HOME/nvim"

## alacritty
ln -sfn $DOTFILES/alacritty $XDG_CONFIG_HOME/alacritty

## tmux
ln -sfn "$DOTFILES/tmux" "$XDG_CONFIG_HOME/tmux"

## i3
ln -sfn "$DOTFILES/i3" "$XDG_CONFIG_HOME/i3"
ln -sfn "$DOTFILES/i3status" "$XDG_CONFIG_HOME/i3status"

ln -sfn "$DOTFILES/bat" "$XDG_CONFIG_HOME/bat"
ln -sfn "$DOTFILES/picom" "$XDG_CONFIG_HOME/picom"
