if mount | grep -q "/media/usb"; then
    size=$(df $1 --output=used | tail -n 1 | tr -d ' ')
    if [ $size -gt "$4000" ]; then
        echo -n "%{F#ff5555}";
    elif [ $size -gt "$3000" ]; then
        echo -n "%{F#fba922}";
    else
        echo -n "%{F#aaff77}";
    fi
    echo "$2%{F-}";
else
    echo "";
fi
