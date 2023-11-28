echo "-----------------------------------"
echo "Starting install script... (this may take a while)"
echo "Windows version $(systeminfo | findstr /B /C:"OS Name" /C:"OS Version")"
echo "Last updated: 2023-11-28"
echo "-----------------------------------"

# Install scoop
echo "INFO: installing scoop..."
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
echo "INFO: scoop installed ✅"
scoop -v
echo "INFO: restoring scoop apps..."
scoop install -r ./scoop/list.txt
echo "INFO: scoop apps restored ✅"
echo "-----------------------------------"

# Configure git
echo "INFO: restoring git config..."
iwr -useb https://raw.githubusercontent.com/floriaaan/dotfiles/main/git/.gitconfig -o ~/.gitconfig
echo "INFO: git config restored ✅"
echo "-----------------------------------"

# Install zsh on Git bash
echo "INFO: installing zsh..."
echo "WARN: TODO"
# echo "INFO: zsh installed ✅"


# Install oh-my-zsh

# ZSH plugins

# Copy zsh config
echo "INFO: restoring zsh config..."
iwr -useb https://raw.githubusercontent.com/floriaaan/dotfiles/main/shell/windows/.zshrc -o ~/.gitconfig

echo "-----------------------------------"

# Install nodejs latest LTS
echo "INFO: installing nodejs..."
nvm install --lts
echo "INFO: nodejs installed ✅"
echo "INFO: restoring node packages..."

npm install -g \
    pnpm \
    expo \
    @antfu/ni \
    @microsoft/inshellisense

echo "INFO: node packages restored ✅"

node -v
npm -v
pnpm -v
echo "-----------------------------------"

echo "\n"

echo "DONE! 🎉"
echo "Happy hacking! 🚀"