# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/olsen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Alisas
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'


# PATH
export PATH="$HOME/npm-packages/node_modules/.bin:$PATH"


#Prompt
PROMPT='%F{blue}%1~ %F{green}-> %f'


# plugin
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
