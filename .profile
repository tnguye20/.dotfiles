export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export VISUAL=/usr/bin/gvim
export EDITOR=/usr/bin/nvim
export TERM=alacritty
if pacman -Qi google-chrome > /dev/null; then
  export BROWSER=/usr/bin/google-chrome-stable
else
  export BROWSER=/usr/bin/palemoon
fi
if pacman -Qi firefox > /dev/null; then
  export BROWSER=/usr/bin/firefox
else
  export BROWSER=/usr/bin/palemoon
fi

# Map Drive
# [[ -b /dev/sda1 ]] && sudo mount -o gid=1000,uid=1000 /dev/sda1 /media/seagate
# [[ -b /dev/sdb1 ]] && sudo mount -o gid=1000,uid=1000 /dev/sdb1 /media/seagate
# [[ -b /dev/nvme0n1p3 ]] && sudo mount -o gid=1000,uid=1000 /dev/nvme0n1p3 /media/windows
# source "$HOME/.cargo/env"
