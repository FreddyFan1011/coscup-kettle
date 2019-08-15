<?php 

$json_data=file_get_contents("php://input");
$filename= "/tmp/json_".date("YmdHis").".txt";
$file = fopen($filename,"a+");
fwrite($file,$json_data);
fclose($file);
echo  '{"result":"success"}';

?>