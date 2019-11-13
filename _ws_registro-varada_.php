<?php
require_once '_conexion_/_conexion.php';
$lat = $_POST['lat'];
$lng = $_POST['lng'];
$des = $_POST['des'];
$id  = $_POST['id_resu_ruta'];

try {

    $base->beginTransaction();

    $sql    = 'INSERT INTO varada (latitud, longitud, descripcion, id_resu_ruta) VALUES (?,?,?,?)';
    $result = $base->prepare($sql);
    $result->bindParam(1, $lat, PDO::PARAM_STR);
    $result->bindParam(2, $lng, PDO::PARAM_STR);
    $result->bindParam(3, $des, PDO::PARAM_STR);
    $result->bindParam(4, $id, PDO::PARAM_STR);

    $result->execute();
    //
    $c = $result->rowCount();

    if ($c > 0) {
        echo "Reporte registro exitoso.!";
        //
    }
    //
    $base->commit();

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
