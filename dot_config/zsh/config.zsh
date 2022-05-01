
#named directories

pro=~/project
bin=~/bin
#paths
typeset -U path #preserve uniqueness of directories
path=("$HOME/.local/bin" $path)
path=("$HOME/go/bin" $path)
path=("$HOME/bin" $path)
path=("$HOME/.cargo/bin" $path)

#shell variables
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
#aliases
alias vim=nvim
alias f=nnn
alias edit=nvim
alias mux=tmuxinator
alias par=parallel

bindkey -v
# suffix aliases
alias -s {tex,py,c,md,go}=nvim
alias -s html=xdg-open
alias -s pdf=zathura
alias -s {com,org,io,net}=firefox

alias burp="BurpSuiteCommunity & disown"
alias feed=newsboat
alias mail=neomutt
alias dh='dirs -v'
#completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle -e ':completion:*:approximate:*' \
                   max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:*:xdvi:*' menu yes select
zstyle ':completion:*:*:xdvi:*' file-sort time
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list alway
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# sources
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
#shelloptions
setopt appendhistory incappendhistory sharehistory cdablevars extendedglob
setopt bare_glob_qual no_notify csh_null_glob hist_verify hist_ignore_all_dups 
setopt hist_reduce_blanks hist_save_no_dups hist_ignore_space no_beep
setopt noclobber
fpath+=~/.cargo/bin/

unalias run-help
autoload run-help
bindkey '' run-help


alias ls='exa --icons '
alias tree='exa --icons --tree'
alias nnn='nnn -e'
alias chez='chezmoi --color true'
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_PLUG="p:preview-tui"
