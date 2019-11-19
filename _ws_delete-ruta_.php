<?php
require_once '_conexion_/_conexion.php';
$id = $_POST['id'];

try {

    $base->beginTransaction();

    $sql    = "UPDATE ruta SET estado = 1 WHERE id_ruta = ? ";
    $result = $base->prepare($sql);
    $result->bindParam(1, $id, PDO::PARAM_STR);

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
