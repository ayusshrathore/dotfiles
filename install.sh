# Run system upgrade
sudo pacman -Syu

# Install fonts
sudo pacman -S gnu-free-fonts ttf-dejavu ttf-ubuntu-font-family nerd-fonts-jetbrains-mono noto-fonts noto-fonts-emoji ttf-font-logos ttf-font-awesome

# Install Yay
sudo pacman -S git
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git/
makepkg -si

# Install oh-my-zsh & plugins
yay -S oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Starship
sudo pacman -S starship

# Install apps
sudo pacman -S vlc telegram-desktop micro nautilus
yay -S google-chrome spotify spotify-adblock visual-studio-code-bin
