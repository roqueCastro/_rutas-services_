<?php
include '../_conexion.php';
$datos = $_POST['datos'];

try {

    $base->beginTransaction();

    $sql    = 'INSERT INTO base_datos (datos) VALUES (?)';
    $result = $base->prepare($sql);
    $result->bindParam(1, $datos, PDO::PARAM_STR);

    if ($result->execute();) {
        echo "Registro en la base de datos..";
        //
    } else {
        echo "Error";
    }
    //
    $base->commit();

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
