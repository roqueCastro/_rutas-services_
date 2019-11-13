<?php
require_once '_conexion_/_conexion.php';

$json = array();

try {

    $base->beginTransaction();

    $sql    = "SELECT * FROM rutas_view";
    $result = $base->prepare($sql);
    $result->execute();
    //
    $c = $result->rowCount();

    if ($c > 0) {
        while ($consulta = $result->fetch(PDO::FETCH_ASSOC)) {
            $json['rutas_view'][] = $consulta;
        }
        //
    } else {
        $consulta['resu_ruta_id'] = '0';
        $json['rutas_view'][]     = $consulta;
    }
    //
    $base->commit();
    //
    echo json_encode($json);

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
