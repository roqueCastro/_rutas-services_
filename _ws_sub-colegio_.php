<?php
require_once '_conexion_/_conexion.php';

///$id_ruta = '17';
$id_ruta = $_POST['id'];

try {

    $base->beginTransaction();

    $sql    = "SELECT * FROM rutas_sub_cole WHERE id_ruta = ?  group by id_resu_ruta order by fecha_inicio desc";
    $result = $base->prepare($sql);
    $result->bindParam(1, $id_ruta, PDO::PARAM_STR);
    $result->execute();
    //
    $c = $result->rowCount();

    if ($c > 0) {
        $consulta['rutas_sub_cole'] = $result->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($consulta);
        //
    } else {
        echo '00';
    }
    //
    $base->commit();
} catch (Exception $e) {
    $base->rollback();
    echo '000';
}
