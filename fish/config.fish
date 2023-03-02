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
end

starship init fish | source
