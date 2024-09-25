function fish_prompt --description 'Write out the prompt'
    echo

    # User/Host
    set_color -d brcyan
    echo -n [(whoami)@(hostname)]

    # Git Branch
    set -l git_branch_name (git branch --show-current 2> /dev/null)
    set_color -d brgreen
    echo -n " "[Git: $git_branch_name]

    # PWD
    set_color -d bryellow
    echo " ["(prompt_pwd)"]"

    # Prompt
    set_color normal
    echo -n '-> '
end
