#!/usr/bin/bash

# Copying configuration files into ~
cp -i -r -v ./home/.config/ ./home/.local/ ./home/.gtkrc-2.0 ~/

# Allow launching of terminal applications from Thunar
mkdir ~/.config/xfce4
echo "TerminalEmulator=alacritty" >> ~/.config/xfce4/helpers.rc

# Software Installation in Tiers
# Line 1: Core Packages
# Line 2: Elective Packages
# Line 3: Theming Packages
sudo pacman -Syu hyprland noctalia noctalia-greeter uwsm libnewt xdg-desktop-portal-hyprland \
  pipewire wireplumber
  playerctl nwg-look qt5ct qt6ct qt5-wayland qt6-wayland kvantum \
  thunar greetd grimblast-git ristretto mousepad \
  adw-gtk-theme breeze-icons oxygen-cursors \
  ttf-jetbrains-mono ttf-jetbrains-mono-nerd inter-font

# Install Optional Dependencies
sudo pacman -S --asdeps catfish gvfs tumbler thunar-volman thunar-archive-plugin thunar-media-tags-plugin file-roller 7zip cliphist hyprsunset

# Annoying GTK theming junk
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface icon-theme "breeze-dark"
gsettings set org.gnome.desktop.interface cursor-theme "Oxygen_Zion"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Just in case the XDG user directories weren't created
xdg-user-dirs-update

# Set up wallpapers
mkdir -p "$HOME/Pictures/Wallpapers"
ln -sfn /usr/share/wallpapers/cachyos-wallpapers "$HOME/Pictures/Wallpapers/cachyos-wallpapers"

# Configuring and enabling greetd with noctalia-greeter-session
sudo sed -i '/^\[default_session\]/,/^\[/ s|^command = .*|command = "/usr/bin/noctalia-greeter-session"|' /etc/greetd/greetd.toml
systemctl enable greetd
