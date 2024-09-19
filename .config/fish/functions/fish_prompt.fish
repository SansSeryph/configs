function fish_prompt --description 'Write out the prompt'
    echo

    # User
    set_color -d brcyan
    echo -n [(whoami)@(hostname)]

    # Git Info (if CWD hasit)
    set -l git_branch_name (git branch --show-current 2> /dev/null)
    set_color -d brgreen
    echo -n " ["$gitbranch_name"]"

    # PWD
    set_color -d bryellow
    echo " ["(prompt_pwd)"]"

    # The prompt
    set_color normal
    echo -n '-> '
end
