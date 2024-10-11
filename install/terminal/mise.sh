# Install mise for managing multiple versions of languages. See https://mise.jdx.dev/
yay -S gpg sudo wget curl --noconfirm
cd /tmp
git clone https://aur.archlinux.org/mise.git
cd mise
makepkg -si --noconfirm
cd -
