# dotfiles

|  |  |  |
|---|---|---|
| Distro   | Manjaro Linux x86_64 | |
| DE | GNOME Shell | |
| WM | Mutter | |
| WM Theme | [Matcha-dark-sea](https://github.com/vinceliuice/Matcha-gtk-theme) |   |
| Theme | [Matcha-dark-sea](https://github.com/vinceliuice/Matcha-gtk-theme) \[GTK2/3\] |   |
| Icons | [Papirus-Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) or -Maia \[GTK2/3\] |   |
| Cursor | Xcursor-breeze-snow |   |
| Terminal | [Alacritty](https://github.com/alacritty/alacritty) | a cross-platform, GPU-accelerated terminal emulator |
| Terminal Theme | [tango_dark](https://github.com/eendroroy/alacritty-theme) |  |
| Shell | [zsh](http://www.zsh.org/) | an extended Bourne shell with many improvements |
| Shell FW | [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) | a framework for managing zsh configuration |
| Shell Theme | [powerlevel10k](https://github.com/romkatv/powerlevel10k) | a Zsh theme |
| Font | [Roboto](https://fonts.google.com/specimen/Roboto) |  |
| File | [Nautilus](https://github.com/GNOME/nautilus) |  |
| Porgrams |  |  |
| Editor | [Code - OSS](https://code.visualstudio.com/), [Vim](https://github.com/vim/vim) |  |
| Web | [Brave](https://brave.com/), [Firefox](https://www.mozilla.org/en-US/firefox/new/) |  |
| Social | [Discord](https://discord.com/), [Signal](https://signal.org/) |  |
| Virtualization | [Virtual Box](https://www.virtualbox.org/) |  |
| Game | [Steam](https://store.steampowered.com/) |  |
| Video | [VLC](https://www.videolan.org/vlc/) |  |
| Music | [MOC](https://wiki.archlinux.org/index.php/MOC), [VLC](https://www.videolan.org/vlc/) |  |
| Calendar | gnome-calendar, Evolution |  |
| Encryption | [VeraCrypt](https://github.com/veracrypt/VeraCrypt) |  |
| Mail | [Protonmail](https://protonmail.com/), [Tutanota](https://tutanota.com/) |  |
| Console |  |  |
| CPU monitoring | [s-tui](https://github.com/amanusk/s-tui) |  |
| System monitoring | [htop](https://github.com/hishamhm/htop) |  |
| System infos | [neofetch](https://github.com/dylanaraps/neofetch) |  |
| ls | [coloris](https://github.com/athityakumar/colorls) |  |
| Color | [oomox](https://github.com/themix-project/oomox) |  |
| Emoji | [nerd fonts](https://github.com/ryanoasis/nerd-fonts) |  |
| Music visualizer | [cava](https://github.com/karlstav/cava) |  |
| GTK+ settings | [lxappearance]() |  |
| Terminal clock | tty-clock |  |
| Terminal color | [pywal](https://github.com/dylanaraps/pywal) |  |
| Web |  |  |
| Chrome style | [Stylus](https://chrome.google.com/webstore/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne) |  |
| Firefox style | [Stylus](https://addons.mozilla.org/en-US/firefox/addon/styl-us/) |  |
| GitHub style | [GitHub-Dark](https://github.com/StylishThemes/GitHub-Dark) |  |
| GitLab style | [dark-gitlab](https://gitlab.com/Avinash-Bhat/dark-gitlab) |  |
| Wikipedia theme | [Wikipedia-Dark](https://github.com/StylishThemes/Wikipedia-Dark) |  |
| Stack Overflow theme | [StackOverflow-Dark](https://github.com/StylishThemes/StackOverflow-Dark) |  |
| Protonmail theme | [pm-theme](https://github.com/amdelamar/pm-theme) |  |

I do not own the right to the wallpapers iamges.

For vertical screen
![](Pictures/Wallpapers/eberhard-grossgasteiger-774058-unsplash.jpg)

![](Pictures/Wallpapers/forest.jpg)

![](Pictures/Wallpapers/dc-cavalleri.jpg)

![](Pictures/Wallpapers/atanas-malamov-1104625-unsplash.jpg)

For wide screen
![](Pictures/Wallpapers/_smokefilledsnoqualmievalley.jpg)

![](Pictures/Wallpapers/Xf3VK52.jpg)

## Setup git bare

`mkdir dotfiles`

`git init --bare $HOME/dotfiles`

Add the following to you shell dotfile: `alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME`

`config config --local status.showUntrackedFiles no`

## To use it

`config add /path/to/file`

`config commit -m "Commit message"`

`config push`
