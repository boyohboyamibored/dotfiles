# My Dotfiles

These are my dotfiles for the following programs. My current distro is [Artix Linux](https://www.artixlinux.org)

- [Hyprland](https://www.hyprland.org) (Window Manager)
- waybar (status bar)
- nvim (editor)
- kitty (terminal)
- yazi (file manager)
- mpd & ncmcpp (music)
- mpv (video)
- newsboat (RSS reader)
- tmux

## Requirements

The dependencies are the programs listed above (although you don't need to install them). You'll also need the following programs because they're in my dotfiles

- GNU/stow
- eza
- bat
- hyprlock and wlogout (take a guess)
- swaybg for setting wallpapers

`sudo pacman -S eza bat stow swaybg hyprlock wlogout`

Optional dependencies

- python-pyprland for scratchpads

`yay -S pyprland`

## Setup

> [!CAUTION]
> Do not do this in a graphical environment running Hyprland, first kill the current Xorg or Wayland session. This is because Hyprland will automatically create a `$HOME/.config/hypr/hyprland.conf` file if the file moves when the display server is running.  
> Back up your configs if you have any

```bash
mv .config{,.bak}
git clone https://github.com/boyohboyamibored/dotfiles.git .dotfiles
cd .dotfiles
stow .
```
