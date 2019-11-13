<?php
require_once '_conexion_/_conexion.php';

$id  = $_POST['id'];
$lat = $_POST['lat'];
$lng = $_POST['lng'];

try {

    $base->beginTransaction();

    $sql    = 'INSERT INTO coordenadas (latitud, longitud, id_resu_ruta) VALUES (?,?,?)';
    $result = $base->prepare($sql);
    $result->bindParam(1, $lat, PDO::PARAM_STR);
    $result->bindParam(2, $lng, PDO::PARAM_STR);
    $result->bindParam(3, $id, PDO::PARAM_STR);

    if ($result->execute()) {
        echo 'registro';
    } else {
        echo "00";
    }
    //
    $base->commit();
} catch (Exception $e) {
    $base->rollback();
    echo '000';
}
