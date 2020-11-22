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
"update-alternatives"
"xsel"
"docker"
"terminator"
)

software=$(printf "%s " "${software[@]}")

sudo apt-get install $software -y

sudo snap install --classic code
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

ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
