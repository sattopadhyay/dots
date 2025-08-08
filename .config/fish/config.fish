#
# $HOME/.config/fish/config.fish
#Setting environment variables
set fish_greeting ""
set -g fish_cursor_insert line blink
set -g fish_cursor_default line blink
set -gx fish_user_paths $HOME/.local/bin
fish_vi_key_bindings

[ -z "$BEMENU_OPTS" ] && export BEMENU_OPTS='-bil 20 --fn pango:JetBrains Mono NL Bold 15 -W 0.4 --prompt=""'

#Autojump
# [ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish

#	Old Command for the same-
###if test -f /usr/share/autojump/autojump.fish ; . /usr/share/autojump/autojump.fish ; end

# enable if pyenv is to be used for system python management
#pyenv init - fish | source
