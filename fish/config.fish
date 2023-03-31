if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr --add autoremove "paru -Qtdq | paru -Rcns -"
    abbr --add la exa -la --icons --colour=automatic --time-style=long-iso
    abbr --add ll exa -l --icons --colour=automatic --time-style=long-iso
    abbr --add ls exa
    abbr --add ss paru -Ss
    abbr --add si paru -Si
    abbr --add qi paru -Qi
    abbr --add qs paru -Qs
    abbr --add syu paru -Syu
    abbr --add yeet paru -Rcns
    abbr --add hx helix
    abbr --add mkdir mkdir -p
    set -x FZF_DEFAULT_COMMAND 'fd --type file --follow'
    set -x FZF_CTRL_T_COMMAND "command $FZF_DEFAULT_COMMAND . \$dir 2> /dev/null"
    set -x FZF_DEFAULT_OPTS "--height=60% --layout=reverse --info=inline --border=sharp --preview-window=border-sharp --no-scrollbar --no-separator --color=16,border:-1 --margin=1"
end

starship init fish | source
