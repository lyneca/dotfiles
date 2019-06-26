count=$(i3-msg -t get_tree scratchpad | python3 -m json.tool | grep '"scratchpad_state":' | grep -v "none" | wc -l)

if [ "$count" -eq "0" ]; then
    echo
else
    echo -n "%{F$color2}[scratch:%{F-} %{F$color7}$count%{F$color2}]%{F-}"
fi
