#
# .bash_profile
#

PATH=$PATH:~/Linux_Hacks:~/Research/Scripts:~/bin/Mercury-i686/bin:~/bin/Zotero-i686:~/bin/VESTA-i686:~/bin/onedrive-master
export PATH

[[ -f .bashrc ]] && . .bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
