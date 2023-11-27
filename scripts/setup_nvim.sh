WORKSPACE="$HOME/dotfiles"

CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"
# Remove existing nvim config
rm -rf $CONFIG/nvim
ln -s $WORKSPACE/nvim $CONFIG
