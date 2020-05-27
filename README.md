# dotfiles

* Distro: Manjaro Linux x86_64
* DE: GNOME Shell
* WM: Mutter
* Terminal: [Alacritty](https://github.com/alacritty/alacritty) a cross-platform, GPU-accelerated terminal emulator.
* Terminal Theme: [Breeze](https://github.com/eendroroy/alacritty-theme)
* Shell: [zsh](http://www.zsh.org/) an extended Bourne shell with many improvements
* Shell FW: [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) a framework for managing your zsh configuration
* Shell Theme: [powerlevel10k](https://github.com/romkatv/powerlevel10k) a Zsh theme
* ls: [coloris](https://github.com/athityakumar/colorls)
* WM Theme: [Matcha-dark-sea](https://github.com/vinceliuice/Matcha-gtk-theme), on KDE: [Breeze](https://github.com/KDE/breeze)
* Theme: [Matcha-dark-sea](https://github.com/vinceliuice/Matcha-gtk-theme) \[GTK2/3\]
* Icons: [Papirus-Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) or -Maia \[GTK2/3\]
* Cursor: [la capitaine light](https://github.com/keeferrourke/capitaine-cursors)
* Font: [Roboto](https://fonts.google.com/specimen/Roboto)
* File manager: [Nautilus](https://github.com/GNOME/nautilus)

## Other packages

* Tilling window manager: [I3](https://github.com/Airblader/i3)
* System infos: [neofetch](https://github.com/dylanaraps/neofetch)
* System monitoring: [htop](https://github.com/hishamhm/htop)
* CPU monitor: [s-tui](https://github.com/amanusk/s-tui)
* Emoji: [nerd fonts](https://github.com/ryanoasis/nerd-fonts)
* Music visualizer: [cava](https://github.com/karlstav/cava)
* GTK+ settings: [lxappearance]()
* Terminal clock: tty-clock
* Terminal color: [pywal](https://github.com/dylanaraps/pywal)
* Color: [oomox](https://github.com/themix-project/oomox)

## App

* IDE: VSCode
* Web: Firefox, Brave
* Social: Discord, Signal
* VM: Virtual Box
* Game: Steam
* Music: Lollypop

## web

* Protonmail theme: [pm theme](https://github.com/amdelamar/pm-theme)

## Setup git bare

`mkdir dotfiles`

`git init --bare $HOME/dotfiles`

Add the following to you shell dotfile: `alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

`config config --local status.showUntrackedFiles no`

## To use it

`config add /path/to/file`

`config commit -m "Commit message"`

`config push`
