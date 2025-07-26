HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

zstyle :compinstall filename "/home/billo/.zshrc"

autoload -Uz compinit
compinit

#end of line -----------------------------------------------------------------------------------
PROMPT='%F{blue}%1~ %F{green}-> %f'

#env variables -->
export EDITOR=nvim
export VISUAL=nvim

#hisory saving configuration -->
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt inc_append_history

#zsh plugins -->
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
