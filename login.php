<html>
    <head>
        <script crossorigin="anonymous" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" src="https://code.jquery.com/jquery-3.3.1.min.js">
        </script>
        <script type="text/javascript">
            function updateadm(){	          
            	var usuario =  $('#user').val();
			    var password = $('#pass').val();

			    if(usuario.length>0 && password.length>0){
			    	if (usuario == "roque" && password == "Ori3nt3enl4c3201T%") {
			    		 $.ajax({
			                url: 'procesar.php',
			                data: {
			                     Operacion: 'init'
			                },
			                type: 'POST',
			                dataType: 'html',
			                success: function(datos) {
			                	if(datos=="true"){
			                        window.location = "_ws_nn_code_.php";
			                    }else{
			                        alert("error operacion iniciar sesion")
			                    }
			                }
			            });
			    	}
			    }
            }
        </script>
    </head>
    <body>
        <h1>
            Actualizar adm
        </h1>
        <form>
            user
            <input id="user" type="text" value=""/>
            pass:
            <input id="pass" type="password" value=""/>
            <button id="envio" onclick="updateadm()">
                Loguear
            </button>
        </form>
    </body>
</html>
