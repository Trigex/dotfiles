# merge xresources
xrdb -merge ~/.Xresources
# startup
cd ~/.config/dwm && ./startup &
cd ~/.config/dwm && ./statup_blk
cd ~/
# star of the show!
exec dwm
