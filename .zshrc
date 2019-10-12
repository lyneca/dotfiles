# Path to your antigen installation.
cat ~/.cache/wal/sequences

source /usr/share/zsh/share/antigen.zsh

# oh-my-zsh is full of bloat, use antigen instead
antigen bundle oh-my-zsh
antigen theme lyneca/geometry
antigen bundle jedahan/geometry-hydrate

# antigen bundle zsh-users/zsh-history-substring-search

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle srijanshetty/zsh-pandoc-completion
antigen bundle lyneca/zsh-mdn-completion
antigen bundle lyneca/zsh-setup-completion
antigen bundle /usr/share/fzf

# Geometry Config
export GEOMETRY_PROMPT_PLUGINS=(exec_time virtualenv jobs git hg node rustup)

PROMPT_GEOMETRY_COLORIZE_ROOT=true
PROMPT_GEOMETRY_EXEC_TIME=true

GEOMETRY_COLOR_PROMPT="cyan"

GEOMETRY_SYMBOL_PROMPT=")>"                  # default prompt symbol
GEOMETRY_SYMBOL_RPROMPT="╶ "                # multiline prompts
GEOMETRY_SYMBOL_EXIT_VALUE=")>"              # displayed when exit value is != 0
GEOMETRY_SYMBOL_ROOT="}>"                    # when logged in user is root

GEOMETRY_PROMPT_PREFIX="\n"
GEOMETRY_PROMPT_PREFIX_SPACER=""
GEOMETRY_PROMPT_SUFFIX="$"
PROMPT_GEOMETRY_RPROMPT_ASYNC=true

GEOMETRY_DIR_SPACER="\n"

GEOMETRY_PLUGIN_HYDRATE_INTERVAL=0

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups
setopt hist_ignore_space

export TERMINAL=xterm
export MONITOR=eDP-1
export NO_AT_BRIDGE=1
export JUNIT_HOME=/usr/local/junit
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit4.10.jar:.

export SSH_ASKPASS="lxqt-openssh-askpass"

[ -n "$XTERM_VERSION" ] && transset-df --dec 0.2 --id "$WINDOWID" >/dev/null

export ANDROID_HOME=/opt/android-sdk
export MOZ_USE_XINPUT2=1
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.profile
source ~/.alias
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

antigen apply

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey -v \
    '^?' backward-delete-char \
    '^[[A' history-beginning-search-backward-end \
    '^[[B' history-beginning-search-forward-end \
    '^[OH' beginning-of-line \
    '^[OF' end-of-line

bindkey -M vicmd 'K' run-help

eval $(keychain --eval --quiet id_rsa)

function _open_vim() {
    zle kill-whole-line
    zle vi-insert
    zle -U "vim **	"
}

function _open_zathura() {
    zle kill-whole-line
    zle vi-insert
    zle -U "zathura '.pdf\$ '**	"
}

function _open_mime() {
    zle kill-whole-line
    zle vi-insert
    zle -U "mimeopen **	"
}

function _subshellize() {
    zle -U "I(A )i"
}

zle -N open-vim _open_vim
zle -N open-zathura _open_zathura
zle -N open-mime _open_mime
zle -N subshellize _subshellize

bindkey "^[v" open-vim
bindkey "^[z" open-zathura
bindkey "^[o" open-mime
bindkey "^[s" subshellize

zstyle ':completion:*' file-patterns '%p:globbed-files:'

fpath=($fpath /home/$USER/bin/completion)

function setup() {
    source $HOME/.config/setup/$1
}
