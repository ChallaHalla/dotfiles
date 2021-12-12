WORKSPACE="$HOME/dotfiles"
if [ "$SPIN" ]; then
  #Ensure vim command links to basic vim
  sudo rm /etc/alternatives/vim
  sudo ln -s /usr/bin/vim.basic /etc/alternatives/vim
fi

ln -s $WORKSPACE/.vimrc $HOME/.vimrc
ln -s $WORKSPACE/.vim $HOME/.vim
ln -s $WORKSPACE/.bashrc $HOME/.bashrc
ln -s $WORKSPACE/.zshrc $HOME/.zshrc
ln -s $WORKSPACE/.bash_profile $HOME/.bash_profile
