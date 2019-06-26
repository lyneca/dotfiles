source $HOME/.cache/wal/colors.sh

if [ -e $1 ]; then
    size=$(df $1 --output=pcent | tail -n 1 | tr -d ' ' | tr -d '%')
    echo -n "%{F$color2}$2 %{F-}"
    if [ $size -gt "$4" ]; then
        echo -n "%{F$color1}";
    elif [ $size -gt "$3" ]; then
        echo -n "%{F$color5}";
    else
        echo -n "%{F$color4}";
    fi
    echo "$size%%{F-}";
fi
