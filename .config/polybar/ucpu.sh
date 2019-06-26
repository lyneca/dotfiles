#!/bin/bash
scp -q ucpu3:/home/ltut8436/comp3419_ass_1/progress_3_37.txt /home/lyneca/.config/polybar/progress.txt
so_far="$(cat /home/lyneca/.config/polybar/progress.txt | cut -d ' ' -f 1)"
total="$(cat /home/lyneca/.config/polybar/progress.txt | cut -d ' ' -f 2)"
printf "%.0f%%" "$(awk "BEGIN {print $so_far / $total * 100}")"
