# dotfiles

## set keymap
```
localectl set-keymap jp106
```

## install app
```
yay -S microsoft-edge-stable-bin
yay -S visual-studio-code-bin nano
yay -S fcitx5-im fcitx5-mozc-ut 
yay -S ttf-udev-gothic
yay -S glow fcitx5-configtool
```

## github login
```
gh login auth
```

## fcitx5-configtool をコンソールで実行
キーボード ‐ 日本語を選択
キーボード ‐ 英語を削除
有効な入力メソッドでmozcを検索
mozcを選択してグループ追加
適用して閉じる
```
nano .config/hypr/hyprland.conf
```

以下を追加
```
exec-once=fcitx5-remote -r
exec-once=fcitx5 -d --replace
```

## vsocodeもしくはMicrosoft Edgeを使っている場合は、.configに以下のファイルを追加
- microsoft-edge-stable-flags.conf
- visual-studio-code-bin-flags.conf
- code-flags.conf

内容は以下の通り
```
--password-store=gnome-libsecret
--ozone-platform-hint=wayland
--gtk-version=4
--ignore-gpu-blocklist
```

## change folder name
```
LC_ALL=C xdg-user-dirs-update --force
```

## enable Google Drive
```
 yay -S gnome-control-center gvfs gvfs-google gvfs-onedrive seahorse
 ```

 ・コンソールでコマンドを実行
env XDG_CURRENT_DESKTOP=GNOME gnome-control-center --verbose

・オンラインアカウントでGoogleを追加
※、Onedriveは認証後にリダイレクトができなくて認証できない




## node.js

```
yay -S nodejs npm
sudo npm install n -g
sudo n stable

sudo pacman -Rsc -n nodejs
sudo pacman -Sy nodejs
sudo pacman -Sy npm
```