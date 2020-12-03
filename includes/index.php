<?php

include('connect.php');
include('functions.php');

$allItems = GetAllItems($conn);

return $allItems;