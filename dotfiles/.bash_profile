if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
  source ~/.zshrc
fi

function ccd() {
  mkdir -p "$1"
  cd "$1"
}

