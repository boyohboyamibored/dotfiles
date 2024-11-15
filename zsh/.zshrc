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

#plugins
#source ~/.config/plugins/powerlevel10k/powerlevel10k.zsh-theme
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
#source ~/.config/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
#source ~/.config/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh

#history search
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
#
# bindkey -M vicmd 'k' history-substring-search-up
# bindkey -M vicmd 'j' history-substring-search-down

#aliasrc
[ -f ~/.config/zsh/aliasrc ] && source ~/.config/zsh/aliasrc

# To customize prompt, run `p10k configure` or edit ~/.config/zsh//.p10k.zsh.
#[[ ! -f ~/.config/zsh//.p10k.zsh ]] || source ~/.config/zsh//.p10k.zsh

#fzf
eval "$(fzf --zsh)"

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#zoxide at END of file
eval "$(zoxide init zsh)"
