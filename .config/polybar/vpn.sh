#!/bin/bash


state="$(nmcli -f DEVICE,STATE device status | grep vpn0 | tr -s ' ' | cut -d ' ' -f 2)"

if [ "$state" = "connected" ]; then
    name="$(nmcli -f DEVICE,NAME,TYPE connection show | grep "vpn " | tr -s ' ' | cut -d ' ' -f 2)"
else
    name=""
fi

echo $name
