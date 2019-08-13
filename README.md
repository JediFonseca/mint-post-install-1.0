# Mint Post Install 1.0

DO NOT RUN THIS SCRIPT AS ROOT

Post-install script for Linux Mint 19.x made by me for personal use. Yet if you find it useful, feel free to use it
as you see fit. The script was made to be used on Linux Mint 19.x, and since Linux Mint is Ubuntu-based,
It'll probably work on any ubuntu-based distro, and of course on Ubuntu itself.


What does the script do?

Like I said before, the script was made for my personal use, so it installs pretty much everything I need
on my system, and removes what I don't, so it may not attend to your needs.

Removes:
thunderbird rhythmbox xplayer libreoffice-core libreoffice-style-tango uno-libs3 hyphen-ru mythes-de mythes-de-ch mythes-en-us mythes-fr mythes-it mythes-pt-pt mythes-ru gimp

New PPA's/Repositories:
ppa:lutris-team/lutris, ppa:nilarimogard/webupd8, ppa:teejee2008/ppa, KXStudio Repositories.

New Packages:
wine-stable, libwine, libwine-development, wine64, wine64-development, winetricks, fonts-wine,
ttf-mscorefonts-installer, mesa-vulkan-drivers, mesa-vulkan-drivers:i386, libvulkan1, libvulkan1:i386,
wine32-development, vulkan-utils, synaptic, audacity, kdenlive, inkscape, steam, lutris, libgnutls30:i386,
libldap-2.4-2:i386, libgpg-error0:i386, libxml2:i386, libasound2-plugins:i386, libsdl2-2.0-0:i386, libfreetype6:i386,
libdbus-1-3:i386, gparted, virtualbox, devede, soundkonverter, snapd, gimp, tilix, build-essential,
ubuntu-restricted-extras, python3-pip, python3-setuptools, python3-venv, woeusb, ukuu, indicator-cpufreq, gdebi-core,
wget, apt-transport-https, libglibmm-2.4-1v5, zsh, fonts-powerline, ardour, qjackctl, pipx, calf-plugins,
fil-plugins, so-synth-lv2, swh-lv2, tap-plugins, synthv1, zynaddsubfx, yoshimi, amsynth, hydrogen (flatpak), neofetch,
protontricks, oh-my-zshell, JediF-Dark-Theme, warsaw, spotify-client, 4kvideodownloader, softmaker-office, paper-icon-theme,
pavucontrol, breeze-cursor-theme, git, software-properties-common.

It also configures ZSH as default, and Oh-My-Zshell with the 'Agnoster' theme. Installs and configures JackAudio.

If you want to contact me:
Telegram: @jedielson

IMPORTANT:
-To finish installing 'Protontricks' close and re-open the terminal, then run: 'pipx install protontricks'.
-To finish installing Jack, Ardour, some audio plugins, and 'Oh My Zshell', please reboot your system.
