[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"
export PATH=$PATH:"/Users/kevinbriggs/Documents/scripts"
export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
export NVM_DIR="$HOME/.nvm"
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
export PATH=$PATH:"/Users/kevinbriggs/Documents/scripts/shell_scripts/new_branch"
export PATH=$PATH:"/Users/kevinbriggs/Documents/scripts/shell_scripts/apache-maven-3.8.4/bin/"
export HOMEBREW_NO_AUTO_UPDATE=1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
