# Binary release of VS Code without MS branding/telemetry/licensing
yay -S vscodium-bin --noconfirm
yay -Rns vscodium-bin-debug --noconfirm

mkdir -p ~/.config/VSCodium/User
cp ~/.local/share/omakub/configs/vscode.json ~/.config/Code/User/settings.json

# Install default supported themes
codium --install-extension enkia.tokyo-night
