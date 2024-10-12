# Installing zsh:
yay -S zsh --noconfirm

# Installing oh my zsh:
y | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installing zsh-autosuggestions and zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Adding the new plugins
sed -i 's/^plugins=.*/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc

echo "Updated ~/.zshc with new plugins."

# Making zsh the default shell
echo "Making zsh the default shell..."
chsh -s $(which zsh)

# Configure the zsh shell using Omakub defaults
[ -f "~/.zsh" ] && mv ~/.zshrc ~/.zshrc.bak
cat ~/.local/share/omakub/configs/bashrc >> ~/.zshrc

# Load the PATH for use later in the installers
source ~/.local/share/omakub/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakub defaults
cp ~/.local/share/omakub/configs/inputrc ~/.inputrc
