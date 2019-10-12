#!/bin/bash
checkSite(){
red='\033[0;31m'
cyan='\033[0;36m'
NC='\033[0m'
green='\e[92m'
Green='\e[42m'
target=$1
COUNTER=$((COUNTER+1))

if [[ $(timeout 3 curl -s -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" $target'/administrator/manifests/files/joomla.xml') =~ '<version>' ]];
then
versi=$(curl -s --max-time 3 --connect-timeout 3 ${target}/administrator/manifests/files/joomla.xml | grep -i "<version>" | cut -d '[' -f 2 | awk '{gsub("<version>]","")}1')
    printf "${green}[${COUNTER}] => [$target] => OK\n";
    echo "$target <br>$versi" | tee -a JOOMLA_VERSION.txt
    else
    printf "${red}[${COUNTER}] => ${red}$target => NO\n";
fi
}
for target in $(cat $1); do
        checkSite $target
    done
filter_total=$(cat JOOMLA_VERSION.txt | wc -l)
printf "\033[0;36mTotal Valid : $filter_total\n";
