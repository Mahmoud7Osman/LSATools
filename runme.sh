black="\033[0;30m"        # Black
red="\033[0;91m"          # Red
green="\033[1;92m"        # Green
yellow="\033[0;93m"       # Yellow
blue="\033[0;94m"         # Blue
purple="\033[0;95m"       # Purple
cyan="\033[0;36m"         # Cyan
white="\033[0;97m"        # White
ban="
 ____    _    ____
$red/ ___|  / \  / ___|
$blue\___ \ / _ \ \___ \\
$green ___) / ___ \ ___) |
$cyan|____/_/   \_\____/ $green System Administrator's Basic Scripts
$white

                                ${cyan} This Program is Coded By Mahmoud Osman (${red}MLT${cyan})
"
printf "$ban"
printf "$blue[_]$white Enter The Mission Number: \n\n"
menu="
    ${red}1: ${white}Eliminate Embedded Spaces In Files & Folders Name (src/filename-space-remover)
    ${red}2: ${white}CPU And Memory Information                        (src/hw_info)
    ${red}3: ${white}Enumerate Users Groups IDs                        (src/user-enumerator)
    ${red}4: ${white}Show Mounted Devices and It's Path                (scr/mounted-device-shower)
    ${red}5: ${white}Enumerate Users Login Shells                      (scr/users-login-shell)
    ${red}6: ${white}Execute A Program On System Startup               (scr/add-rc-command)

    ${cyan}m: ${white}Print This Menu Again
    ${cyan}b: ${white}Print Program Banner
    ${cyan}r: ${white}Print Banner And Menu Again
    ${cyan}c: ${white}Clear Screen
    ${cyan}q: ${white}Quit This Program
"
printf "$menu"
loop(){
printf "\nPress Something : "
read -n 1 MN
echo
if [ "$MN" == 1 ];then
   printf "Enter Folder Path To Start The Operation On :  "
   read trg
   src/filename-space-remover "$trg"
elif [ "$MN" == "m" ];then
   printf "$menu"
elif [ "$MN" == "b" ];then
   printf "$ban"
elif [ "$MN" == "r" ];then
   printf "$ban\n$menu"
elif [ "$MN" == "c" ];then
   clear
elif [ "$MN" == "q" ];then
   exit 0
elif [ "$MN" == 2 ];then
   src/hw_info
elif [ "$MN" == 3 ];then
   src/user-enumerator
elif [ "$MN" == 4 ];then
   src/mounted-device-shower
elif [ "$MN" == 5 ];then
   src/users-login-shell
elif [ "$MN" == 6 ];then
   printf "Enter Program Path Followed By It's Arguments : "
   read cmd
   src/add-rc-command "$cmd"
fi
}
while [ 1 ];do loop; done
