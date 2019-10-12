#!/bin/bash

source $HOME/.cache/wal/colors.sh

function disksize() {
    size=$(df -h | grep "$*" | tr -s ' ' | cut -d ' ' -f 5 | tr -d '%')
    echo -n "%{F$color2}$2 %{F-}"
    if [ $size -gt "50" ]; then
        echo -n "%{F$color1}";
    elif [ $size -gt "75" ]; then
        echo -n "%{F$color5}";
    else
        echo -n "%{F$color4}";
    fi
    echo "$size%%{F-}";
}

export -f disksize

function format() {
    echo "%{A:udiskie-umount '/run/media/lyneca/$*':}%{F$color2}'$*'%{F-} %{F$color4}$(disksize /run/media/lyneca/$*) %{F-} %{A-}"
}

export -f format

if [ -d /run/media/lyneca ]; then
    ls --color=never /run/media/lyneca | xargs -L 1 -I {} bash -c 'format "$*"' _ {} | xargs echo
else
    echo
fi
