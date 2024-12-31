PATH=$PATH:$HOME/.local/bin/    # adds ~/.local/bin/ to the path

#Prompt stuff
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# zsh configs
source $HOME/.config/zsh/aliasrc
source $HOME/.config/zsh/optionsrc
source $HOME/.config/zsh/.zshenv
source $HOME/.config/zsh/.zprofile

# plugins

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh 2>/dev/null
source $HOME/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme 2>/dev/null

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ -f ~/.config/zsh/.p10k.zsh ]] && source ~/.config/zsh/.p10k.zsh

#fzf
eval "$(fzf --zsh)"

#zoxide at END of file
eval "$(zoxide init zsh)"
