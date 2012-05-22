# Source UC Berkeley settings first
[ -f ~/.berkeleyrc ] && . ${HOME}/.berkeleyrc

# Aliases
[ -f ~/.aliases ] && . ${HOME}/.aliases

# Prompt
[ -f ~/.bash_prompt ] && . ${HOME}/.bash_prompt

# Hacks for Solaris and urxvt
if [[ "$TERM" == 'screen' || "$TERM" == 'vt100' && 'SunOS' == $(uname) ]]
then
    export TERM='xterm'
fi
if [[ "$TERM" == *rxvt* ]] ; then
    export TERM='rxvt'
fi

# Use vim
export EDITOR='vim'
export VISUAL='vim'
export SVN_EDITOR='vim'

# Use less
export PAGER='less'

# Use UTF-8
export LANG='en_US.UTF-8'

# LS_COLORS
if [[ FreeBSD == $(uname) || Darwin == $(uname) ]] ; then
    if [[ -e /usr/local/bin/gls && -e /usr/local/bin/gdircolors ]] ; then
        alias ls='gls --color'
        eval `gdircolors $HOME/.dir_colors`
    else
        alias ls='ls -G'
        export LSCOLORS="Exxxxxxxcxxxxxxxxxxxxx"
    fi
elif [[ SunOS == $(uname) ]] ; then
    if [[ -e /usr/local/bin/gls && -e /usr/local/bin/gdircolors ]] ; then
        alias ls='gls --color'
        eval `gdircolors $HOME/.dir_colors`
    fi
else
        alias ls='ls --color'
        eval `dircolors $HOME/.dir_colors`
fi

