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
if pacman -Qi firefox > /dev/null; then
  export BROWSER=/usr/bin/firefox
else
  export BROWSER=/usr/bin/palemoon
fi

# Map Drive
[[ -b /dev/sda1 ]] && sudo mount -o gid=1000,uid=1000 /dev/sda1 /media/seagate
[[ -b /dev/nvme0n1p3 ]] && sudo mount -o gid=1000,uid=1000 /dev/nvme0n1p3 /media/windows

# Rsync files if necessary
[[ ! -d ~/rsync ]] && mkdir ~/rsync
rsync -avcXL --progress tnguye20@w3.uvm.edu:~/rsync/ ~/rsync

