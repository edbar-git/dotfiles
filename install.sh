# Install configs on a new system

######
# i3 #
######

# Replaces i3 configs with the ones in this repository
rm -rf "$HOME/.config/i3/"
ln -s "$HOME/dotfiles/i3/" "$HOME/.config"

#########
# picom #
#########

# Replaces picom configs with the ones in this repository
rm -rf "$HOME/.config/picom/"
ln -s "$HOME/dotfiles/picom/" "$HOME/.config"

#######
# zsh #
#######

# Creates directory for zsh in .config
mdkir -p "$HOME/.config/zsh"

# Links zshrc in this repository to .config/zshrc
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"

# Adds custom aliases
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"

########
# nvim #
########

# Adds nvim config
ln -sf "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
