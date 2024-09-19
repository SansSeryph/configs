function ls --wraps='exa --long --group-directories-first --icons --git' --description 'alias ls=exa --long --group-directories-first --icons --git'
    exa --long --group-directories-first --icons --git $argv
end
