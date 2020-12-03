<?php

function GetAllItems($conn)
{

    $result = array();
   $sql = 'select * from items';
   $query = $conn->query($sql);

   while ($row = $query->fetchAll(PDO::FETCH_ASSOC)) {
       $result = $row;
   }

   echo(json_encode($result));
}