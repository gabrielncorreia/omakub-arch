# Needed for all installers
yay -Sy curl unzip --noconfirm

# Run terminal installers
for installer in ~/.local/share/omakub/install/terminal/*.sh; do source $installer; done
