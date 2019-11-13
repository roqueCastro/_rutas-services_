<?php
require_once '_conexion_/_conexion.php';
$nom = $_POST['nombre'];
$ape = $_POST['apellido'];
$tel = $_POST['telefono'];
$dir = $_POST['direccion'];
$usu = $_POST['usuario'];
$pas = $_POST['pass'];

try {

    $base->beginTransaction();

    $sql    = 'INSERT INTO conductor (nombre, apellido, telefono, direccion, userr, pass) VALUES (?,?,?,?,?,?)';
    $result = $base->prepare($sql);
    $result->bindParam(1, $nom, PDO::PARAM_STR);
    $result->bindParam(2, $ape, PDO::PARAM_STR);
    $result->bindParam(3, $tel, PDO::PARAM_STR);
    $result->bindParam(4, $dir, PDO::PARAM_STR);
    $result->bindParam(5, $usu, PDO::PARAM_STR);
    $result->bindParam(6, $pas, PDO::PARAM_STR);

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
