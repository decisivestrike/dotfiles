# My Dotfiles

<div align="center">

![Endeavouros](https://img.shields.io/badge/Endeavouros-7F7FFF?logo=endeavouros&logoColor=fff&style=for-the-badge)
![Hyprland](https://img.shields.io/badge/hyprland-58E1FF?style=for-the-badge&logo=hyprland&logoColor=222222)

![Alacritty](https://img.shields.io/badge/alacritty-F46D01?style=for-the-badge&logo=alacritty&logoColor=white)
![Starship](https://img.shields.io/badge/starship-%23DD0B78?style=for-the-badge&logo=starship&logoColor=white)
![Zsh](https://img.shields.io/badge/zsh-F15A24?style=for-the-badge&logo=zsh&logoColor=white)

<b>My beautiful Kanagawa-themed Hyprland setup</b>

</div>

![preview](preview.png)

## Installation

1. Clone the repository:

```bash
    git clone https://github.com/decisivestrike/dotfiles.git .dotfiles
    cd .dotfiles
```

2. Use stow to create simlinks:

```bash
    stow .
```

## Review

### Shell

zsh

based on https://github.com/radleylewis/zsh

| Key      | Action                                              |
| -------- | --------------------------------------------------- |
| `Ctrl+R` | Fuzzy history search (fzf)                          |
| `Ctrl+T` | Fuzzy file search including hidden files (fzf + fd) |
| `Ctrl+F` | Fuzzy file search excluding hidden files (fzf + fd) |
| `Ctrl+→` | Move forward one word                               |
| `Ctrl+←` | Move backward one word                              |
