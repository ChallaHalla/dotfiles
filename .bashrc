alias web="cd /Users/siddarthchalla/repos/dt_repos/web"
alias api="cd /Users/siddarthchalla/repos/dt_repos/api"
alias fe="cd /Users/siddarthchalla/repos/dt_repos/frontend"
alias cli="cd /Users/siddarthchalla/repos/dt_repos/dt-cli"
alias dtgem="cd /Users/siddarthchalla/repos/dt_repos/dt"
alias tenon="cd /Users/siddarthchalla/repos/tenon"

alias mig="cd /Users/siddarthchalla/Desktop/coding_projects/migrations"
alias migration="cd /Users/siddarthchalla/Desktop/coding_projects/migrations"
alias migrations="cd /Users/siddarthchalla/Desktop/coding_projects/migrations"

alias community="cd /Users/siddarthchalla/Desktop/coding_projects/dt_repos/community"
alias pizza="cd /Users/siddarthchalla/Desktop/coding_projects/other/free-pizza-rails"
alias code="cd /Users/siddarthchalla/Desktop/coding_projects"
alias shopify="cd /Users/siddarthchalla/Desktop/coding_projects/shopify"

alias wp="cd ~/dotfiles"

#alias dt="cd /Users/siddarthchalla/Desktop/coding_projects/dt_repos/dt"

alias bp="vim ~/.bash_profile"
alias bc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"

alias v="vim;nvm use 8"

alias gs="git status"
alias gb="git branch"
alias gp="git pull"
alias gmm="git pull origin master"
alias gpush="git push"
alias gc="git commit"
alias gch="git checkout"
alias ga="git add ."

alias gd="git diff"
alias gdf="git diff --name-only"

# git auto complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

kp(){
  port=${1:-3100}
  command=${2:-'ruby'}
  pid=$(lsof -a -i:$port -c $command -t); 

  if [ -z $pid ]; then 
    echo "no $command processes found on given port"; 
  else 
    echo "killing $command processes on port $port";
    kill -TERM $pid || kill -KILL $pid
  fi
}

swp_delete(){
  find . -type f -name "*.sw[klmnop]" -delete
}

src(){
  source ~/.bashrc
}

checkout_master(){
  web
  gch master
  gp
  api
  gch master
  gp
  fe
  gch master
  gp
  dtgem
  gch master
  gp
  api
}

alias load_fixtures="RAILS_ENV=test rails db:fixtures:load"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/Applications/Google\ Chrome.app/Contents/MacOS/:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

#this is to make sure the rbenv works
export PATH="$HOME/.rbenv/shims:$PATH"

#make sure brew works
export PATH="/opt/homebrew/bin/:$PATH"

alias sub_update="git submodule update --init --recursive"
alias clean_merged_branches="git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d"

export PS1="\@"::$PS1
export AWS_REGION="us-east-1"
export AWS_DEFAULT_PROFILE="sid"

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }
"chruby ruby-2.7.5

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
