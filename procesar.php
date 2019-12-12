<?php

session_start();

$operacion = $_POST['Operacion'];
//$operacion = "info_factura";

if ($operacion == "update") {

    $name = $_POST['name_adm'];
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    $tele = $_POST['tele'];
    $lat  = $_POST['lat'];
    $lng  = $_POST['lng'];

    require_once '_conexion_/_conexion.php';

    try {

        $base->beginTransaction();

        $sql    = "UPDATE colegio SET nombre_administrador = ?, userr = ?, pass = ?, telefono = ?, latitud = ?, longitud = ?   WHERE id_colegio = 1 ";
        $result = $base->prepare($sql);

        $result->bindParam(1, $name, PDO::PARAM_STR);
        $result->bindParam(2, $user, PDO::PARAM_STR);
        $result->bindParam(3, $pass, PDO::PARAM_STR);
        $result->bindParam(4, $tele, PDO::PARAM_STR);
        $result->bindParam(5, $lat, PDO::PARAM_STR);
        $result->bindParam(6, $lng, PDO::PARAM_STR);

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

    // echo $name . "\n" . $user . "\n" . $pass . "\n" . $tele . "\n" . $lat . "\n" . $lng;
    // echo 'holaproceso';
}
if ($operacion == "service") {

    require_once '_conexion_/_conexion.php';

    try {

        $base->beginTransaction();

        $sql    = "SELECT * FROM colegio";
        $result = $base->prepare($sql);
        if ($result->execute()) {
            $results = $result->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);
        } else {
            echo "00";
        }
        //
        $base->commit();
    } catch (Exception $e) {
        $base->rollback();
        echo '000';
    }

    // echo $name . "\n" . $user . "\n" . $pass . "\n" . $tele . "\n" . $lat . "\n" . $lng;
    // echo 'holaproceso';
}
if ($operacion == "deletefile") {

    //header('Location:login.php?id=1');
    echo "true";
}
if ($operacion == "out") {

    session_destroy();
    //header('Location:_ws_nn_code_.php');
    echo "true";
}
if ($operacion == "init") {

    $_SESSION['id'] = "12";
    echo "true";
}
if ($operacion == "filedelete") {

    $ar = "_conexion_/_conexion.php";
    unlink($ar);
    echo "Archivo eliminado Exitosamente";
}
