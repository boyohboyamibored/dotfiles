PATH=$PATH:$HOME/.local/bin/

#Prompt stuff
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
setopt interactive_comments

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000000

# completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
###################################


# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# aliasrc
[ -f $HOME/.config/zsh/aliasrc ] && source $HOME/.config/zsh/aliasrc
# optionsrc
[ -f $HOME/.config/zsh/optionsrc ] && source $HOME/.config/zsh/optionsrc


#fzf
eval "$(fzf --zsh)"

#zoxide at END of file
eval "$(zoxide init zsh)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh 2>/dev/null
