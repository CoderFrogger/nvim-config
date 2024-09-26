
# nvim-config
This config is based off of [ProgrammingRainbow](https://github.com/ProgrammingRainbow) configs.

This nvim config was built using nvChad. It's using the base config and has:

- LSP for C/C++, Python, Go
- DAP configured for C++, Python, Go
- Linting for C/C++, Python, Go
- Undotree
- Some extra custom configs like `scrolloff 8`

I use Arch btw, so the instructions are for Linux (Arch) users 🤡 (naturally)


## Backup/remove old config
Backup old nvim config
```
mv ~/.config/nvim ~/.config/nvim-old
```
Delete old nvim config
```
rm -rf ~/.config/nvim
```
Remove local/state and local/share
```
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```
## Install
Install required packages.
```
sudo pacman -S --needed neovim unzip luarocks xclip wl-clipboard
```
And then for the best part
```
git clone https://github.com/CoderFrogger/nvim-config.git ~/.config/nvim && nvim
```
Presto! You are now using my config :)
