source ~/.rvm/scripts/rvm
alias ls='ls -G'
alias ll='ls -lG'
export CLICOLOR=1
export LSCOLORS=AgFxCxDxBxegedabagaced
export PS1="\W \$"
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(pyenv init -)"
