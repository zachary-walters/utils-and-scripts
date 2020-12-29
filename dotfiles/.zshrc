source ~/.git_prompt.sh
setopt PROMPT_SUBST
PS1='%F{13}%*%f %F{14}%n%f%F{14}@%f%F{14}%m%f:%F{14}%~% %F{green}$(__git_ps1 " %s")%F{15}> '

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.bash_profile ]; then
  source ~/.bash_profile
fi
