# Configs

This is a bare git repo that contains configuration files for myself. The setup
for this was done using this Atlassian blog post as a guide:

- [Dotfiles: Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles)

## Setting it up

This repo requires you to clone this to `~/Workspace/configs` in order for
everything to work:

1. Clone the repo: `git clone --bare <git-repo-url> $HOME/Workspace/configs/`
2. Go into the directory: `cd $HOME/Workspace/configs/`
3. Run checkout: `git checkout`

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
