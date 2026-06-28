#!/usr/bin/bash

# Copying configuration files into ~
cp -i -r -v ./home/.config/ ~/
cp -i -r -v ./home/.local/ ~/

# Allow launching of terminal applications from Thunar
mkdir ~/.config/xfce4
echo "TerminalEmulator=alacritty" >> ~/.config/xfce4/helpers.rc

# Ensuring system is up to date before beginning
sudo pacman -Syu

# Installing software
sudo pacman -S hyprland xdg-desktop-portal-hyprland noctalia-shell hyprpolkitagent thunar greetd nwg-hello grimblast-git nwg-look qt6ct kvantum adw-gtk-theme playerctl ristretto gedit ttf-jetbrains-mono breeze-icons oxygen-cursors

# Installing some optional dependencies
sudo pacman -S --asdeps catfish gvfs tumbler thunar-volman thunar-archive-plugin thunar-media-tags-plugin file-roller 7zip cliphist wlsunset

# Annoying GTK theming junk
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface icon-theme "breeze-dark"
gsettings set org.gnome.desktop.interface cursor-theme "Oxygen_Zion"

# Just in case the user directories weren't created
xdg-user-dirs-update

# Symlinking cachyos-wallpapers(if it exists) with Noctalia's default wallpaper directory
ln -s /usr/share/wallpapers/cachyos-wallpapers ~/Pictures/Wallpapers

# Configuring and enabling greetd with nwg-hello
sudo cp -i -r -v ./etc/greetd/ /etc/
sudo cp -i -r -v ./etc/nwg-hello/ /etc/
systemctl enable greetd
