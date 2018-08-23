#!/bin/bash
# WP INSTALL MASS SCANNER
# Coded by wong galek - jatim4u family - kopi rokok
# https://www.trenggalek6etar.id
checkSite(){
red='\033[0;31m'
cyan='\033[0;36m'
NC='\033[0m'
green='\e[92m'
Green='\e[42m'
target=$1
COUNTER=$((COUNTER+1))
if [[ $(timeout 5 curl -s -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" $target'/wp-admin/install.php') =~ 'English (United States)' ]];
then

    printf "${green}[${COUNTER}] => [$target] => OK\n";
    echo "$target/wp-admin/install.php" | tee -a valid_wordpess.txt
    else
    printf "${red}[${COUNTER}] => ${red}$target => NO\n";
fi
}
for target in $(cat $1); do
        checkSite $target
    done
filter_total=$(cat valid_wordpess.txt | wc -l)
printf "\033[0;36mTotal Valid : $filter_total\n";
