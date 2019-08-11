

mkdir /home/"$USER"/Downloads/mint-post-install
cd /home/"$USER"/Downloads/mint-post-install

sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-add-repository ppa:teejee2008/ppa -y

sudo apt update

sudo apt install wine-stable libwine libwine-development wine64 wine64-development winetricks fonts-wine ttf-mscorefonts-installer mesa-vulkan-drivers mesa-vulkan-drivers:i386 libvulkan1 libvulkan1:i386 wine32-development vulkan-utils synaptic audacity kdenlive inkscape steam lutris libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 gparted virtualbox devede soundkonverter snapd gimp tilix build-essential ubuntu-restricted-extras python3-pip python3-setuptools python3-venv woeusb ukuu indicator-cpufreq gdebi-core wget apt-transport-https libglibmm-2.4-1v5 zsh fonts-powerline -y

python3 -m pip install --user pipx
~/.local/bin/pipx ensurepath

wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.5.1~kxstudio3_all.deb
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
sudo gdebi kxstudio-repos_9.5.1~kxstudio3_all.deb kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
sudo apt update
sudo apt install ardour qjackctl -y
sudo echo -e "@realtime - rtprio 99\n@realtime - memlock unlimited" > /etc/security/limits.d/99-realtime.conf
sudo groupadd realtime
sudo usermod -a -G realtime "$USER"
sudo apt install calf-plugins fil-plugins so-synth-lv2 swh-lv2 tap-plugins synthv1 zynaddsubfx yoshimi amsynth -y
rm kxstudio-repos_9.5.1~kxstudio3_all.deb kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb -y

git clone https://github.com/JediFonseca/JediF-Dark-Theme.git
wget https://flathub.org/repo/appstream/org.hydrogenmusic.Hydrogen.flatpakref
mkdir /home/"$USER"/.themes
mkdir /home/"$USER"/.icons
mkdir /home/"$USER"/.fonts
cd JediF-Dark-Theme
tar xvzf JediF-Dark-Theme.tar.gz
cp -r JediF-Dark-Theme /home/"$USER"/.themes
flatpak install flathub org.hydrogenmusic.Hydrogen -y

cd /home/"$USER"/Downloads
git clone https://github.com/snwh/paper-icon-theme.git
wget https://assets.ubuntu.com/v1/0cef8205-ubuntu-font-family-0.83.zip
wget https://dl.4kdownload.com/app/4kvideodownloader_4.8.2-1_amd64.deb?source=website
wget https://www.softmaker.net/down/softmaker-office-2018_966-01_amd64.deb

sudo rm -r /home/"$USER"/Downloads/mint-post-install

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo sed -i 's/bash/zsh/g' /etc/passwd
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' /home/"$USER"/.zshrc

echo -e "---IMPORTANT---\n1-To finish installing 'Protontricks' close and re-open the terminal, then run: 'pipx install protontricks'.\n2-To finish installing Jack, Ardour, some audio plugins, and 'Oh My Zshell', please reboot your system.\n3-Ubuntu Font Familly, Paper Icon Theme, 4k Video Downloader and Softmaker Office are available for installation on your 'Downloads' folder."
