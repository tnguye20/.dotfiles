export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export TERM=st
if pacman -Qi google-chrome > /dev/null; then
  export BROWSER=/usr/bin/google-chrome-stable
else
  export BROWSER=/usr/bin/palemoon
fi
