#
# ~/.bash_profile
#

PATH=$PATH:/home/zaf/Linux_Hacks:/home/zaf/Research/Scripts:/home/zaf/bin/Mercury-i686/bin:/home/zaf/bin/Zotero-i686:/home/zaf/bin/VESTA-i686:/home/zaf/bin/onedrive-master
export PATH

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
