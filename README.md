# Dofiles
![Demo1](https://user-images.githubusercontent.com/69869135/148832650-1ff273d8-8760-48c4-b1aa-05df0232b1c4.png)
![Demo2](https://user-images.githubusercontent.com/69869135/148832763-ef6154fc-5790-4034-972c-ad04716390dd.png)
![Demo3](https://user-images.githubusercontent.com/69869135/148832771-3bc0cd58-ad43-4e93-871f-0da6eeb1b026.png)

## Installing
For installing you need to install `git` and `stow`
Clone this repository in your `Downloads` folder or in your `HOME` directory
``` sh
git clone https://github.com/devrrior/dotfiles.git ~/Downloads # Clone into Downloads folder
# or
git clone https://github.com/devrrior/dotfiles.git ~ # Clone into HOME directory
```
Run  `stow`  to symlink everything or just select what you want
``` sh
stow */ # Everything (the '/' ignores the README)
# or
stow kitty # Just my kitty config
```

## Programs
- [kitty](https://github.com/kovidgoyal/kitty/) - Main terminal
- [Alacritty](https://github.com/alacritty/alacritty) - Secondary terminal
- [neovim](https:/github.com/neovim/neovim) - Main text editor
- [Visual Studio Code](https://code.visualstudio.com/) - Secondary text editor
- [yabai](https://github.com/koekeishiya/yabai) - Tiling window management 
- [skhd](https://github.com/koekeishiya/skhd) - Simple Hotkey Daemon
- [sketchybar](https://github.com/FelixKratz/SketchyBar) - Status bar
- [zsh](https://www.zsh.org/) - Shell
- [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip) - Font

## Credits
The following repositories helped me to set up my dotfiles:
- https://github.com/ChristianChiarulli/Machfiles
- https://github.com/hackorum/.dotfiles
- https://github.com/antoniosarosi/dotfiles/
