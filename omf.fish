# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

thefuck --alias | source

alias vim nvim
alias ls 'ls -latrh'

set -U fish_greeting "Oh hey.  Didn't see you there.  So you come here often?"
