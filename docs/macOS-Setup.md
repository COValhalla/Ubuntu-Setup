# macOS Workstation Setup

This document outlines the steps to set up a macOS workstation for development and productivity.

## 1. System Preferences & Settings

### Appearance
- **Enable Dark Mode:**
  - Go to System Preferences → Appearance
  - Select "Dark" mode

### Mouse & Trackpad
- **Disable Natural Scrolling:**
  - Go to System Preferences → Trackpad → Scroll & Zoom
  - Uncheck "Scroll direction: Natural"
  - For external mouse: System Preferences → Mouse → uncheck "Scroll direction: Natural"

## 2. Essential Applications

### Development Tools
- **Cursor** - AI-powered code editor
  - Download from [cursor.so](https://cursor.so/)
  - Sign in with GitHub account to sync extensions and settings
  - **Configuration**: Change Activity Bar from Horizontal to Vertical
    - Open Cursor → View → Appearance → Activity Bar Position → Side

### Communication & Collaboration
- **Slack** - Team communication
  - Download from App Store or [slack.com](https://slack.com/downloads/mac)
  - Enable Dark Mode in preferences
  - Configure notification settings

- **Miro** - Visual collaboration platform
  - Download from App Store or [miro.com](https://miro.com/apps/mac/)
  - Sign in to sync boards and templates

### Productivity & Media
- **CleanShot X** - Advanced screenshot and recording tool
  - Download from App Store or [cleanshot.com](https://cleanshot.com/)
  - Configure shortcuts and preferences

## 3. Browser Setup

### Orion Browser
- **Download Orion Browser:**
  - Download from App Store or [browser.kagi.com](https://browser.kagi.com/)
  - Set as default browser (optional)

- **Configure Kagi Search:**
  - Sign in to Kagi account
  - Go to Orion Preferences → Search
  - Set Kagi as default search engine
  - Configure search settings and preferences

- **Browser Extensions:**
  - Install password manager extension
  - Install uBlock Origin (ad blocker)
  - Install other productivity extensions as needed
  - Configure extension settings and sync

## 4. Terminal & Development Environment

### Homebrew Package Manager
- **Install Homebrew:**
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

### Essential Packages
- **Install essential tools via Homebrew:**
  ```bash
  brew install git vim curl wget zsh python3
  ```

### Oh My Zsh
- **Install Oh My Zsh:**
  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

### Pyenv (Python Version Management)
- **Install Pyenv:**
  ```bash
  brew install pyenv
  ```
- **Add Pyenv startup commands to `~/.zshrc`:**
  ```bash
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
  echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(pyenv init - zsh)"' >> ~/.zshrc
  ```
- **Install Python 3.11 and set as global:**
  ```bash
  # Restart terminal or reload shell configuration
  source ~/.zshrc
  
  # Install Python 3.11
  pyenv install 3.11
  
  # Set Python 3.11 as global default
  pyenv global 3.11
  
  # Verify installation
  python --version
  ```

## 5. Development Tools

### SSH Keys
- **Generate SSH keys for GitHub/GitLab:**
  ```bash
  ssh-keygen -t ed25519 -C "your_email@example.com"
  ```
- **Add to SSH agent:**
  ```bash
  ssh-add ~/.ssh/id_ed25519
  ```

### Git Configuration
- **Set up Git user information:**
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your_email@example.com"
  ```

## 6. Additional Applications

### Media & Entertainment
- **VLC Media Player** - Universal video player
  - Download from [videolan.org](https://www.videolan.org/vlc/download-macos.html)
  - Set as default for media files

- **Spotify** - Music streaming
  - Download from App Store or [spotify.com](https://www.spotify.com/download/)

### Communication
- **Signal** - Secure messaging
  - Download from App Store or [signal.org](https://signal.org/download/)

- **Discord** - Gaming and community chat
  - Download from App Store or [discord.com](https://discord.com/download)

### Utilities
- **BalenaEtcher** - USB/SD card imaging tool
  - Download from [balena.io/etcher](https://www.balena.io/etcher/)

## 7. macOS-Specific Customizations

### Dock Preferences
- **Auto-hide the Dock:**
  - System Preferences → Dock & Menu Bar → check "Automatically hide and show the Dock"

### Finder Preferences
- **Show hidden files:**
  ```bash
  defaults write com.apple.finder AppleShowAllFiles YES
  killall Finder
  ```

### Terminal Aliases & Functions
Create or add to `~/.zshrc`:

```bash
# Custom aliases for macOS
alias ll='ls -la'
alias la='ls -la'
alias l='ls -l'
alias ..='cd ..'
alias ...='cd ../..'

# Homebrew aliases
alias brewup='brew update && brew upgrade'
alias brewclean='brew cleanup'

# Quick edit aliases
alias zshconfig='vim ~/.zshrc'
alias reload='source ~/.zshrc'

# Network utilities
alias myip='curl ipinfo.io/ip'
alias localip='ipconfig getifaddr en0'

# System utilities
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
```

## TODOs:

- [ ] Automate application installation using Homebrew Cask
- [ ] Create automated dotfiles setup script
- [ ] Add window management tool recommendations (Rectangle, Magnet)
- [ ] Document macOS keyboard shortcuts customization
- [ ] Add instructions for Time Machine backup setup
