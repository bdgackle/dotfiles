[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xset +fp /usr/share/fonts
xset fp rehash
xset -b
compton &
sh ~/.fehbg &

exec i3
