# Ubuntu Workstation Setup

This document outlines the steps to set up an Ubuntu workstation. These steps will eventually be automated using Ansible.

## 1. Browser Setup

- **Bitwarden & Firefox:**
  - Download and sign in to Bitwarden.
  - Log in to your Firefox account to sync extensions and favorites.
- **Kagi Search Engine:**
  - Log in to Kagi and set it as your default search engine.

## 2. Ubuntu Defaults

- **Appearance:**
  - Toggle dark mode in "Appearance" settings.
- **Docking Station & Monitors:**
  - Configure docking station and monitor setups.
- **Window Snapping:**
  - Install Gnome Shell Extension Manager:
    ```bash
    sudo apt update && sudo apt install gnome-shell-extension-manager
    ```
  - Install Awesome Tiles extension using Gnome Shell Extension Manager.
- **GIF Recording:**
  - Use the built-in Gnome screen recorder (Ctrl+Shift+Alt+R).
- **Keyboard Shortcuts:**
  - Modify keyboard shortcuts in "Settings" -> "Keyboard" -> "Shortcuts":
    - Change "Move window one monitor to the left/right/up/down" to `Ctrl+Super+X`.
- **Multitasking:**
  - Modify multitasking settings in "Settings" -> "Multitasking":
    - Change "Multi-Monitor" to "Workspaces on all displays".
- **Disable Sudo Password:**
  - Edit sudoers file to disable password requirement (use with caution):
    ```bash
    sudo visudo
    ```
    - Add the following line to the end of the file:
      ```
      %sudo ALL=(ALL) NOPASSWD: ALL
      ```
      **Warning:** Disabling sudo password prompts can reduce system security.
- **Dotfiles:**
  - Install Chezmoi:
    ```bash
    snap install chezmoi
    ```
  - Clone dotfiles repository:
    ```bash
    chezmoi init https://github.com/COValhalla/dotfiles
    ```
- **Disable Middle Click Paste:**
  - Disable scroll wheel/middle click paste:
    ```bash
    gsettings set org.gnome.desktop.interface gtk-enable-primary-paste false
    ```
    Refer to: [https://unix.stackexchange.com/questions/24330/how-can-i-turn-off-middle-mouse-button-paste-functionality-in-all-programs/277488#277488](https://unix.stackexchange.com/questions/24330/how-can-i-turn-off-middle-mouse-button-paste-functionality-in-all-programs/277488#277488)

## 3. Development/Coding

- **APT Packages:**
  Install essential APT packages:
  ```bash
  sudo apt update && sudo apt install git vim curl zsh python3-pip
  ```
- **VSCode:**
  - Install VSCode and sign in with your GitHub account to sync extensions and settings.
- **Slack:**
  - Install Slack.
  - Enable Dark Mode in Slack preferences.
  - Disable "Always show menu bar" in Slack preferences.
- **SSH Keys:**
  - Set up SSH keys for private GitHub/GitLab company repositories.
- **Oh My Zsh:**
  - Install Oh My Zsh:
    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
- **Zsh History Search:**
  - Add custom partial search history to `~/.inputrc`:
    ```bash
    echo '"\e[A": history-search-backward' >> ~/.inputrc
    echo '"\e[B": history-search-forward' >> ~/.inputrc
    ```
- **Pyenv:**
  - Install Pyenv for Python management:
    ```bash
    curl https://pyenv.run | bash
    ```
  - Add pyenv variables to `~/.zshrc`:
    ```bash
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
    ```

## 4. Other Applications

- VLC (set as default in "Default Applications")
- Spotify
- Signal
- Discord
- Notion
- Miro
- Asana
- BalenaEtcher

## 5. Terminal Customization & Aliases

See [scripts/ubuntu/custom-alias](../scripts/ubuntu/custom-alias) for shell aliases and functions, including:
- `up` - Quick apt update and upgrade
- `cursor` - Dynamic Cursor AppImage launcher
- `btswitch` - Bluetooth headset mode switcher

Add to your `~/.zshrc`:
```bash
# Custom aliases
alias up='sudo apt update && sudo apt upgrade'

# Cursor dynamic alias
function cursor() {
    local app=$(ls -t /home/$USER/Applications/cursor*.AppImage | head -n 1)
    if [[ -x "$app" ]]; then
        nohup "$app" "$@" &>/dev/null &
        disown
    else
        echo "Cursor application not found."
    fi
}

# Headset mode switch alias
alias btswitch='~/Documents/bluetooth-switch.sh'
```

## TODOs:

- Terminal customization
  - History search up/down (already implemented in Zsh History Search section)
  - Add `alias up='sudo apt update && sudo apt upgrade'` to `~/.zshrc`:
    ```bash
    echo 'alias up="sudo apt update && sudo apt upgrade"' >> ~/.zshrc
    ```

## Additional Packages

- scrcpy (for Android screen mirroring/recording)
  ```bash
  sudo apt install scrcpy
  ```
