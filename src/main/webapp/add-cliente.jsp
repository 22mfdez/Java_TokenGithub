<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SoloCrossfit</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
            <script>
                    function actualizarCategoria() {
        let peso = document.getElementById("peso").value;
        let categoria = "";

            if (peso > 100) {
                    categoria ="Peso pesado";
            } else if (peso === 100) {
                    categoria = "Semipesado";
            } else if (peso >= 90) {
                    categoria = "Peso medio";
            } else if (peso >= 81 ){
                    categoria = "Peso ligero medio";
            }else if (peso >= 73) {
            categoria = "Peso ligero";
            }else if (peso <= 66 || peso >66) {
            categoria = "Peso mosca";
        } 

        document.getElementById("categoriaSpan").value = categoria;
        }	
        </script>
		

	<script>	
	function validarEventos() {
		var maxEventos = 7;
		var eventosInput = document.getElementById("eventos");
		var eventos = eventosInput.value;
	
		if (eventos > maxEventos) {
		alert("Solo se permiten un m?ximo de " + maxEventos + " eventos por mes.");
		eventosInput.value = maxEventos; // Setear el valor m?ximo permitido
		}
	}	 
	</script>
  
	  
	<style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:wght@500&family=Montserrat:wght@200&display=swap');


        /* Estilos adicionales */
            .navbar {
              border-bottom: 1px solid #113d0d;
              box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);

            }
            .navbar-brand {
              font-size: 1.5rem;
              font-weight: bold;
              text-transform: uppercase;
              letter-spacing: 2px;
            }
            .nav-link {
              font-size: 1.2rem;
              font-weight: bold;
              text-transform: uppercase;
              letter-spacing: 1px;
              margin-right: 15px;
              text-align: right;
            }
            .gg-gym {
                margin-top: display ;
            }
            /* Estilos para el formulario */
            .form {
            font-family: 'Montserrat Alternates', sans-serif;
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            }

            .form h2 {
            text-align: center;
            justify-content: center;
            }

            .form-group {
            margin-bottom: 20px;
            }

            label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            }

            input[type="text"],
            input[type="number"],
            select {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            }

            select {
            height: 45px;
            }

            button[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            }

            button[type="submit"]:hover {
            background-color: #0069d9;
            }
                
            /*Estilo para la card*/
            .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 10px;
          }

          .card-title {
            font-family: 'Montserrat Alternates', sans-serif;
            font-size: 20px;
            font-weight: bold;
          }

          .card-text {
            font-size: 20px;
          }


    </style>




</head>
<body>
     <!-- Menú de navegación -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <img class="navbar-brand" src="images/unnamed.png" width="100" height="100"></img>
    
  
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Inicio <span class="sr-only"></span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Clases</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Horarios</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="add-cliente.jsp">Precios</a>
        </li>
      </ul>
    </div>
  </nav>
<div style="display: flex; margin:20px; justify-content: center;">
   <div style="width: 50%;">

  <form method="post" action="Factura" class="form">
      <h2>A&ntilde;adir nuevo cliente</h2>
        <div class="form-group">
          <label for="usuario">Usuario</label>
          <input type="text" class="form-control" id="usuario" name="usuario">
        </div>
        <div class="form-group">
          <label for="plan">Elige tu plan</label>
          <select class="form-control" id="plan" name="plan">
                <option value="princ">Principiante</option>
                <option value="inter">Intermedio</option>
                <option value="elite">Elite</option>
          </select>
        </div>
        <div class="form-group">
          <label for="peso">Peso</label>
          <input type="number" class="form-control" id="peso" name="peso" min="30" max="300" onchange="actualizarCategoria()">
          <small class="form-text text-muted">Selecciona tu peso en kilogramos</small>
        </div>
        <div class="form-group">
          <label for="categoria">Categoria</label>
          <input type="text" class="form-control" id="categoriaSpan" name="categoria">
        </div>
        <div class="form-group">
          <label for="eventos">Eventos</label>
          <input type="number" class="form-control" id="eventos" name="eventos" min="1" max="7" oninput="validarEventos()">
        </div>
        <div class="form-group">
          <label for="horas">Horas</label>
          <input type="number" class="form-control" id="horas" name="horas" min="1" max="5">
        </div>
        <button type="submit" class="btn btn-primary">A&ntilde;adir cliente</button>
  </form>
   </div>
	
    <div class="card">
  <div class="card-body">
    <h5 class="card-title">Factura emitida </h5>
    <p class="card-text">${factura}</p>
  </div>
</div>
    </div>
  <h1 style="text-align: center;">Tabla de clientes</h1>
    ${tabla}
    
    
    <br>
    <footer class="bg-dark text-white">
        <div class="container">
            <div class="row">
                    <div class="col-md-6">
                        <h4>SoloCrossfit</h4>
                        <p>Polígono Industrial La Mies Nave G46 39312 Requejada, Cantabria</p>
                    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>

	