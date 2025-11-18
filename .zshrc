if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/siddarthchalla/.kube/config:/Users/siddarthchalla/.kube/config.shopify.cloudplatform

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
