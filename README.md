# Configs

This is a bare git repo that contains configuration files for myself. The setup
for this was done using this Atlassian blog post as a guide:

- [Dotfiles: Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles)

## Setting it up

Below is a quick one-shot list of commands to just get everything to work for
the fish shell. It will:

1. Back up configs that will conflict with the repo during checkout
2. Clone the repo. You'll need to update the path if you fork this
3. Install everything using `git checkout`

```shell
mv $HOME/.config/bat $HOME/.config/bat.bak
mv $HOME/.config/fish $HOME/.config/fish.bak
mv $HOME/.config/kitty $HOME/.config/kitty.bak
mv $HOME/.config/nvim $HOME/.config/nvim.bak

mv $HOME/.default-gems $HOME/.default-gems.bak
mv $HOME/.default-npm-packages $HOME/.default-npm-packages.bak
mv $HOME/.default-python-packages $HOME/.default-python-packages.bak

set -l config git --git-dir $HOME/Workspace/configs/ --work-tree=$HOME
git clone --bare git@github.com:SansSeryph/configs.git $HOME/Workspace/configs/
config checkout
config config --local status.showUntrackedFiles no
```

> [!IMPORTANT]
> If a file exists while checkout is running, it will throw an error. Be sure to
> back up or handle the file somehow before moving on

> [!TIP]
> Be sure to run `LazyHealth` after installation to make sure Neovim is good

## Working with this repo

After setting the config files up, it will add a fish terminal alias for the
command `config`, which is an alias for `git` that uses this repository. You
can use it to work with the files that are tracked here. Examples:

```shell
config status
config add <path>
config commit -m <message>
```
