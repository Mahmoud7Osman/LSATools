if [ ! -f "$1" ];then printf "$1: No Such File Or Directory\n" > /dev/stderr; exit 1;fi
if [ -d "$1" ];then printf "$1: is a direcrory\n" > /dev/stderr; exit 2;fi

ln -s "$1" "/etc/init.d/$(echo $1 | sed s/'\/'/"\n"/g | tail -1)"

printf "Enter Startup Priority Number (Blank For Default) : "
read PN
printf "Enter Stop Priority Number (Blank For Default) : "
read SN
printf "Enter Startup Run-levels Separated By Spaces (Blank For Default) : "
read RLEVELS
printf "Enter Stop Run-Levels Separated By Spaces (Blank For Default) : "
read SLEVELS

if [ "$RLEVELS" == '' ] || [ "SLEVELS" == '' ] || [ "$PN" == '' ] || [ "$SN" == '' ];then 
   update-rc.d $(echo "$1" | sed s/'\/'/"\n"/g | tail -1) defaults
   exit 0
fi
update-rc.d "$1" start $PN $RLEVELS . stop $SN $SLEVELS .
