#!/bin/bash

#########################################################
###CREATING WORK FOLDER AND REMOVING UNWANTED PACKAGES###
#########################################################
mkdir /home/"$USER"/Downloads/mint-post-install
cd /home/"$USER"/Downloads/mint-post-install

sudo apt remove thunderbird rhythmbox xplayer libreoffice-core libreoffice-style-tango uno-libs3 hyphen-ru mythes-de mythes-de-ch mythes-en-us mythes-fr mythes-it mythes-pt-pt mythes-ru gimp -y
sudo apt install software-properties-common

########################################
###INSTALLLING NEW PACKAGES AND REPOS###
########################################
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-add-repository ppa:teejee2008/ppa -y
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

sudo apt update

sudo apt install vlc neofetch zenity zenity-common wine-stable libwine libwine-development wine64 wine64-development winetricks fonts-wine ttf-mscorefonts-installer mesa-vulkan-drivers mesa-vulkan-drivers:i386 libvulkan1 libvulkan1:i386 wine32-development vulkan-utils synaptic audacity kdenlive inkscape steam lutris libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 gparted virtualbox devede soundkonverter snapd tilix build-essential ubuntu-restricted-extras python3-pip python3-setuptools python3-venv woeusb ukuu indicator-cpufreq gdebi-core wget apt-transport-https libglibmm-2.4-1v5 zsh fonts-powerline spotify-client pavucontrol breeze-cursor-theme git balena-etcher-electron -y

python3 -m pip install --user pipx
~/.local/bin/pipx ensurepath

###################################################
###INSTALLING KXSTUDIO REPOS+ARDOUR+JACK+PLUGINS###
###################################################
sudo apt install libglibmm-2.4-1v5
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.5.1~kxstudio3_all.deb
sudo gdebi -n kxstudio-repos_9.5.1~kxstudio3_all.deb kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
sudo apt update
sudo apt install ardour qjackctl -y
sudo su
echo -e "@realtime - rtprio 99\n@realtime - memlock unlimited" > /etc/security/limits.d/99-realtime.conf
exit
sudo groupadd realtime
sudo usermod -a -G realtime "$USER"
sudo apt install calf-plugins fil-plugins so-synth-lv2 swh-lv2 tap-plugins synthv1 zynaddsubfx yoshimi amsynth -y
sudo rm kxstudio-repos_9.5.1~kxstudio3_all.deb kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb

#################################################
###INSTALLING FLATPAK PACKAGES - HYDROGEN+GIMP###
#################################################
wget https://flathub.org/repo/appstream/org.hydrogenmusic.Hydrogen.flatpakref
wget https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak install flathub org.hydrogenmusic.Hydrogen -y
flatpak install flathub org.gimp.GIMP -y

mkdir /home/"$USER"/.local/share/icons
mkdir /home/"$USER"/.themes
mkdir /home/"$USER"/.icons
mkdir /home/"$USER"/.fonts

cp -r /usr/share/icons/breeze_cursors /home/"$USER"/.icons
cp -r /usr/share/icons/breeze_cursors /home/"$USER"/.local/share/icons

#################################
###INSTALLING JEDIF-DARK-THEME###
#################################
git clone https://github.com/JediFonseca/JediF-Dark-Theme.git
cd JediF-Dark-Theme
tar xvzf JediF-Dark-Theme.tar.gz
cp -r JediF-Dark-Theme /home/"$USER"/.themes

#################################
###INSTALLING PAPER-ICON-THEME###
#################################
mkdir /home/"$USER"/Downloads/paper
cd /home/"$USER"/Downloads/paper
git clone https://github.com/snwh/paper-icon-theme.git
cp -r /home/"$USER"/Downloads/paper/paper-icon-theme/Paper /home/"$USER"/.icons

###################################
###INSTALLING UBUNTU-FONT-FAMILY###
###################################
mkdir /home/"$USER"/Downloads/fonts
cd /home/"$USER"/Downloads/fonts
wget https://assets.ubuntu.com/v1/0cef8205-ubuntu-font-family-0.83.zip
unzip *.zip
cp /home/"$USER"/Downloads/fonts/ubuntu-font-family-0.83/*.ttf /home/"$USER"/.fonts

#########################################################
###INSTALLING 4KVIDEODOWNLOADER+SOFTMAKEROFFICE+WARSAW###
#########################################################
mkdir /home/"$USER"/Downloads/deb-temp
cd /home/"$USER"/Downloads/deb-temp
wget https://dl.4kdownload.com/app/4kvideodownloader_4.8.2-1_amd64.deb?source=website
wget https://www.softmaker.net/down/softmaker-office-2018_966-01_amd64.deb
wget https://cloud.gastecnologia.com.br/cef/warsaw/install/GBPCEFwr64.deb
sudo gdebi -n /home/"$USER"/Downloads/deb-temp/*.deb

##########################
###CLEANING UP THE MESS###
##########################
cd /home/"$USER"/Downloads
sudo rm -r /home/"$USER"/Downloads/mint-post-install
sudo rm -r /home/"$USER"/Downloads/fonts
sudo rm -r /home/"$USER"/Downloads/paper
sudo rm -r /home/"$USER"/Downloads/deb-temp
sudo apt autoremove -y
sudo apt autoclean -y

zenity --info --title="Mint Post Install 1.0 - Warning" --text="We'll now install 'Oh My Zshell'...\n\nOnce the installation is complete please DO NOT close the terminal. Type 'exit', press 'Enter', wait for the 'Installation Complete' notification and then you may close it.\n\nIn order to install 'protontricks' close and re-open the Terminal, then run 'pipx install protontricks'.\n\nAfter you see the 'Installation Complete' notification, please reboot your system."  --width=600 --height=100

#############################
###INSTALLING OH MY ZSHELL###
#############################
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo sed -i 's/bash/zsh/g' /etc/passwd
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' /home/"$USER"/.zshrc

zenity --info --title="Mint Post Install 1.0" --text="Installation complete." --width=200 --height=100
