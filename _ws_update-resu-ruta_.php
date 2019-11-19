<?php
require_once '_conexion_/_conexion.php';

$id       = $_POST['id'];
$fecha    = localtime();
$cantidad = $_POST['can'];
$estado   = '1';

try {

    $base->beginTransaction();

    $sql    = "UPDATE resultadoruta SET fecha_final = now(), pasajeros_finales_ruta = ?, estado_ruta = ?   WHERE id_resu_ruta = ? ";
    $result = $base->prepare($sql);

    $result->bindParam(1, $cantidad, PDO::PARAM_STR);
    $result->bindParam(2, $estado, PDO::PARAM_STR);
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
