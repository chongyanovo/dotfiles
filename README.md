## 下载配置文件`dotfiles`

```bash
git clone https://github.com/ChongYanOvO/dotfiles ~/dotfiles
```

## 使用`stow`来管理配置文件

`stow`GitHub链接🔗: [stow](https://github.com/aspiers/stow)

- 下载(使用`brew`)

```bash
brew install stow
```

- 示例: 配置 zsh

```bash
cd ~/dotfiles
stow zsh
```

## `wezterm`配置

`wezterm`官网🔗: [wezterm](https://wezfurlong.org/wezterm/)

- 下载(使用`brew`)

```bash
brew install --cask wezterm
```

- 配置使用

```bash
cd ~/dotfiles
stow wezterm
```

## `NeoVim`配置

`NeoVim`官网🔗: [NeoVim](https://neovim.io/)

- 下载(使用`brew`)

```bash
brew install neovim
```

## 一些`oh my zsh`插件

```bash
brew install eza dust duf gtop bat jq
```

- eza

![image-20240316152112055](https://raw.githubusercontent.com/ChongYanOvO/readme-images-repo/main/image-20240316152112055.png)

- dust

![image-20240316153506018](https://raw.githubusercontent.com/ChongYanOvO/readme-images-repo/main//image-20240316153506018.png)

- duf

![image-20240316153520851](https://raw.githubusercontent.com/ChongYanOvO/readme-images-repo/main//image-20240316153520851.png)

- gtop

![image-20240316153628983](https://raw.githubusercontent.com/ChongYanOvO/readme-images-repo/main//image-20240316153628983.png)

- bat

![image-20240316153656450](https://raw.githubusercontent.com/ChongYanOvO/readme-images-repo/main//image-20240316153656450.png)

- jq



## `PicGo`配置

`PicGo`GitHub链接🔗: [PicGo](https://github.com/Molunerfinn/PicGo)

- 下载(使用`brew`)

```bash
brew install picgo --cask
sudo xattr -d com.apple.quarantine "/Applications/PicGo.app"
```

## `Bat`配置

- 下载(使用`brew`)

```bash
brew install bat 
```

- 配置使用
```bash
stow bat
```