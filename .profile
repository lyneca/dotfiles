gimme() {
	pacman -S $1;
}

indent() {
    sed 's/^/  /g';
}

export PATH=$HOME//bin:$HOME/.gem/ruby/2.5.0/bin:$HOME/.local/bin:$PATH
export STEAM_COMPAT_DATA_PATH=$HOME/proton

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

. ~/.cache/wal/colors.sh

export background
export foreground

export color0
export color1
export color2
export color3
export color4
export color5
export color6
export color7
export color8
export color9
export color10
export color11
export color12
export color13
export color14
export color15

export POLYBAR_DATE_LABEL="%{T4}%{T-}%{F$color2}%date%%{F-}"
export POLYBAR_TIME_LABEL="%{T4}%{T-}%{F$color3}%time%%{F-}"

export MDN_CSS_FILE="$HOME/.local/share/css/homesick.css"

export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export GRADLE_HOME=~/.gradle
# export PAGER="less"

export NNN_FALLBACK_OPENER=xdg-open

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color=bg:-1"

