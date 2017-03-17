export HOMEBREW_GITHUB_API_TOKEN="cb2ae5cf3e4bf502ea073c5a926da918dbde8701"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Include composer BIN
if [ -d $HOME/.composer/vendor/bin ]; then
  PATH=$PATH:$HOME/.composer/vendor/bin
fi

eval "$(symfony-autocomplete)"

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[32;1m\]\$(parse_git_branch)\[\033[33;1m\]\$\[\033[00m\] "
export CLICOLOR=1
export LSCOLORS=AxFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#export PATH='/usr/local/bin:$PATH'
export HISTCONTROL=ignoredups
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
