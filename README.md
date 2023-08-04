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
- Modify "sudo visudo" to disable sudo password requirement
  - %sudo ALL=(ALL) NOPASSWD: ALL

# The below is only for X11, no wayland

- Auto Move Windows extension can open applications in a specific workspace, no placement though
- Setup devilspie2
- Setup startup applications (vscode, Slack, Spotify, Signal) with sleep command for devilspie2

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
  - Install Antigen for zsh plugin manager
- Add custom partial search history to ~/.inputrc
- Instal pyenv for python management (python3 is pre-installed by default)
  - Using update-alternatives, I symlinked `python` to work `sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1`

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
  - Modify to Mac copy/paste?
  - Consistent copy/paste from Desktop to Terminal?
- Key remapping (TODO) - keyd, kinto.sh are some options
