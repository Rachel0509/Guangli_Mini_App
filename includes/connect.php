<?php

$host = "localhost";
$uid = "root";
$pwd = "123456";
$dbname = 'coopers';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $uid, $pwd);
    // echo "connect success"; 
}
catch(PDOException $e)
{
    echo $e->getMessage();
    exit();
}