export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZRCDIR="$ZDOTDIR/rc"

### locale ###
export LANG="en_US.UTF-8"
# Env path
export "PATH=$HOME/.local/bin:$PATH"

source "$ZDOTDIR/.zshrc"
