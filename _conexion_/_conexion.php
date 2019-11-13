<?php
//Base Original
$link = 'mysql:host=localhost:3306;dbname=rutas_baique;charset=utf8';

//Base de datos para pruebas
//$link ='mysql:host=localhost;dbname=base_prueba';
$usuario = "root";
$clave   = "";

$base = new PDO($link, $usuario, $clave);
$base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
