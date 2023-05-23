<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Solo Crossfit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link href='https://unpkg.com/css.gg@2.0.0/icons/css/gym.css' rel='stylesheet'>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Kanit:ital@1&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Kanit:ital@1&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&family=Kanit:ital@1&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Inconsolata:wght@800&family=Kanit:ital@1&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Kanit:ital@1&family=Marvel&family=Syncopate&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:wght@500&family=Montserrat:wght@200&display=swap');
    </style>
    
    
    
    
    <style>
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
        justify-content: display ;
    }



    /* Estilos para el encabezadode la web */
    .jumbotron {
        padding-top: 10%;
        text-align: center;
        font-family: 'Kanit', sans-serif;
        font-size: 50px;
        color: #020202;
       
    }


    /* Estilos para la tabla de tarifas */
    .h2 {
        font-family: 'Montserrat Alternates', sans-serif;
        font-size: 30px;
        text-align: center;
    }
 
  .table-tarifas {
    border-collapse:collapse;
    width: 100%;
    font-size: 16px;
    color: #333;
    border: 1px solid #ddd;
    background-color: #10570728;
  }
  .table-tarifas td{
    font-family: 'Montserrat Alternates', sans-serif;
    font-weight: bold;
  }
  .table-tarifas th{
    font-family: 'Montserrat Alternates', sans-serif;
    font-size: 20px;
    font-weight: bold;
  }

  .table-tarifas th, .table-tarifas td {
    padding: 12px;
    text-align: center;
    border: 1px solid #ddd;
  }

  .table-tarifas th {
    background-color: #f2f2f2;
    color: #333;
  }

  .table-tarifas tr:hover {
    background-color: #1a5c0a57;
  }
  
  /*Estilo para container*/
  .container2 {
      font-family: 'Montserrat Alternates', sans-serif;
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
          <a class="nav-link" href="#">Inicio <span class="sr-only"></span></a>
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
  
  <div class="jumbotron">
            <div class="container">
                <h1>Solo Crossfit</h1>
                <p>El lugar ideal para entrenar y mejorar tu salud.</p>
            </div>
	</div>

    <div class="container2">
            <h2>Actividades</h2>
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <img class="card-img-top" src="https://media.revistagq.com/photos/5d8df38c261a8f0008786bb1/16:9/pass/GettyImages-540503408.jpg" alt="Actividad 1">
                        <div class="card-body">
                            <h5 class="card-title">Crossfit</h5>
                            <p class="card-text">Nuestro programa de CrossFit está diseñado para ayudarte a alcanzar tus objetivos físicos a través de un entrenamiento riguroso y desafiante.</p>
                            <a href="#" class="btn btn-primary">Más información</a>
                        </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <img class="card-img-top" src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/weightlifting-training-royalty-free-image-1595245270.jpg" alt="Actividad 2">
                            <div class="card-body">
                                <h5 class="card-title">Levantamiento de pesas</h5>
                                <p class="card-text">Nuestro programa de levantamiento de pesas está diseñado para ayudarte a mejorar tu fuerza y técnica en ejercicios como el press de banca, el peso muerto y la sentadilla.</p>
                                <a href="#" class="btn btn-primary">Más información</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <img class="card-img-top" src="data:image/jpeg;base64,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" alt="Actividad 3">
                            <div class="card-body">
                                <h5 class="card-title">Clases de boxeo</h5>
                                <p class="card-text">Nuestras clases de boxeo te ayudarán a mejorar tu técnica de boxeo, tu coordinación y tu capacidad cardiovascular.</p>
                                <a href="#" class="btn btn-primary">Más información</a>
                            </div>
                        </div>
                    </div>
            </div>
                
                <br>
    
    <div class="table-responsive rounded-4">
        <table class="table-tarifas">
            <h2>Tarifas</h2>
            <thead>
                <tr>
                    <th>Tipo de membresía</th>
                    <th>Precio mensual</th>
                    <th>Acceso a</th>
                    <th>Clases incluidas</th>
                    <th>Acceso al gym</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Principiante</td>
                    <td>25€</td>
                    <td>1 actividad</td>
                    <td>2 clases por semana</td>
                    <td>No</td>
                </tr>
                <tr>
                    <td>Intermedio</td>
                    <td>30€</td>
                    <td>2 actividades</td>
                    <td>3 clases por semana</td>
                    <td>Sí</td>
                </tr>
                <tr>
                    <td>Élite</td>
                    <td>35€</td>
                    <td>Todas las actividades</td>
                    <td>5 clases por semana</td>
                    <td>Sí</td>
                </tr>
                <tr>
                    <td>Tutoría privada</td>
                    <td>9.50€</td>
                    <td>Todas las actividades</td>
                    <td>Clases ilimitadas</td>
                    <td>Sí</td>
                </tr>
                <tr>
                    <td>Entrada a competición</td>
                    <td>22€</td>
                    <td>Todas las actividades</td>
                    <td>Clases ilimitadas</td>
                    <td>Sí</td>
                </tr>
            </tbody>
        </table>
    </div>
    <br>
    <h2>Contacto</h2>
    <div class="row">
        <div class="col-md-6">
            <form>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="nombre">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email">
                </div>
                <div class="form-group">
                    <label for="mensaje">Mensaje</label>
                    <textarea class="form-control" id="mensaje" rows="5"></textarea>
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
            </div>
            <div class="col-md-6">
                    <h3>Información de contacto</h3>
                    <p><i class="fas fa-map-marker-alt"></i>Polígono Industrial La Mies Nave G46 39312 Requejada, Cantabria</p>
                    <p><i class="fas fa-phone"></i> +34 912 34 56 78</p>
                    <p><i class="fas fa-envelope"></i> info@solocrossfit.com</p>
            </div>
    </div>

	</div>
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