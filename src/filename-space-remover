red="\033[0;91m"
green="\033[0;92m"
white="\033[0;97m"

usage(){
  printf "usage: $0 <Directory Path>\n"
}

if [ $# -lt 1 ];then
   usage
   exit 1
fi

if [ "$1" == "/" ] && [ "$2" != "--force" ];then
   printf "$red[!]$white Operation On '/' Aborted Without the '--force' Argument\n"
   exit 2
fi

if [ ! -d "$1" ] && [ ! -f "$1" ];then
   printf "$red[-]$white $0: No Such File Or Directory $1\n"
   exit 3
fi

printf "$green[+]$white Starting The Filename Embeeded Space Remover (Space Will Become a dash)\n"
find "$1" -name "* *" | while read name; do
mv "$name" $(echo $name | sed s/" "/"-"/g)
printf "$green[+]$white $name Fixed\n"
done
