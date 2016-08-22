command fortune
shopt -s checkwinsize

xseticon -id $WINDOWID ~/.icons/Faenza/apps/48/xterm.png

#[ ! "$UID" = "0" ] && archbey -c white
#[  "$UID" = "0" ] && archbey -c red
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\] "
#PS1="\[\033[01;33m\]\u@\[\033[01;32m\]\h\[\033[00;31m\][\W]\[\033[00m\]\$ "
#PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[01;34m\]\$\[\033[00m\] '

PS1='\[\e[1;32m\][\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]]\[\e[1;33m\]\$\[\e[m\] \[\e[1;37m\]'

#============================================================
#
#  ALIASES AND FUNCTIONS
#
#============================================================

#-------------------
# Personnal Aliases
#-------------------


## Modified commands ## {{{
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias cpp='rsync -r -v --progress'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias rm='rm -i'
alias mv='mv -i'
alias nano='nano -w'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias wifi_up='ip link set wlp3s0 up'
alias wifi_down='ip link set wlp3s0 up'
# }}}

## Research Related Stuff ###
#alias mercury='sh bin/Mercury_3.7/bin/mercury'
alias latec="sh /home/zaf/Linux_Hacks/latec"
alias gausssum='python2 bin/GaussSum-3.0/GaussSum.py'
alias comsol='sh bin/COMSOL51/bin/comsol'
alias zotero="sh /home/zaf/bin/Zotero_linux-i686/run-zotero.sh"
alias spyder="python2.7 /home/zaf/bin/spyder-2.3.6/bootstrap.py"


## ls ## {{{
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'
# }}}

alias mountfat="sudo mount -o gid=wheel,fmask=113,dmask=002"
alias reboot="sudo reboot"
alias poweroff="sudo poweroff"
alias halt="sudo halt"
alias ssh="ssh -CY"
alias mount="sudo mount"
alias umount="sudo umount"
alias dhcpcd='sudo dhcpcd'
alias mnt="sh /home/zaf/Linux_Hacks/mnt.sh"
alias cp="/home/zaf/Linux_Hacks/cp -g"
alias cpp="rsync -ah --info=progress"
#alias pacget="sh /home/zaf/Linux_Hacks/pacget.sh"
alias test_micro="arecord -vv -f dat /dev/null"


alias pico115="picocom --b 115200 --omap crcrlf /dev/ttyUSB0"
alias pico96="picocom --b 9600 --omap crcrlf /dev/ttyUSB0"
#alias jdownloader="sh /home/zaf/.jdownloader/JDLauncher"
alias jdownloader="java -jar /home/zaf/.jd2/JDownloader.jar"
alias fityk="fityk &"
alias pms="sh /home/zaf/.pms-1.90.1/PMS.sh"
alias arduino="/home/zaf/.arduino-1.0.6/arduino"
#Copy Stuff
alias encry="encfs /home/zaf/Copy/encrypted /home/zaf/Research/"
alias dencry="fusermount -u /home/zaf/Research/"
alias Copy="/home/zaf/.copy/Software/CopyAgent &"

cp_p() 
{ 
   if [ `echo "$2" | grep ".*\/$"` ]; then 
          pv "$1" > "$2""$1"; 
   else pv "$1" > "$2"/"$1"; 
   fi  ;     
}
