# Enable bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Bash completion extensions
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

# Bash formatting
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='\[\033[32m\]\u@\t\[\033[m\] \[\033[36m\]\W\[\033[m\] $(__git_ps1 "(\[\033[1;33m\]%s\[\033[m\]) ")\[\033[31m\]$\[\033[m\] '
export CLICOLOR=1
export LS_COLORS=exfxcxdxbxegedabagacad

export PATH=/usr/local/bin:/usr/sbin:$PATH
export EDITOR='vim'

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# virtualenv-wrapper
export WORKON_HOME=$HOME/Environments
export PROJECT_HOME=$HOME/Development
source /usr/local/bin/virtualenvwrapper.sh

# direnv nonsense
eval "$(direnv hook bash)"

# aliases
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# added by travis gem
[ -f /Users/jane/.travis/travis.sh ] && source /Users/jane/.travis/travis.sh
