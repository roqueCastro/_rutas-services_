<?php
require_once '_conexion_/_conexion.php';
$col = $_POST['id_colegio'];
$con = $_POST['id_conductor'];
$n   = $_POST['nombre'];

try {

    $base->beginTransaction();

    $sql    = 'INSERT INTO ruta (nombre_ruta, id_colegio, id_conductor) VALUES (?,?,?)';
    $result = $base->prepare($sql);
    $result->bindParam(1, $n, PDO::PARAM_STR);
    $result->bindParam(2, $col, PDO::PARAM_STR);
    $result->bindParam(3, $con, PDO::PARAM_STR);

    $result->execute();
    //
    $c = $result->rowCount();

    if ($c > 0) {
        echo "registra";
        //
    }
    //
    $base->commit();

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
