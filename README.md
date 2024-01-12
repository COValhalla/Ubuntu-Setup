This readme contains the major steps to setup my Ubuntu Workstation. In the future, these will be turned into an Ansbile script.

1. Browser Setup

- Download and sign into Bitwarden, login to Firefox account to get all extensions/favorites.
- Login to Kagi and set as default search engine

2. Ubuntu Defaults

- Toggle dark mode in Appearance
- Setup docking station/monitor setups
- Window Snapping Software
  - Install Gnome Shell Extension Manager
  - Install Awesome Tiles
- GIF Recording Software - Built in Gnome with ctrl+shift+alt+R
- Modify keyboard shorcuts
  - Change "Move window one monitor to the left/right/up/down to Ctrl+Super+X
- Modify Multitasking setting, change Multi-Monitor to "Workspaces on all displays"
- Modify "sudo visudo" to disable sudo password requirement
  - %sudo ALL=(ALL) NOPASSWD: ALL
- DOTFILES

  - snap install of chezmoi
  - https://github.com/COValhalla/dotfiles

- Disable scroll wheel/middle click paste https://unix.stackexchange.com/questions/24330/how-can-i-turn-off-middle-mouse-button-paste-functionality-in-all-programs/277488#277488

3. Development/Coding

- APT packages
  git
  vim
  brew
  curl
  zsh
  python3-pip
- Install vscode and sign-in with Github to sync all extensions/settings
- Install Slack
  - Enable Dark Mode
  - Disable always show menu bar
- Setup SSH keys for private Github/Gitlab company repos
- Install ohmyzsh
- Add custom partial search history to ~/.inputrc
- Instal pyenv for python management (python3 is pre-installed by default)
  - Add variable lines to ~/.zshrc

4. Other Applications

- VLC - set to default in "Default Applications"
- Spotify
- Signal
- Discord
- Notion
- Miro
- Asana
- BalenaEtcher
  TODOs:

- Terminal customization
  - History search up/down
  - Add `alias up='sudo apt update && sudo apt upgrade` to ~/.zshrc
