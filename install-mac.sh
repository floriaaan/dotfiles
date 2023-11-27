#! /usr/bin/sh

echo "-----------------------------------"
echo "Starting install script... (this may take a while)"
echo "MacOS version: $(sw_vers -productVersion)"
echo "Last updated: 2023-11-27"
echo "-----------------------------------"


# Install Homebrew on Mac
echo "INFO: installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "INFO: homebrew installed ✅"
brew -v
echo "INFO: restoring brew packages..."
# Restore brew packages
xargs brew install < ./brew/list.txt
echo "INFO: brew packages restored ✅"
echo "-----------------------------------"

# Configure git
echo "INFO: restoring git config..."
curl https://raw.githubusercontent.com/floriaaan/dotfiles/main/git/.gitconfig > ~/.gitconfig
echo "INFO: restored git config ✅"
echo "-----------------------------------"


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "INFO: oh-my-zsh installed ✅"

# ZSH plugins
echo "INFO: restoring zsh plugins..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "\nINFO: zsh plugins restored ✅"

# Copy zsh config
echo "INFO: restoring zsh config..."
curl https://raw.githubusercontent.com/floriaaan/dotfiles/main/terminal/.zshrc > ~/.zshrc
echo "INFO: restored zsh config ✅"

echo "-----------------------------------"


# Install nodejs latest LTS
echo "INFO: installing nodejs..."
nvm install --lts
echo "INFO: nodejs installed ✅"
echo "INFO: restoring node packages..."

npm install -g \
    pnpm \
    expo \
    @microsoft/inshellisense

echo "INFO: node packages restored ✅"

node -v
npm -v
pnpm -v
echo "-----------------------------------"

echo "\n"

echo "DONE! 🎉"
echo "Happy hacking! 🚀"