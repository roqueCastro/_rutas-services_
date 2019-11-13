<?php
require_once '_conexion_/_conexion.php';
if (isset($_GET['user'])) {
    $usuario = $_GET['user'];

    try {

        $base->beginTransaction();

        $sql    = "SELECT * FROM login WHERE userr = ?";
        $result = $base->prepare($sql);
        $result->bindParam(1, $usuario, PDO::PARAM_STR);
        $result->execute();
        //
        $c = $result->rowCount();

        if ($c > 0) {
            while ($consulta = $result->fetch(PDO::FETCH_ASSOC)) {
                $json['usuarios'][] = $consulta;
            }
            //
        } else {
            $consulta['id']     = '0';
            $json['usuarios'][] = $consulta;
        }
        //
        $base->commit();
        //
        echo json_encode($json);

    } catch (Exception $e) {
        $base->rollback();
        echo $e->getMessage();
    }

} else {
    $consulta['id']     = '00';
    $json['usuarios'][] = $consulta;
    echo json_encode($json);
}
