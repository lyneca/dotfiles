function get_temp() {
    sensors | grep "Core $1" | tr -s ' ' | cut -d ' ' -f 3 | sed -r 's/\+([[:digit:]]+)\..+/\1/g'
}

bars=(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)

colors=(
    $color1
    $color1
    $color2
    $color3
    $color4
    $color5
    $color6
    $color7
)

function colorize() {
    n=$(echo "($1-20)/80*8" | bc -l | cut -d '.' -f 1)
    echo "%{T4}%{F${colors[$n]}}${bars[$n]}%{F-}%{T-}"
}

temp_0=$(get_temp 0)
temp_1=$(get_temp 1)

echo "$(colorize $temp_0) $(colorize $temp_0)"
