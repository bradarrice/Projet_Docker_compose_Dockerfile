<?php
const DBHOST= 'db';
const DBUSER= 'test';
const DBPASS = 'pass';
const DBNAME = 'demo';

$dsn = 'mysql:host='.DBHOST. ';dbname='.DBNAME;


try {
    $db = new PDO($dsn,DBNAME, DBPASS);
    echo 'connecte';

} catch (PDOException  $exception) {
    echo 'une erreur survenue : '. $exception->getMessage();
    die;
}