function sparu --description 'Searches Arch and AUR repositories for packages and installs selected packages'
    set -l packages $(paru -Ssq | fzf -m --preview="paru -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
    if [ -n "$packages" ]
        paru -Syy $packages
    end
end
