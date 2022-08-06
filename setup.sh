#!/usr/bin/env bash

export DOTFILES="$HOME/.dotfiles"
# xdg config
export XDG_CONFIG_HOME="$HOME/.config"

mkdir -p "$XDG_CONFIG_HOME"

## zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
mkdir -p "$ZDOTDIR"

ln -sf "$DOTFILES/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/zprofile" "$ZDOTDIR/.zprofile"
ln -sf "$DOTFILES/zsh/zshrc" "$ZDOTDIR/.zshrc"
ln -sf "$DOTFILES/zsh/extra" "$ZDOTDIR/extra"

## neovim
ln -sf "$DOTFILES/nvim" "$XDG_CONFIG_HOME/nvim"

## alacritty
ln -sf $DOTFILES/alacritty $XDG_CONFIG_HOME/alacritty

## tmux
ln -sf "$DOTFILES/tmux" "$XDG_CONFIG_HOME/tmux"

## i3
ln -sf "$DOTFILES/i3" "$XDG_CONFIG_HOME/i3"
ln -sf "$DOTFILES/i3status" "$XDG_CONFIG_HOME/i3status"
