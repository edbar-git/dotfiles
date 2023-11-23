# Install configs on a new system

######
# i3 #
######

rm -rf "$HOME/.config/i3/"
ln -s "$HOME/dotfiles/i3/" "$HOME/.config"

#########
# picom #
#########

rm -rf "$HOME/.config/picom/"
ln -s "$HOME/dotfiles/picom/" "$HOME/.config"
