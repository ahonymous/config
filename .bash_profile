export HOMEBREW_GITHUB_API_TOKEN="016b76c8f0aa0ed39ace316e22683d5cc1c0e2d9"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Include composer BIN
if [ -d $HOME/.composer/vendor/bin ]; then
  PATH=$PATH:$HOME/.composer/vendor/bin
fi

eval "$(symfony-autocomplete)"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[34;1m\]\$(__git_ps1)\[\033[33;1m\]\$\[\033[00m\] "
export CLICOLOR=1
export LSCOLORS=AxFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#export PATH='/usr/local/bin:$PATH'
export HISTCONTROL=ignoredups
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi
