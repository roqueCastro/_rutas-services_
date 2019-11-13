<?php
require_once '_conexion_/_conexion.php';

$json = array();

try {

    $base->beginTransaction();

    $sql    = "SELECT * FROM rutas_activas";
    $result = $base->prepare($sql);
    $result->execute();
    //
    $c = $result->rowCount();

    if ($c > 0) {
        while ($consulta = $result->fetch(PDO::FETCH_ASSOC)) {
            $json['rutas_activas'][] = $consulta;
        }
        //
    } else {
        $consulta['id']          = '0';
        $json['rutas_activas'][] = $consulta;
    }
    //
    $base->commit();
    //
    echo json_encode($json);

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
