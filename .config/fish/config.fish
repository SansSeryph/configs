if status is-interactive
    set -gx EDITOR nvim
    ~/.local/bin/mise activate fish | source
end
