#!/usr/bin/bash

# Copying configuration files into ~
cp -i -r -v ./home/.config/ ./home/.local/ ./home/.gtkrc-2.0 ~/

# Allow launching of terminal applications from Thunar
mkdir ~/.config/xfce4
echo "TerminalEmulator=alacritty" >> ~/.config/xfce4/helpers.rc

# Install Core, Elective, and Theming Software
sudo pacman -Syu hyprland xdg-desktop-portal-hyprland noctalia-shell hyprpolkitagent playerctl nwg-look qt6ct kvantum \
  thunar greetd nwg-hello grimblast-git ristretto mousepad \
  adw-gtk-theme ttf-jetbrains-mono breeze-icons oxygen-cursors

# Install Optional Dependencies
sudo pacman -S --asdeps catfish gvfs tumbler thunar-volman thunar-archive-plugin thunar-media-tags-plugin file-roller 7zip cliphist wlsunset

# Annoying GTK theming junk
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface icon-theme "breeze-dark"
gsettings set org.gnome.desktop.interface cursor-theme "Oxygen_Zion"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Just in case the XDG user directories weren't created
xdg-user-dirs-update

# Symlinking cachyos-wallpapers(if it exists) with Noctalia's default wallpaper directory
ln -s /usr/share/wallpapers/cachyos-wallpapers ~/Pictures/Wallpapers

# Configuring and enabling greetd with nwg-hello
sudo cp -i -r -v ./etc/greetd/ ./etc/nwg-hello/ /etc/
systemctl enable greetd
