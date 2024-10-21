WORKSPACE="$HOME/dotfiles"
if [ "$SPIN" ]; then
  #Ensure vim command links to basic vim
  sudo rm /etc/alternatives/vim
  sudo ln -s /usr/bin/vim.basic /etc/alternatives/vim
  rm $HOME/.zshrc
fi

#scripts
./scripts/setup_git_config.sh
./scripts/setup_nvim.sh

#link dot files using sym links
ln -s $WORKSPACE/.gitconfig $HOME/.gitconfig
ln -s $WORKSPACE/.vimrc $HOME/.vimrc
ln -s $WORKSPACE/.vim $HOME/.vim
ln -s $WORKSPACE/.bashrc $HOME/.bashrc
ln -s $WORKSPACE/.zshrc $HOME/.zshrc
ln -s $WORKSPACE/.bash_profile $HOME/.bash_profile
ln -s $WORKSPACE/.gitignore_global $HOME/.gitignore_global
ln -s $WORKSPACE/.rubocop.yml $HOME/.rubocop.yml

git submodule update --force --recursive --init --remote
git pull --recurse-submodules
