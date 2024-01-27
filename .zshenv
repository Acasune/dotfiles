typeset -gU PATH path

### locale ###
export LANG="en_US.UTF-8"

### XDG ###
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZRCDIR="$ZDOTDIR/rc"

# Env Paths
# Rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Deno
export DENO_HOME="$XDG_DATA_HOME/deno"

# Go
export GOPATH="$XDG_DATA_HOME/go"

#Dotnet
export DOTNET_ROOT="$XDG_DATA_HOME/.dotnet"

#Others
export DOCKER_CONFIG="$XDG_DATA_HOME/docker"
export FZF_HOME="$XDG_DATA_HOME/.fzf/"

path=(
    '/usr/local/bin'(N-/)
    '/usr/bin'(N-/)
    '/bin'(N-/)
    '/usr/local/sbin'(N-/)
    '/usr/sbin'(N-/)
    '/sbin'(N-/)
    "$HOME/.local/bin"(N-/)
    "$CARGO_HOME/bin"(N-/)
    "$GOPATH/bin"(N-/)
    "$DENO_HOME/bin"(N-/)
    "$DOTNET_ROOT"
    "$DOTNET_ROOT/tools"
    "$FZF_HOME/bin"(N-/)
    "$path[@]"
)

# Read Other files
source "$ZDOTDIR/.zshrc"

if [ -f "$ZDOTDIR/.zshenv.local" ]; then
	source "$ZDOTDIR/.zshenv.local"
fi