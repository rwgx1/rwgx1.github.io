# Arco Linux
A **quick and easy** way
Arco Linux is Arch Linux, with a few extras. Like Arch, its FAST, compare Ubuntu etc, for example:

systemctl list-unit-files | grep enabled | wc -l

Ubuntu = 97
Arch/Arco = 18

Erik Dubbois is the main man https://erikdubois.be 
He is one awesome dude. On YouTube, Discord etc.

## Get this iso
https://bike.seedhost.eu/arcolinux/iso/arcolinuxd-v20.2.12.iso

## Install in virtualbox

The installer is called Calamares; When you get to the software selection bit, don’t select anything… this way you get a black terminal screen on reboot/login.

After logging in to black terminal screen:

Ensure you have the fastest Arch Linux servers with the alias

    mirror

Update first your system to receive the latest updates

    sudo pacman -Syyu

or use its alias

    update

This will force a refresh of all package lists and upgrade
all **Arch** and **ArcoLinux** packages

Then you check if you need to update the packages coming from AUR with the alias

    upall

## Desktops

There are a number of desktops to choose from: Cinnamon, Mate, LXDE, i3
etc (need Brisk-menu to make Mate look like Ubnuntu-Mate)

Clone one (or more) of these from github

    git clone https://github.com/arcolinuxd/arco-lxqt
    git clone https://github.com/arcolinuxd/arco-mate
    git clone https://github.com/arcolinuxd/arco-cinnamon

cd to the desktop folder of your choice.

run the scripts from the smallest to largest numbers.

You can examine the scripts/make changes etc

    cd arco-lxqt

    ./000-use-all-cores-makepkg-conf-v4.sh
    ./100-display-manager-and-desktop-v1.sh

This gives a ‘minimal’ install. Note disk space used. Optionally reboot here.

    sudo reboot

Then carry on with as many of the other scripts as you like.

    110-install-sound-v3.sh
    120-bluetooth-v2.sh
    121-fix-bluetooth-switch-not-working-v1.sh
    130-install-printers-v3.sh
    140-install-samba-v3.sh
    150-install-network-discovery-v4.sh
    200-software-arch-linux-repo-v2.sh
    400-software-arch-linux-repo-distro-specific-v1.sh
    500-software-AUR-repo-distro-specific-v1.sh
    700-installing-fonts-v2.sh
    800-autologin-v3.sh
    900-fix-microcode-error-v1.sh
    910-fix-mouse-cursor-breeze-snow-v1.sh

    sudo reboot

Note the disk space used.

## Some links:
https://arcolinuxd.com/how-to-install-arcolinuxd
https://arcolinuxd.com/1-installation-of-arcolinuxd-lxqt


