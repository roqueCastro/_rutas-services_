<?php
require_once '_conexion_/_conexion.php';

try {

    $base->beginTransaction();

    $sql1   = "TRUNCATE TABLE conductor";
    $result = $base->prepare($sql1);
    $result->execute();

    $sql2   = "TRUNCATE TABLE coordenadas";
    $result = $base->prepare($sql2);
    $result->execute();

    $sql3   = "TRUNCATE TABLE resultadoruta";
    $result = $base->prepare($sql3);
    $result->execute();

    $sql4   = "TRUNCATE TABLE ruta";
    $result = $base->prepare($sql4);
    $result->execute();

    $sql5   = "TRUNCATE TABLE varada";
    $result = $base->prepare($sql5);
    $result->execute();

    //

    //
    $base->commit();
    //
    echo 'registro exitoso';

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
