#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

declare -a software=(
"iterm2"
"shellcheck" 
"vim" 
"ffmpeg" 
"vlc" 
"emacs"
"firefox"
"leiningen"
"postgresql"
"nodejs"
"npm"
"git"
"python3"
"spotify"
"coreutils"
"findutils"
"gnu-tar"
"gnu-sed"
"gawk"
"gnutls"
"grep"
"vscodium"
"intellij-idea"
"pycharm"
"libreoffice"
"android-messages"
"exa"
"gimp"
"bash" # installs gnu-bash instead of bsd bash
"wget"
"handbrake"
"qbittorent"
"qmk-toolbox"
"x264"
)

software=$(printf "%s " "${software[@]}")

brew tap homebrew/cask-drivers

brew install $software

brew install --cask mkvtoolnix
###

mkdir -p ~/code/

###

git config --global user.name "Zachary Walters"
git config --global user.email "zachary.christopher.walters@gmail.com"

###

if [ ! -f ~/.ssh/id_rsa ]; then
  ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
fi

###
ln -s /usr/local/bin/gsed /usr/local/bin/sed


#### Checklist
#
# - firefox 
#   - unchecck ask to save logins and passwords
#   - install the following extensions
#     - RES - https://addons.mozilla.org/en-US/firefox/addon/reddit-enhancement-suite/
#     - ublock origin - https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
#     - decentraleyes - https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/
#     - colorzilla - https://addons.mozilla.org/en-US/firefox/addon/colorzilla/
#     - bitwarden - https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/
#     - keepa - https://addons.mozilla.org/en-US/firefox/addon/keepa/
#
# - system preferences
#    - set default browser to firefox
#    - nightshift
#      - schedule: custom
#      - from 5:00AM to 4:59AM 
#      - color temperature: ~75%
#    - Dock & Menu Bar
#      - Uncheck show recent applications in dock
#    - Keyboard
#      - Change the repeat to fastest
#      - Change the delay to be very quick
#
# - github
#   - Add ssh keys to github
