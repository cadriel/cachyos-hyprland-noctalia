# cachyos-hyprland-noctalia

A simple script to be run after [installing CachyOS](https://cachyos.org/download) to enable a starter Hyprland environment.

I created this as a replacement for the now deprecated [`cachyos-hyprland-settings`](https://packages.cachyos.org/package/cachyos/any/cachyos-hyprland-settings) package that offered a lightly configured environment to start in rather than a completely vanilla experience. Whichever is suitable for you depends on your level of knowledge, but most beginners will have an easier time loading this script to experiment in a pre-built environment.

### Installation Instructions
1. Run the CachyOS Installer and do whatever you wish until you get to the desktop environment selection.
2. Select "No Desktop" as your desktop environment. You should do this instead of selecting "Hyprland" because doing that activates a suite of software that are unnecessary and unused. "No Desktop" ensures that you only install what you need since the install script will take care of everything that Hyprland needs to run.
3. Do whatever you want in the Additional Packages section as long as you don't select anything from inside the desktop environment menus. I'd also advise leaving the `cachyos-wallpapers` package checked unless you will be immediately changing the wallpapers in the login greeter(`nwg-hello`) and the desktop background(`hyprpaper`).
4. Complete the installation.
5. You will reboot into a `tty` since we selected no display manager package in the installer. Log in.
6. Clone the git repository:
```
git clone https://github.com/cadriel/cachyos-hyprland-noctalia.git
```
7. Navigate into the base directory just created:
```
cd cachyos-hyprland-noctalia
```
8. Allow `install.sh` to be run as an executable:
```
chmod 755 install.sh
```
9.  Run the script:
```
./install.sh
```
10. It will ask you to authenticate a couple times. Once for package installation and the other for moving `greetd` into position so it is used next time you boot.
11. Reboot
```
systemctl reboot
```
And then you're done

### Software Used
* **Wayland Compositor:** [`hyprland`](https://hypr.land/)(duh)
* **Display Manager:** [`greetd`](https://git.sr.ht/~kennylevinsen/greetd) and [`nwg-hello`](https://github.com/nwg-piotr/nwg-hello)
* **Authentication Agent:** [`hyprpolkitagent`](https://github.com/hyprwm/hyprpolkitagent)
* **Notification Daemon:** [`mako`](https://github.com/emersion/mako)
* **File Manager:** [`thunar`](https://docs.xfce.org/xfce/thunar/start)
* **Application Launcher:** [`fuzzel`](https://codeberg.org/dnkl/fuzzel)
* **Status Bar:** [`waybar`](https://github.com/Alexays/Waybar)
* **Clipboard Daemon:** [`wl-clipboard`](https://github.com/bugaevc/wl-clipboard) and [`cliphist`](https://github.com/sentriz/cliphist)
* **Screenshot Utility:** [`grimblast-git`](https://github.com/hyprwm/contrib/tree/main/grimblast)
* **Session Menu:** [`wlogout`](https://github.com/ArtsyMacaw/wlogout)
* **Lockscreen:** [`hyprlock`](https://github.com/hyprwm/hyprlock)
* **Idle Handler:** [`hypridle`](https://github.com/hyprwm/hypridle)
* **Theme Management:** [`nwg-look`](https://github.com/nwg-piotr/nwg-look)(GTK), [`qt6ct`](https://www.opencode.net/trialuser/qt6ct)(QT), and [`kvantum`](https://github.com/tsujan/Kvantum)(QT)
* **Themes:** [`materia-gtk-theme`, `kvantum-theme-materia`](https://github.com/nana-4/materia-theme), and [`breeze-icons`](https://packages.cachyos.org/package/extra/x86_64/breeze-icons)

### Important Keybindings
* **SUPER/META/WINDOWS = Main Modifier Key**
* SUPER + RETURN = Open Terminal
* SUPER + SPACE = Open File Manager
* SUPER + Q = Kills Active Window
* SUPER + V = Toggle Floating Mode
* SUPER + F = Toggle Fullscreen Mode
* SUPER + M = Toggle Maximize Mode
* SUPER + R = Open Application Launcher
* SUPER + E = Session Menu
* SUPER + L = Activate Lockscreen
* PrintScreen = Create screenshot of designated area and add to clipboard
* ALT + PrintScreen = Create screenshot of active window and add to clipboard
* CTRL + PrintScreen = Create screenshot of active display and add to clipboard
