# Install packages
yay -S --needed --noconfirm keepassxc neovim ttf-iosevkaterm-nerd zsh zsh-theme-powerlevel10k-git picom nitrogen gxkb setxkbmap conky autotiling ripgrep fzf alacritty

# Setup preferences

######
# i3 #
######

# Replaces i3 configs 
# rm -rf "$HOME/.config/i3/"
ln -s "$HOME/dotfiles/i3/" "$HOME/.config"

#########
# picom #
#########

# Adds picom config
# rm -rf "$HOME/.config/picom/"
ln -s "$HOME/dotfiles/picom/" "$HOME/.config"


#############
# alacritty #
#############
ln -s "$HOME/dotfiles/alacritty/" "$HOME/.config/alacritty"

#######
# zsh #
#######

# Creates directory for zsh in .config
mkdir -p "$HOME/.config/zsh"

# Links zshrc
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"

# Adds custom aliases
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"

##########
# neovim #
##########

# Installs packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#Syncs packer
# NEEDS TESTING
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Adds nvim config
ln -sf "$HOME/dotfiles/nvim" "$HOME/.config/nvim"


#######
# git #
#######

# Links gitconfig to home directory
ln -sf "$HOME/dotfiles/gitconfig" "$HOME/.gitconfig"
