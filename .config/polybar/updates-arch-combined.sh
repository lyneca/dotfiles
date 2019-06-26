#!/bin/sh

function clickecho() {
    echo "%{A:kitty kittyay &:}$@%{A}"
}

updates_arch=$(checkupdates 2>/dev/null)
if [ "$updates_arch" == "" ]; then
    updates_arch=0
else
    updates_arch=$(echo "$updates_arch" | wc -l)
fi


# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
updates_aur=$(yay -Pu 2>/dev/null)
if [ "$updates_aur" == "" ]; then
    updates_aur=0
else
    updates_aur=$(echo "$updates_aur" | wc -l)
fi

updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" -eq 1 ]; then
    clickecho "$updates update"
elif [ "$updates" -gt 1 ]; then
    clickecho "$updates updates"
else
    echo ""
fi

