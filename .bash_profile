if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
. "$HOME/.cargo/env"
