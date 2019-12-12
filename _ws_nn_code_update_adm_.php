<html>
    <head>
        <script crossorigin="anonymous" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" src="https://code.jquery.com/jquery-3.3.1.min.js">
        </script>
        <script type="text/javascript">
            $(document).ready(function() {
			    cargardates();
			});

			function cargardates(){
				 $.ajax({
			        url: 'procesar.php',
			        data: {
			            Operacion: 'service'

			        },
			        type: 'POST',
			        dataType: 'json',
			        beforeSend: function() {
			            //alert('Procesando informacion..');

			        },
			        success: function(datos) {

			            for (var i=0; i<datos.length; i++){
			            	$('#name').val(datos[i].nombre_administrador);
			            	$('#user').val(datos[i].userr);
				            $('#pass').val(datos[i].pass);
				            $('#tele').val(datos[i].telefono);
				            $('#lat').val(datos[i].latitud);
				            $('#lng').val(datos[i].longitud);
			            }
			        },
			        error: function(xhr, status) {}
			    });
			}

            function updateadm(){
            /*	alert( $('#name').val()+
			          $('#user').val()+
			           $('#pass').val()+
			           $('#tele').val()+
			           $('#lat').val()+
			          $('#lng').val());*/

             	 $.ajax({
			        url: 'procesar.php',
			        data: {
			            Operacion: 'update',
			            name_adm : $('#name').val(),
			            user : $('#user').val(),
			            pass : $('#pass').val(),
			            tele : $('#tele').val(),
			            lat : $('#lat').val(),
			            lng : $('#lng').val()
			        },
			        type: 'POST',
			        dataType: 'html',
			        beforeSend: function() {
			            //alert('Procesando informacion..');

			        },
			        success: function(datos) {
			            alert(datos);
			        },
			        error: function(xhr, status) {}
			    });
             }

             function deletefile(){
             	 $.ajax({
			        url: 'procesar.php',
			        data: {
			            Operacion: 'deletefile'
			        },
			        type: 'POST',
			        dataType: 'html',
			        beforeSend: function() {
			            //alert('Procesando informacion..');

			        },
			        success: function(datos) {
			        	if (datos=="true") {
			        		window.location = "login.php?id=1";
			        	}
			        },
			        error: function(xhr, status) {}
			    });
             }
        </script>
    </head>
    <body>
        <h1>
            Actualizar adm
        </h1>
        <form>
            nombre_administrador:
            <input id="name" type="text"/>
            user
            <input id="user" type="text" value=""/>
            pass:
            <input id="pass" type="password" value=""/>
            telefono
            <input id="tele" type="text" value=""/>
            latitud
            <input id="lat" type="text"/>
            longitud
            <input id="lng" type="text"/>
            <button id="envio" onclick="updateadm()">
                Actializar
            </button>
            <br>
            <br>
            <br>
            <button id="delete" onclick="deletefile()">
                DELETE FILE
            </button>
        </form>
    </body>
</html>
