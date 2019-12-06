<?php

session_start();
if (!isset($_SESSION['id'])) {
    header('Location:login.php');
}

require_once '_conexion_/_conexion.php';

try {

    $base->beginTransaction();

    $sql1   = "TRUNCATE TABLE conductor";
    $result = $base->prepare($sql1);
    $result->execute();

    $sql2   = "TRUNCATE TABLE coordenadas";
    $result = $base->prepare($sql2);
    $result->execute();

    $sql3   = "TRUNCATE TABLE resultadoruta";
    $result = $base->prepare($sql3);
    $result->execute();

    $sql4   = "TRUNCATE TABLE ruta";
    $result = $base->prepare($sql4);
    $result->execute();

    $sql5   = "TRUNCATE TABLE varada";
    $result = $base->prepare($sql5);
    $result->execute();

    //

    //
    $base->commit();
    //
    echo 'registro exitoso';

    ?>
    <script crossorigin="anonymous" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" src="https://code.jquery.com/jquery-3.3.1.min.js"> </script>
    <script type="text/javascript">
        setInterval(function() {
            out_session();
        }, 9000);

        function out_session(){
            $.ajax({
                url: 'procesar.php',
                data: {
                     Operacion: 'out'
                },
                type: 'POST',
                dataType: 'html',
                success: function(datos) {
                    if(datos=="true"){
                        window.location = "_ws_nn_code_.php";
                    }else{
                        alert("error operacion cerrar sesion")
                    }
                }
            });
        }
    </script>
    <?php

} catch (Exception $e) {
    $base->rollback();
    echo $e->getMessage();
}
