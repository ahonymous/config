export HOMEBREW_GITHUB_API_TOKEN="56a611bc6dd179053e419dfe27d1fe3e0fd098f4"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Include composer BIN
if [ -d $HOME/.composer/vendor/bin ]; then
  PATH=$PATH:$HOME/.composer/vendor/bin
fi

eval "$(symfony-autocomplete)"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=AxFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#export PATH='/usr/local/bin:$PATH'
export HISTCONTROL=ignoredups
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
