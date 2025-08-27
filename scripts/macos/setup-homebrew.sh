#!/bin/bash

# macOS Development Environment Setup Script
# This script installs Homebrew and essential packages for development

set -e

echo "🍺 Installing Homebrew..."

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH (for Apple Silicon Macs)
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo "Homebrew is already installed!"
fi

echo "📦 Installing essential packages..."

# Essential development tools
brew install git vim curl wget zsh python3 node npm

echo "🐍 Installing Python tools..."

# Python development tools
brew install pyenv

echo "⚡ Installing Oh My Zsh..."

# Install Oh My Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My Zsh is already installed!"
fi

echo "📱 Installing useful GUI applications..."

# Install GUI applications via Homebrew Cask
brew install --cask \
    cursor \
    slack \
    discord \
    spotify \
    vlc \
    signal \
    balenaetcher \
    vnc-viewer

echo "✅ Setup complete!"
echo ""
echo "To finish setup:"
echo "1. Add pyenv to your shell by adding these lines to ~/.zshrc:"
echo '   export PYENV_ROOT="$HOME/.pyenv"'
echo '   export PATH="$PYENV_ROOT/bin:$PATH"'
echo '   eval "$(pyenv init -)"'
echo ""
echo "2. Restart your terminal or run: source ~/.zshrc"
echo ""
echo "3. Install Python versions with: pyenv install 3.11.0"
echo "4. Set global Python version: pyenv global 3.11.0"
