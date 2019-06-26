source ~/.cache/wal/colors.sh
lines=$(cat ~/.todo.md | grep "\[ \]" | wc -l)
if [ ! $lines -eq 0 ]; then
    echo "%{F$color6}$lines todo%{F-}"
else
    echo ""
fi
