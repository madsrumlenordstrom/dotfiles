if status is-interactive
    # Abbreviations
    abbr --add autoremove "paru -Qtdq | paru -Rcns -"
    abbr --add la eza -la --icons --time-style=long-iso
    abbr --add ll eza -l --icons --time-style=long-iso
    abbr --add ls eza
    abbr --add tree eza --tree
    abbr --add ss paru -Ss
    abbr --add si paru -Si
    abbr --add qi paru -Qi
    abbr --add qs paru -Qs
    abbr --add fx paru -Fx
    abbr --add syu paru -Syu
    abbr --add yeet paru -Rcns
    abbr --add hx helix
    abbr --add --set-cursor rp "realpath -z % |xargs --null -I -- echo 'wl-copy --' |sh"
    abbr --add wg "wl-paste | xargs -I % echo 'wget --no-hsts %' | sh"

    # Git abbreviations
    abbr --add mkdir mkdir -p
    abbr --add ga git add
    abbr --add grs git restore
    abbr --add --set-cursor gc git commit -m '"%"'
    abbr --add gs git status
    abbr --add gd git diff
    abbr --add gp git push
    abbr --add gb git branch
    abbr --add gco git checkout
    abbr --add gl git log
    abbr --add gpl git pull
    abbr --add gcl "wl-paste | xargs -I % echo 'git clone %' | sh"

    # Stuff for fzf
    set -x FZF_DEFAULT_COMMAND 'fd --type file --type directory --follow'
    set -x FZF_CTRL_T_COMMAND "command $FZF_DEFAULT_COMMAND . \$dir 2> /dev/null"
    set -x FZF_ALT_C_COMMAND "command fd --min-depth 1 --type directory --follow . \$dir 2> /dev/null"
    set -x FZF_DEFAULT_OPTS "--height=60% --layout=reverse --info=inline:' ' --border=sharp \
    --preview-window=border-sharp --no-scrollbar --no-separator --margin=1 --color=16,border:-1 \
    --color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:red \
    --color=info:#737994,pointer:#f2d5cf,gutter:-1 \
    --color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:red"

    # Keybindings
    bind \b backward-kill-word
end

starship init fish | source
