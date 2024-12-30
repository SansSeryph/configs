function updates
    # update the os
    yay --noconfirm

    DIFFPROG='nvim -d' pacdiff
    sudo reflector --protocol https --verbose --latest 25 --sort rate --save /etc/pacman.d/mirrorlist
    yay -Syyu --noconfirm

    eos-rankmirrors --verbose
    yay -Syyu --noconfirm

    # clear os caches
    sudo journalctl --vacuum-time=4weeks

    sudo paccache -r
    sudo paccache -ruk0

    yay -Rns (yay -Qdtq) --noconfirm 2>/dev/null

    # update applications
    mise self-update
    mise upgrade

    tldr --update
    pip install --upgrade pip
    gem update --system

    nvim --headless +"Lazy! sync" +qa
end
