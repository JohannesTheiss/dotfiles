## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Enable colors and change prompt:
autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1="%n :: %B%{$fg[cyan]%}%(4~|%-1~/.../%2~|%~)%u%b %{$reset_color%}$%b "
PS1="%B%{$fg[red]%}%n :: %B%{$fg[cyan]%}%(4~|%-1~/.../%2~|%~)%u%b %{$reset_color%}$%b "



# Print a greeting message when shell is started
echo $USER@$HOST  $(uname -srm) $(lsb_release -rcs)

EDITOR='nvim'

# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# aliases 
alias v="nvim"
alias ls="exa"
alias grep="grep --color"
alias diff="diff --color"
alias cp="cp -i"                                                # Confirm before overwriting something
alias to="~/scripts/toggleAudio"
alias scan="sudo nmap -PE 192.168.2.1-200"
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
# git always
alias gl="git log --oneline --all --graph"
alias gitu='git add . && git commit && git push'

alias ide="~/scripts/tmux/ide"

# qt and pi
alias topi="~/scripts/rsync/sync.sh"
alias frompi="~/scripts/rsync/getFrom.sh"
#alias pimake="~/fh/GPS_Logbook/Pi/raspi-qt/tools/build-tools/bin/qmake"
alias pimake="~/fh/GPS_Logbook/Pi/raspi/qt5/bin/qmake"
alias qtide="~/scripts/tmux/qtIde"
alias run="~/fh/GPS_Logbook/Pi/pi-scripts/deploy.sh"




########## PLUGINS #########
# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null


# add ruby to path for nvim
export PATH=/home/johannes/.gem/ruby/2.7.0/bin:$PATH
