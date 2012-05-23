# Common settings
[ -f ${HOME}/.commonrc ] && . ${HOME}/.commonrc

# Facebook settings
[ -f ${HOME}/.facebookrc ] && . ${HOME}/.facebookrc

# Oh my ZSH!
ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
plugins=(git)

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

# Prompt
PROMPT='%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}
  %{$fg_bold[red]%}➜%{$reset_color%}  '

# Functions
[ -f ${HOME}/.functions ] && . ${HOME}/.functions

# Automatically added completion options
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' original true
zstyle :compinstall filename '/home/danwang/.zshrc'

autoload -U compinit
compinit

# Bash-like completion
setopt auto_list
setopt no_auto_menu
setopt no_auto_param_slash
setopt no_list_ambiguous
setopt always_last_prompt

# Saved history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Beep on error
setopt autocd beep nomatch

# Vi mode for command line
bindkey -v
bindkey "^?" backward-delete-char

