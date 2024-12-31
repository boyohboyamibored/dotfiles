# My Dotfiles

These are my dotfiles on [Artix Linux](https://www.artixlinux.org) for

- [Hyprland](https://www.hyprland.org) (Window Manager)
- waybar (status bar)
- kitty (terminal)
- yazi (file manager)
- mpd & ncmcpp (music)
- mpv (video)
- newsboat (RSS reader)
- tmux

## Requirements

The required dependencies are

- GNU/stow
- eza (fancy ls)
- bat (fancy cat)
- hyprlock and wlogout (take a guess)
- python-pyprland for scratchpads
- swaybg for setting wallpapers

On Arch-based distros

```bash
sudo pacman -S stow mpd ncmcpp mpv newsboat tmux hyrpland waybar mpv yazi eza bat hyprlock wlogout swaybg rofi zsh-syntax-highlighting zsh-autosuggestions zsh-completions
```

AUR packages

```bash
yay -S python-pyrpland
```

## Install

> [!warning]
> Do not do this in a graphical environment running Hyprland, exit the Hyprland session first. This is because Hyprland will automatically create a `$HOME/.config/hypr/hyprland.conf` file if the file moves when the display server is running.
> Back up your configs if you have any

```bash
cd
mv .config{,.bak}
git clone https://github.com/boyohboyamibored/dotfiles.git .dotfiles
cd .dotfiles
stow .
```
