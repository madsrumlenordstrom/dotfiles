if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set preferred terminal emulator
set -x TERM alacritty

# Set preferred text editor
set -x VISUAL nvim
set -x EDITOR nvim

# Set man pager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Set browser
set -x BROWSER firefox

# XDG stuff
set -x XDG_CONFIG_HOME "$HOME"/.config
set -x XDG_CACHE_HOME "$HOME"/.cache
set -x XDG_DATA_HOME "$HOME"/.local/share
set -x XDG_STATE_HOME "$HOME"/.local/state

# Set stuff to to follow XDG dirs
set -x CARGO_HOME "$XDG_DATA_HOME"/cargo
set -x _JAVA_OPTIONS -Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
set -x GNUPGHOME "$XDG_DATA_HOME"/gnupg
set -x PYTHONSTARTUP "$XDG_CONFIG_HOME"/python/pythonrc

# Wayland stuff
set -x QT_QPA_PLATFORM wayland

starship init fish | source
