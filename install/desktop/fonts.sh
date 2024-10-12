yay -S \
  ttf-fira-code adobe-source-han-sans-otc-fonts \
  otf-ipafont ttf-dejavu ttf-ms-fonts \
  ttf-liberation adobe-source-sans-pro-fonts \
  ttf-ubuntu-font-family ttf-hack \
  adobe-base-14-fonts ttf-meslo-nerd-font-powerlevel10k \
  ttf-cascadia-mono-nerd ttf-ia-writer --noconfirm

# Setting MesloLGS NF as the default monospace font
gsettings set org.gnome.desktop.interface monospace-font-name 'MesloLGS NF 11'
