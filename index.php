<?php

use App\Hw;

ini_set('display_errors', 1);

require "vendor/autoload.php";

$hw = new Hw();
echo $hw->text();
