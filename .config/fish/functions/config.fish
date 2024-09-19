function config --wraps='/usr/bin/git --git-dir=~/Workspace/configs/ --work-tree=~' --wraps='/usr/bin/git --git-dir=/home/sansseryph/Workspace/configs/ --work-tree=~' --wraps='/usr/bin/git --git-dir=/home/sansseryph/Workspace/configs/ --work-tree=/home/sansseryph' --description 'alias config /usr/bin/git --git-dir=/home/sansseryph/Workspace/configs/ --work-tree=/home/sansseryph'
    /usr/bin/git --git-dir=/home/sansseryph/Workspace/configs/ --work-tree=/home/sansseryph $argv
end
