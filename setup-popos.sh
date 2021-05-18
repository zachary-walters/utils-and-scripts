wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 

echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list

sudo apt-get update
sudo apt-get upgrade -y

declare -a software=(
"shellcheck"
"vim"
"ffmpeg"
"vlc"
"mpv"
"emacs"
"leiningen"
"postgresql"
"nodejs"
"npm"
"virtualbox"
"git"
"xsel"
"docker"
"terminator"
"gnome-tweaks"
"python3-pip"
"snapd"
"codium"
)

software=$(printf "%s " "${software[@]}")

sudo apt install $software -y

sudo snap install --classic pycharm-professional
sudo snap install --classic intellij-idea-ultimate
sudo snap install --classic spotify
sudo snap install --classic dbeaver-ce

###

mkdir -p ~/code/

###

git config --global user.name "Zachary Walters"
git config --global user.email "zachary.christopher.walters@gmail.com"

###

sudo update-alternatives --set editor /usr/bin/vim.basic
sudo update-alternatives --set x-terminal-emulator /usr/bin/terminator


if [ ! -f ~/.ssh/id_rsa ]; then
  ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
fi
