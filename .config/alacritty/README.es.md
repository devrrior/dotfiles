# Alacritty

![Alacritty](./alacritty.png)

***Idioma***
- Espa帽ol 馃嚜馃嚫
- [English 馃嚭馃嚫](https://github.com/antoniosarosi/dotfiles/tree/master/.config/alacritty)

Instala *alacritty* y las dependencias:

```bash
sudo pacman -S alacritty
yay -S nerd-fonts-ubuntu-mono
```

Copia mis configuraciones:

```bash
git clone https://github.com/antoniosarosi/dotfiles.git
cp -r dotfiles/.config/alacritty ~/.config
```

Copia el fichero de configuraci贸n a otro llamado *alacritty.yml*:

```bash
cd ~/.config/alacritty
cp config.yml alacritty.yml
```

La raz贸n por la que lo tengo hecho de esta manera es porque de otra forma Git
me avisar铆a de archivos modificados cada vez que cambio el tema de colores, pero
as铆 el tema es independiente del archivo de configuraci贸n.

Uso del script autom谩tico para temas:

```bash
~/.config/alacritty/theme.py dracula
```

Solo funciona con temas disponibles en **~/.config/alacritty/themes**.
Puedes a帽adir esto en tu **~/.xprofile**:

```bash
export PATH=$HOME/.local/bin:$PATH
```

Lo cual te permitir谩 crear un enlace simb贸lico a ese script:

```bash
cd ~/.local/bin
ln -s ~/.config/alacritty/theme.py set-alacritty-theme

# Ahora lo puedes usar as铆 (la pr贸xima vez que inicies sesi贸n)
set-alacritty-theme onedark
```
