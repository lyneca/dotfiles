source ~/.cache/wal/colors.sh
count=`/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME status --porcelain | wc -l`

if [ $count -gt 0 ]; then
    echo -n "%{F$color6}$count dots%{F-}"
else
    echo "";
fi
