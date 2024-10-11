cd /tmp

# Using the --noconfirm flag to choose the default option for the user when installing the package.
# This will also choose the default option of any necessary dependency.

sudo pacman -S --needed git base-devel --noconfirm 

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si --noconfirm

cd -