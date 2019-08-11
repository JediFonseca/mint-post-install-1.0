# mint-post-install-1.0

Post-install script for Linux Mint 19.x made by me for personal use. Yet if you find it useful, feel free to use it
the way you like. The script was made to be used on Linux Mint 19.x, and since Linux Mint is Ubuntu-based,
It'll probably work on any ubuntu-based distro, and of course on Ubuntu itself.

What do I need in order to use this script?
The only pre-requisite on most distros is 'software-properties-common', which is installed by default on
most Ubuntu-based distros, except for 'Elementary OS' for what I know.


What does the script do?

Like I said before, the script was made for my personal use, so it installs pretty much everythins I need
on my system, so it may not attend to your needs.

PPA's/Repositories:
ppa:lutris-team/lutris, ppa:nilarimogard/webupd8, ppa:teejee2008/ppa, KXStudio Repositories.

Packages:
wine-stable, libwine, libwine-development, wine64, wine64-development, winetricks, fonts-wine,
ttf-mscorefonts-installer, mesa-vulkan-drivers, mesa-vulkan-drivers:i386, libvulkan1, libvulkan1:i386,
wine32-development, vulkan-utils, synaptic, audacity, kdenlive, inkscape, steam, lutris, libgnutls30:i386,
libldap-2.4-2:i386, libgpg-error0:i386, libxml2:i386, libasound2-plugins:i386, libsdl2-2.0-0:i386, libfreetype6:i386,
libdbus-1-3:i386, gparted, virtualbox, devede, soundkonverter, snapd, gimp, tilix, build-essential,
ubuntu-restricted-extras, python3-pip, python3-setuptools, python3-venv, woeusb, ukuu, indicator-cpufreq, gdebi-core,
wget, apt-transport-https, libglibmm-2.4-1v5, zsh, fonts-powerline, ardour, qjackctl, pipx, calf-plugins,
fil-plugins, so-synth-lv2, swh-lv2, tap-plugins, synthv1, zynaddsubfx, yoshimi, amsynth, hydrogen (flatpak),
protontricks, oh-my-zshell, JediF-Dark-Theme.

It also configures ZSH as default, and Oh-My-Zshell with the 'Agnoster' theme. Installs and configures JackAudio.
Downloads 4kvideodownloader.deb, softmakeroffice.deb, ubuntu-font-family.zip and Paper-Icon-Theme leaving it
in your 'Downloads' folder for you to manually install it. 4k Video Downloader, SoftMaker Office,
Ubuntu Font Family and Paper Icon Theme won't be automatically intalled because the name of the packages usually
changes from version to version, so the script would have to be updated on each new version of each one of these
packages.

If you want to contact me:
Telegram: @jedielson

IMPORTANT:
-To finish installing 'Protontricks' close and re-open the terminal, then run: 'pipx install protontricks'.
-To finish installing Jack, Ardour, some audio plugins, and 'Oh My Zshell', please reboot your system.
-Ubuntu Font Familly, Paper Icon Theme, 4k Video Downloader and Softmaker Office are available for installation
on your 'Downloads' folder."