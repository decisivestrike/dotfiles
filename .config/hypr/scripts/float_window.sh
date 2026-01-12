#!/bin/bash

floating=$(hyprctl activewindow -j | jq '.floating')
window=$(hyprctl activewindow -j | jq '.initialClass' | tr -d "\"")

toggle() {
    width=$1
    height=$2
    hyprctl --batch "dispatch togglefloating; dispatch resizeactive exact ${width} ${height}; dispatch centerwindow"
}

untoggle() {
    hyprctl dispatch togglefloating
}

handle() {
    width=$1
    height=$2
    if [ "$floating" == "false" ]; then
        toggle "$width" "$height"
    else
        untoggle
    fi
}

# case $window in
#   kitty) handle "50%" "35%" ;;
#   *) handle "90%" "90%" ;;
# esac

handle "90%" "90%"
