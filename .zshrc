if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)
