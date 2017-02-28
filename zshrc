# OHMYZSH
export ZSH=/Users/matthew-mongeau/.oh-my-zsh
ZSH_THEME="mochi"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Allow executables in bin directory to be selected first
export PATH=".git/safe/../../bin:$PATH"

# Editors
export EDITOR='vim'

# Terminal
bindkey -v

# Options
setopt extendedglob

# Startup
export NICKNAME="Matt"

welcome() {
  h=`date +%H`
  if [ $h -lt 12 ]; then
    echo -ne "Good morning, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  elif [ $h -lt 18 ]; then
    echo -ne "Good afternoon, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  else
    echo -ne "Good evening, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  fi
}

# Highlighting
source /Users/matthew-mongeau/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Local settings
source ~/.zshrc.local

welcome
