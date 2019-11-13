<?php
require_once '_conexion_/_conexion.php';

$json = array();

try {

    $base->beginTransaction();

    $sql    = "SELECT * FROM conductor";
    $result = $base->prepare($sql);
    $result->execute();
    //
    $c = $result->rowCount();

    if ($c > 0) {
        while ($consulta = $result->fetch(PDO::FETCH_ASSOC)) {
            $json['conductor'][] = $consulta;
        }
        //
    } else {
        $consulta['id_conductor'] = '0';
        $json['conductor'][]      = $consulta;
    }
    //
    $base->commit();
    //
    echo json_encode($json);

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
