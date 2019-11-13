<?php
require_once '_conexion_/_conexion.php';

$id_ruta = $_POST['id'];

try {

    $base->beginTransaction();

    $sql    = "SELECT * FROM resultadoruta WHERE id_ruta = ? and estado_ruta = 0";
    $result = $base->prepare($sql);
    $result->bindParam(1, $id_ruta, PDO::PARAM_STR);
    $result->execute();
    //
    $c = $result->rowCount();

    if ($c > 0) {
        $results = $result->fetch(PDO::FETCH_ASSOC);
        echo $results['id_resu_ruta'];
        //
    } else {

        $sql    = 'INSERT INTO resultadoruta (id_ruta) VALUES (?)';
        $result = $base->prepare($sql);
        $result->bindParam(1, $id_ruta, PDO::PARAM_STR);
        $result->execute();
        $c = $result->rowCount();

        if ($c > 0) {

            $id = $base->lastInsertId("resultadoruta");
            echo $id;

        } else {
            echo "00";
        }

    }

    //
    $base->commit();
} catch (Exception $e) {
    $base->rollback();
    echo '000';
}
