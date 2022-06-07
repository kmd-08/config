export BASH_SILENCE_DEPRECATION_WARNING=1
export XDG_CONFIG_HOME=$HOME/.config/

if [ -d "$HOME/bin" ] ; then PATH="$HOME/bin:$PATH"; fi
if [ -d "$HOME/.local/bin" ] ; then PATH="$HOME/.local/bin:$PATH"; fi

. "$HOME/.cargo/env"
