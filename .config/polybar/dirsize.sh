source $HOME/.cache/wal/colors.sh

size=$(du -d 0 $1 2>/dev/null | cut -f 1)
echo -n "%{F$color2}$2 %{F-}"
if [ $size -gt "$4000" ]; then
    echo -n "%{F$color1}";
elif [ $size -gt "$3000" ]; then
    echo -n "%{F$color5}";
else
    echo -n "%{F$color4}";
fi
# echo "$(du -hd 0 $1 | cut -f 1) $2%{F-}";
disp=$(bc -l <<< "scale=2; $size/1000000" | sed -e 's/^\./0./')
echo "$disp GB%{F-}";
# echo "$2%{F-}";
