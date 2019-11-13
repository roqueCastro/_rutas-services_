<?php
require_once '_conexion_/_conexion.php';

$json = array();

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    try {

        $base->beginTransaction();

        $sql    = 'SELECT * FROM coor where id_resutado = ? order by coordenada_id desc limit 1';
        $result = $base->prepare($sql);
        $result->bindParam(1, $id, PDO::PARAM_STR);
        $result->execute();
        //
        $c = $result->rowCount();

        if ($c > 0) {
            while ($consulta = $result->fetch(PDO::FETCH_ASSOC)) {
                $json['coor'][] = $consulta;
            }

            //
        } else {
            $consulta['coordenada_id'] = '0';
            $json['coor'][]            = $consulta;
        }
        //
        $base->commit();
        //
        echo json_encode($json);

    } catch (Exception $e) {
        $base->rollback();
        echo $e->getMessage();
    }

}
