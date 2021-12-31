<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.css" />
    <!-- css para grafico -->

    <title>GRAFICOS PRUEBAS</title>

    <!--mi css-->
    <!-- <link href="CSS/estilos.css" rel="stylesheet" type="text/css" />
    <link href="css/estilos.css" rel="stylesheet" type="text/css" /> -->
    <link rel="stylesheet" href="CSS/style.css">
    <!--para el menu -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>


<body>
    <div class="col-lg-17" style="padding-top:10px; ">


        <div class="card">

            <nav class="sidebar">
                <div id="btn" class="btn">
                    <span class="fas fa-bars"></span>
                </div>
                <div class="sidebar__menu">

                    <div class="text">
                        Side Menu
                    </div>
                    <ul>
                        <li class="active"><a href="../VULNERABILIDADGRAFICOSEUROCLIMA">EUROCLIMA</a></li>
                        <li>
                            <a href="#" class="feat-btn">VULNERABILIDAD
                                <span class="fas fa-caret-down first"></span>
                            </a>
                            <ul class="feat-show">

                                <li><a href="../VULNERABILIDADGRAFICOSPARAMETROS">ANÁLISIS N. ÁREA</a></li>
                                <li><a href="../VULNERABILIDADGRAFICOSGENERALES">ANÁLISIS GLOBAL</a></li>
                                <li><a href="../VULNERABILIDADGRAFICOSRANKIN">PRACTICAS A&M</a></li>
                                <li><a href="../VULNERABILIDADGRAFICOSRANKINPARAMETROS">PRACTICAS REG</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" class="serv-btn">SECCION2
                                <span class="fas fa-caret-down second"></span>
                            </a>
                            <ul class="serv-show">
                                <li><a href="#">App Design</a></li>
                                <li><a href="#">Web Design</a></li>
                            </ul>
                        </li>
                        <li><a href="#">SECCION3</a></li>
                        <li><a href="#">SECCION4</a></li>
                        <li><a href="#">SECCION5</a></li>
                        <li><a href="#">SECCION6</a></li>
                    </ul>
                </div>
            </nav>


            <h5 class="card-header" id="tituloEncabezado"> <img class=".bg-light" id="imagenes" color="write"
                    src="../img/LogoIHCAFEactual.png">
                DIAGNOSTICOS DE EUROCLIMA.</h5>


            <div class="card-body">


            </div>
            <!-- con parametrossssssssssssssssssssssssssssssssssssssssssssd-->
            <div class="card">



                <h5 class="card-header">RESULTADOS DEL ANÁLISIS VULNERABILIDADES</h5>
                <div class="card-body" id="card-evento">


                    <div class="row" id="form-anio">

                        <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <p>
                                <input class="form-control" type="date" id="fecha_inicio" min="2018-01-01"
                                    max="2022-12-31" value="2018-01-01" />


                                <label for="">Año Final</label>

                                <input class="form-control" type="date" id="fecha_final" min="2018-01-01"
                                    max="2022-12-31" />

                        </div>





                        <div class="col-lg-3" id="form-evento">

                            <label for="">Evento</label>
                            <select name="" id="select_evento" class="form-control">
                                <option Selected Disabled>Seleccione el Evento</option>
                                <option value="factores de exposicion">Factores de Exposición</option>
                                <option value="factores de impacto">Factores de Impacto</option>
                                <option value="factores de adaptabilidad">Factores de Adaptabilidad</option>


                            </select>


                        </div>

                        <div class="col-lg-3" id="form-evento">


                            <label for="">Genero</label>

                            <br>
                            <select name="" id="select_genero" class="form-control">
                                <option Selected Disabled>Seleccione</option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>


                            </select>
                        </div>



                        <div class="col-lg-2">

                            <label for="">&nbsp;</label>
                            <p>
                                <button class="botonPersonalizado" id="btnBuscar"
                                    onclick="CargarGraficosParametros()">ANALIZAR</button>

                                <input size="30" type="text" id="contador" readonly="readonly"></input>




                        </div>



                    </div>

                    <div class="d-flex justify-content-center">
                        <div class="col-lg-7">

                            <canvas id="graficopolarArea_parametro" width="600" height="500"></canvas>
                            <!--<button class ="btn btn-primary" onclick="CargarDatosBarHorizontal()">grafico horizontal</button>-->

                        </div>

                    </div>


                </div>

                <!---------------------------------------------------BENE------------------------------------------------------------------------------------------ -->
                <div class="card">





                    <h5 class="card-header">RESULTADOS DEL ANÁLISIS BENEFICIARIOS</h5>
                    <div class="card-body">


                        <div class="row">

                            <div class="col-lg-3">
                                <label for="">Fecha Inicial</label>
                                <p>
                                    <input class="form-control" type="date" id="fecha_inicio_bene" min="2018-01-01"
                                        max="2022-12-31" value="2018-01-01" />

                                    <label for="">Año Final</label>
                                <p>
                                    <input class="form-control" type="date" id="fecha_final_bene" min="2018-01-01"
                                        max="2022-12-31" />

                            </div>


                            <form class="w3-container w3-card-4" name="panelFiltro" onclick="filtroPanel(gender)">
                                <h2>Panel de Filtros</h2>

                                <input class="w3-radio" type="radio" name="gender" value="1" checked>
                                <label>Finca</label>

                                <input class="w3-radio" type="radio" name="gender" value="2">
                                <label>Vivienda</label>
                                <p>
                                    <input class="w3-radio" type="radio" name="gender" value="3">
                                    <label>otros</label>




                            </form>

                            <div class="col-lg-3" id="grupoFinca">
                                <label for="">Finca</label>
                                <select name="" id="select_evento_finca" class="form-control">

                                    <!-- <option value="1">Area Café Recorrida</option> -->
                                    <!-- <option value="2">Total de Plantas</option> -->
                                    <option value="" selected disabled>Seleccione</option>
                                    <option value="1">Tenencia</option>
                                    <option value="2">Variedades</option>
                                    <option value="3">Rubros</option>


                                </select>
                            </div>




                            <div class="col-lg-3" id="grupoVivienda">
                                <label for="">Vivienda</label>
                                <select name="" id="select_evento_vivienda" class="form-control">
                                    <option value="" selected disabled>Seleccione</option>
                                    <option value="1">Tipo Vivienda</option>
                                    <option value="2">Tipo Pared</option>
                                    <option value="3">Tipo Techo</option>

                                    <option value="4">Tipo Piso</option>
                                    <option value="5">Tipo Estufa</option>
                                    <option value="6">Tipo Servicio</option>




                                </select>
                            </div>


                            <div class="col-lg-3" id="grupoOtros">
                                <label for="">Otros</label>
                                <select name="" id="select_evento_otros" class="form-control">
                                    <option value="" selected disabled>Seleccione</option>
                                    <option value="1">Grupo Comunitario</option>
                                    <option value="2">Etnias</option>
                                    <option value="3">Genero</option>



                                </select>
                            </div>






                            <div class="col-lg-2">
                                <label for="">&nbsp;</label>
                                <p>
                                    <button class="botonPersonalizado" id="btnBuscarBeneficiario"
                                        onclick="CargarGraficosBene()">ANALIZAR</button>
                                <div class="col-lg-2">
                                    <label for=""></label>
                                    <p>
                                        <input size="30" type="text" id="contadorBene" readonly="readonly"></input>

                                </div>
                            </div>







                        </div>

                        <hr>




                        <div class="d-flex justify-content-center">
                            <div class="col-lg-7">

                                <canvas id="graficopolarArea_beneficiario" width="600" height="500"></canvas>
                                <!--<button class ="btn btn-primary" onclick="CargarDatosBarHorizontal()">grafico horizontal</button>-->

                            </div>

                        </div>


                    </div>












                </div>


                <!---------------------------------------------------LIDER------------------------------------------------------------------------------------------ -->
                <div class="card">





                    <h5 class="card-header">RESULTADOS DEL ANÁLISIS LIDER</h5>
                    <div class="card-body">


                        <div class="row">

                            <div class="col-lg-3">
                                <label for="">Fecha Inicial</label>
                                <p>
                                    <input class="form-control" type="date" id="fecha_inicio_lid" min="2018-01-01"
                                        max="2022-12-31" value="2018-01-01" />

                                    <label for="">Año Final</label>
                                <p>
                                    <input class="form-control" type="date" id="fecha_final_lid" min="2018-01-01"
                                        max="2022-12-31" />

                            </div>


                            <form class="w3-container w3-card-4" name="panelFiltroLider"
                                onclick="filtroPanelLider(genderLider)">
                                <h2>Panel de Filtros</h2>

                                <input class="w3-radio" type="radio" name="genderLider" value="1" checked>
                                <label>GENERO</label>

                                <input class="w3-radio" type="radio" name="genderLider" value="3">
                                <label>GRUPO PERTENECE</label>
                                <p>
                                    <input class="w3-radio" type="radio" name="genderLider" value="2">
                                    <label>VARIEDADES</label>
                                    <input class="w3-radio" type="radio" name="genderLider" value="4">
                                    <label>PROBLEMAS</label>



                                    <input class="w3-radio" type="radio" name="genderLider" value="5">
                                    <label>GRUPO COMUNAL</label>
                                </p>



                            </form>





                            <div class="col-lg-2">
                                <label for="">&nbsp;</label>
                                <p>
                                    <button class="botonPersonalizado" id="btnBuscarLider"
                                        onclick="CargarGraficosLid()">ANALIZAR</button>
                                <div class="col-lg-2">
                                    <label for=""></label>
                                    <p>
                                        <input size="30" type="text" id="contadorLid" readonly="readonly"></input>

                                </div>
                            </div>







                        </div>

                        <hr>




                        <div class="d-flex justify-content-center">
                            <div class="col-lg-7">

                                <canvas id="graficopolarArea_lider" width="600" height="500"></canvas>
                                <!--<button class ="btn btn-primary" onclick="CargarDatosBarHorizontal()">grafico horizontal</button>-->

                            </div>

                        </div>


                    </div>












                </div>
<!-- ---------------------------------------------------------diversificacion-------------------------------->
                <div class="card">





                    <h5 class="card-header">RESULTADOS DEL ANÁLISIS DIVERSIFICACIÓN</h5>
                    <div class="card-body">


                        <div class="row">

                            <div class="col-lg-3">
                                <label for="">Fecha Inicial</label>
                                <p>
                                    <input class="form-control" type="date" id="fecha_inicio_div" min="2018-01-01"
                                        max="2022-12-31" value="2018-01-01" />

                                    <label for="">Año Final</label>
                                <p>
                                    <input class="form-control" type="date" id="fecha_final_div" min="2018-01-01"
                                        max="2022-12-31" />

                            </div>


                            <form class="w3-container w3-card-4" name="panelFiltroDiversificacion">
                                <h2>Panel de Filtros</h2>

                                <input class="w3-radio" type="radio" name="genderDiversificacion" value="1" checked>
                                <label>GENERO</label>

                                <input class="w3-radio" type="radio" name="genderDiversificacion" value="2">
                                <label>INGRESOS</label>
                                <input class="w3-radio" type="radio" name="genderDiversificacion" value="8">
                                    <label>PORCENTAJE</label>
                                    
                                    <input class="w3-radio" type="radio" name="genderDiversificacion" value="9">
                                    <label>TIPO SUELO</label>
                                <p>
                                    <input class="w3-radio" type="radio" name="genderDiversificacion" value="4">
                                    <label>CAPACITACIÓN</label>
                                    <input class="w3-radio" type="radio" name="genderDiversificacion" value="5">
                                    <label>IMPLEMENTAR</label>
                                    <input class="w3-radio" type="radio" name="genderDiversificacion" value="6">
                                    <label>LLUVIA</label>                                    
                                    <input class="w3-radio" type="radio" name="genderDiversificacion" value="7">
                                    <label>RUCURSOS</label>                                                                       
                                </p>
                            </form>

                            <div class="col-lg-2">
                                <label for="">&nbsp;</label>
                                <p>
                                    <button class="botonPersonalizado" id="btnBuscarDiversificacion"
                                        onclick="CargarGraficosDiversificacion()">ANALIZAR</button>
                                <div class="col-lg-2">
                                    <label for=""></label>
                                    <p>
                                        <input size="30" type="text" id="contadorDiv" readonly="readonly"></input>

                                </div>
                            </div>


                        </div>

                        <hr>




                        <div class="d-flex justify-content-center">
                            <div class="col-lg-7">

                                <canvas id="graficopolarArea_diversificacion" width="600" height="500"></canvas>
                                <!--<button class ="btn btn-primary" onclick="CargarDatosBarHorizontal()">grafico horizontal</button>-->

                            </div>

                        </div>


                    </div>




                </div>






            </div>


        </div>
    </div>



</body>

</html>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->


<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>

<script>
//CargarDatosBar();
//CargarDatosBarHorizontal();
//CargarDatosGraficoPie();

$('.btn').click(function() {
    $(this).toggleClass("click");
    $('.sidebar').toggleClass("show");
});
$('.feat-btn').click(function() {
    $('nav ul .feat-show').toggleClass("show");
    $('nav ul .first').toggleClass("rotate");
});
$('.serv-btn').click(function() {
    $('nav ul .serv-show').toggleClass("show1");
    $('nav ul .second').toggleClass("rotate");
});
$('nav ul li').click(function() {
    $(this).addClass("active").siblings().removeClass("active");
});

window.onload = function() { // también puede usar window.addEventListener('load', (event) => {
    document.getElementById('grupoVivienda').style.display = "none";
    document.getElementById('grupoOtros').style.display = "none";
};

function filtroPanel(id) {
    let codigoFiltro = id.value;
    let finca = $("#select_evento_finca").val();
    let grupoFinca = 'select_evento_finca';
    let grupoVivienda = 'select_evento_vivienda';
    let grupoOtros = 'select_evento_otros';

    if (codigoFiltro == 1) {

        document.getElementById('grupoFinca').style.display = "block";
        document.getElementById('grupoVivienda').style.display = "none";
        document.getElementById('grupoOtros').style.display = "none";
        limpiarBene(grupoVivienda, grupoOtros);



    } else if (codigoFiltro == 2) {
        limpiarBene(grupoFinca, grupoOtros);
        document.getElementById('grupoVivienda').style.display = "block";
        document.getElementById('grupoFinca').style.display = "none";
        document.getElementById('grupoOtros').style.display = "none";



    } else if (codigoFiltro == 3) {
        limpiarBene(grupoFinca, grupoVivienda);
        document.getElementById('grupoOtros').style.display = "block";
        document.getElementById('grupoFinca').style.display = "none";
        document.getElementById('grupoVivienda').style.display = "none";


    } else {
        alert("filtro no disponible")
    }


}

function limpiarBene(opcion1, opcion2) {

    document.getElementById(opcion1).value = "";
    document.getElementById(opcion2).value = "";

}


function generarNumero(numero) {
    return (Math.random() * numero).toFixed(0);
}

function colorRGB() {
    var coolor = "(" + generarNumero(255) + "," + generarNumero(255) + "," + generarNumero(255) + ",0.5" + ")";
    return "rgb" + coolor;
}


////////////////////////////////////////////////////////////////////////////////
/////funciones para graficos con parametros
//TraerAnio();

function CargarDatosGraficoGenero() {
    var fechaInicio = $("#fecha_inicio").val();
    var fechaFinal = $("#fecha_final").val();
    var genero = $("#select_genero").val();
    var evento = $("#select_evento").val();



    $.ajax({
        url: 'controlador_grafico_parametro_genero.php',
        type: 'POST',
        data: {
            fechaInicio: fechaInicio,
            fechaFinal: fechaFinal,
            evento: evento,
            genero: genero
        }

    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var colores = [];
            var data = JSON.parse(resp);

            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);
                colores.push(colorRGB());
            }
            if (evento != 'factores de adaptabilidad') {
                CreaGrafico(titulo, cantidad, colores, 'bar', 'grafico de polar', 'graficopolarArea_parametro');

            } else {
                //llamar al nueva funcion para adaptabilidad ya que son mas de 6 preguntas
                CreaGraficoAdaptabilidad(titulo, cantidad, colores, 'bar', 'grafico de polar',
                    'graficopolarArea_parametro');
                // x.width = "800";
                // x.height = "600";
            }

        }


    })

}

function CargarDatosGraficoPolar() {
    var fechaInicio = $("#fecha_inicio").val();
    var fechaFinal = $("#fecha_final").val();
    var fechaMesInicio = $("#select_mes_inicial").val();
    var fechaMesFinal = $("#select_mes_final").val();
    var departamento = $("#select_departamento").val();
    var evento = $("#select_evento").val();



    $.ajax({
        url: 'controlador_grafico_parametro.php',
        type: 'POST',
        data: {
            fechaInicio: fechaInicio,
            fechaFinal: fechaFinal,
            evento: evento
        }

    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var colores = [];
            var data = JSON.parse(resp);

            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);
                colores.push(colorRGB());
            }
            if (evento != 'factores de adaptabilidad') {
                CreaGrafico(titulo, cantidad, colores, 'bar', 'grafico de polar', 'graficopolarArea_parametro');

                // document.getElementById("graficobar").style.display="none";
                //document.getElementById("graficobarhorizontal").style.display="block";
            } else {
                //llamar al nueva funcion para adaptabilidad ya que son mas de 6 preguntas
                CreaGraficoAdaptabilidad(titulo, cantidad, colores, 'bar', 'grafico de polar',
                    'graficopolarArea_parametro');
                // x.width = "800";
                // x.height = "600";
            }

        }


    })

}


function CargarDatosTotalesFactores() {
    var fechaInicioFact = $("#fecha_inicio").val();
    var fechaFinalFact = $("#fecha_final").val();

    var evento = $("#select_evento").val();
    var ruta = '';
    // if (evento!='') {
    //     ruta='controlador_totales_factores.php';

    // }

    $.ajax({
        url: 'controlador_totales_factores.php',
        type: 'POST',
        data: {
            fechaInicioFact: fechaInicioFact,
            fechaFinalFact: fechaFinalFact,
            evento: evento
        }
    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var data = JSON.parse(resp);
            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);


            }


            enviar(titulo, cantidad);
            // document.getElementById("graficobar").style.display="none";
            //document.getElementById("graficobarhorizontal").style.display="block";

        }


    })

}





function enviar(titulo, cantidad) { //no esta en uso

    document.getElementById("contador").value = titulo + cantidad;
}

function enviarBene(titulo, cantidad) { //no esta en uso

    document.getElementById("contadorBene").value = titulo + cantidad;
}

function enviarLid(titulo, cantidad) { //no esta en uso

    document.getElementById("contadorLid").value = titulo + cantidad;
}



//////////////////////////////////bene//////////////////////////////////////////////////////////////////////
function CargarDatosGraficoBeneFinca() {
    var fechaInicioBene = $("#fecha_inicio_bene").val();
    var fechaFinalBene = $("#fecha_final_bene").val();

    var evento = $("#select_evento_finca").val();
    var ruta = '';

    if (evento == 1) {
        ruta = 'controlador_grafico_tenencia.php';

    } else if (evento == 2) {
        ruta = 'controlador_grafico_variedades.php';

    } else if (evento == 3) {
        ruta = 'controlador_grafico_rubro.php';

    } else {

    }

    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioBene: fechaInicioBene,
            fechaFinalBene: fechaFinalBene,
            evento: evento
        }

    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var colores = [];
            var data = JSON.parse(resp);

            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);
                colores.push(colorRGB());
            }
            CreaGraficoPrincipal(titulo, cantidad, colores, 'bar', 'grafico de polar',
                'graficopolarArea_beneficiario');

        }

    })

    ruta = '';

}


function CargarDatosGraficoBeneVivienda() {
    var fechaInicioBene = $("#fecha_inicio_bene").val();
    var fechaFinalBene = $("#fecha_final_bene").val();

    var evento = $("#select_evento_vivienda").val();


    if (evento == 1) {
        ruta = 'controlador_grafico_tipo_vivienda.php';

    } else if (evento == 2) {
        ruta = 'controlador_grafico_tipo_pared.php';

    } else if (evento == 3) {
        ruta = 'controlador_grafico_techo.php';

    } else if (evento == 4) {
        ruta = 'controlador_grafico_piso.php';

    } else if (evento == 5) {
        ruta = 'controlador_grafico_estufa.php';

    } else if (evento == 6) {
        ruta = 'controlador_grafico_servicios.php';

    } else {

    }

    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioBene: fechaInicioBene,
            fechaFinalBene: fechaFinalBene,
            evento: evento
        }

    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var colores = [];
            var data = JSON.parse(resp);

            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);
                colores.push(colorRGB());
            }
            CreaGraficoPrincipal(titulo, cantidad, colores, 'bar', 'grafico de polar',
                'graficopolarArea_beneficiario');

        }

    })

    ruta = '';

}

function CargarDatosGraficoBeneOtros() {
    var fechaInicioBene = $("#fecha_inicio_bene").val();
    var fechaFinalBene = $("#fecha_final_bene").val();

    var evento = $("#select_evento_otros").val();
    var ruta = '';

    if (evento == 1) {
        ruta = 'controlador_grafico_grupos.php';

    } else if (evento == 2) {
        ruta = 'controlador_grafico_etnias.php';

    } else if (evento == 3) {
        ruta = 'controlador_grafico_bene_genero.php';

    } else {

    }

    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioBene: fechaInicioBene,
            fechaFinalBene: fechaFinalBene,
            evento: evento
        }

    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var colores = [];
            var data = JSON.parse(resp);

            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);
                colores.push(colorRGB());
            }
            CreaGraficoPrincipal(titulo, cantidad, colores, 'bar', 'grafico de polar',
                'graficopolarArea_beneficiario');

        }

    })

    ruta = '';

}


function CargarDatosTotalesFinca() {
    var fechaInicioBene = $("#fecha_inicio_bene").val();
    var fechaFinalBene = $("#fecha_final_bene").val();

    var evento = $("#select_evento_finca").val();

    var ruta = '';

    if (evento == 1) {
        ruta = 'controlador_totales_tenenecia.php';

    } else if (evento == 2) {
        ruta = 'controlador_totales_variedades.php';

    } else if (evento == 3) {
        ruta = 'controlador_totales_rubros.php';

    } else {

    }


    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioBene: fechaInicioBene,
            fechaFinalBene: fechaFinalBene,
            evento: evento
        }


    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];

            var data = JSON.parse(resp);
            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);


            }


            //document.getElementById("hola").value='titulo';


            enviarBene(titulo, cantidad);
            // document.getElementById("graficobar").style.display="none";
            //document.getElementById("graficobarhorizontal").style.display="block";

        }


    })

}

function CargarDatosTotalesVivienda() {
    var fechaInicioBene = $("#fecha_inicio_bene").val();
    var fechaFinalBene = $("#fecha_final_bene").val();

    var evento = $("#select_evento_vivienda").val();


    if (evento == 1) {
        ruta = 'controlador_totales_tipo_vivienda.php';

    } else if (evento == 2) {
        ruta = 'controlador_totales_tipo_pared.php';

    } else if (evento == 3) {
        ruta = 'controlador_totales_tipo_techo.php';

    } else if (evento == 4) {
        ruta = 'controlador_totales_tipo_piso.php';

    } else if (evento == 5) {
        ruta = 'controlador_totales_tipo_estufa.php';

    } else if (evento == 6) {
        ruta = 'controlador_totales_tipo_servicios.php';

    } else {

    }


    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioBene: fechaInicioBene,
            fechaFinalBene: fechaFinalBene,
            evento: evento
        }


    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];

            var data = JSON.parse(resp);
            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);


            }


            //document.getElementById("hola").value='titulo';


            enviarBene(titulo, cantidad);
            // document.getElementById("graficobar").style.display="none";
            //document.getElementById("graficobarhorizontal").style.display="block";

        }


    })

}


function CargarDatosTotalesOtros() {
    var fechaInicioBene = $("#fecha_inicio_bene").val();
    var fechaFinalBene = $("#fecha_final_bene").val();

    var evento = $("#select_evento_otros").val();
    var ruta = '';

    if (evento == 1) {
        ruta = 'controlador_totales_tipo_grupo.php';

    } else if (evento == 2) {
        ruta = 'controlador_totales_tipo_etnias.php';

    } else if (evento == 3) {
        ruta = 'controlador_totales_bene_genero.php';

    } else {

    }
    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioBene: fechaInicioBene,
            fechaFinalBene: fechaFinalBene,
            evento: evento
        }


    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];

            var data = JSON.parse(resp);
            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);


            }
            enviarBene(titulo, cantidad);
     
        }


    })

}


function CargarGraficosBene() {
    var eventoVivienda = $("#select_evento_vivienda").val();
    var eventoFinca = $("#select_evento_finca").val();
    var eventoOtros = $("#select_evento_otros").val();

    if (window.myChart) { //verificar el camvas si esta lleno o vacio para borrar y no se monte las graficas viejas
        window.myChart.clear();
        window.myChart.destroy();
    }
    if (eventoFinca) {
        //limpiar los demas
        CargarDatosGraficoBeneFinca();
        CargarDatosTotalesFinca();


    } else if (eventoVivienda) {
        //limpiar los demas
        CargarDatosGraficoBeneVivienda();
        CargarDatosTotalesVivienda();


    } else if (eventoOtros) {
        //limpiar los demas
        CargarDatosGraficoBeneOtros();

        CargarDatosTotalesOtros();
    } else {}
    //CargarDatosTotales();
    //CargarDatosTotales()
}

function CargarGraficosParametros() {

    var fechaInicio = $("#fecha_inicio").val();
    var fechaFinal = $("#fecha_final").val();

    var genero = $("#select_genero").val();
    var evento = $("#select_evento").val();


    if (window.myChart) { //verificar el camvas si esta lleno o vacio para borrar y no se monte las graficas viejas
        window.myChart.clear();
        window.myChart.destroy();
    }
    if ((evento) && (!genero)) {
        //limpiar los demas
        CargarDatosGraficoPolar();
        CargarDatosTotalesFactores();


    } else if (genero) {
        //limpiar los demas
        CargarDatosGraficoGenero();
        CargarDatosTotalesFactores();



    }




    //CargarDatosTotales()
}
/////////////////////////////////lideres 

function CargarDatosGraficoLiderGenero() {
    var fechaInicioLid = $("#fecha_inicio_lid").val();
    var fechaFinalLid = $("#fecha_final_lid").val();
    // 'input:radio[name=gender]:checked'
    var evento = $('input:radio[name=genderLider]:checked').val();
    var ruta = '';

    ruta = 'controlador_grafico_lid_genero.php';

    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioLid: fechaInicioLid,
            fechaFinalLid: fechaFinalLid,
            evento: evento
        }

    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var colores = [];
            var data = JSON.parse(resp);

            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);
                colores.push(colorRGB());
            }
            CreaGraficoPrincipal(titulo, cantidad, colores, 'bar', 'grafico de polar',
                'graficopolarArea_lider');

        }

    })

    ruta = '';

}
function CargarDatosGraficoDiversificacion(){
    var fechaInicioDiv = $("#fecha_inicio_div").val();
    var fechaFinalDiv = $("#fecha_final_div").val();
    // 'input:radio[name=gender]:checked'
    var evento = $('input:radio[name=genderDiversificacion]:checked').val();
    var ruta = '';

    ruta = 'controlador_grafico_div_todos.php';

    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioDiv: fechaInicioDiv,
            fechaFinalDiv: fechaFinalDiv,
            evento: evento
        }

    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];
            var colores = [];
            var data = JSON.parse(resp);

            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);
                colores.push(colorRGB());
            }
            CreaGraficoPrincipal(titulo, cantidad, colores, 'bar', 'grafico de polar',
                'graficopolarArea_diversificacion');

        }

    })

    ruta = '';

}
function CargarGraficosLid() {
    //var eventoVivienda = $("#select_evento_vivienda").val();
    // var eventoFinca = $("#select_evento_finca").val();
    //  var eventoOtros = $("#select_evento_otros").val();

    if (window.myChart) { //verificar el camvas si esta lleno o vacio para borrar y no se monte las graficas viejas
        window.myChart.clear();
        window.myChart.destroy();
    }
    CargarDatosGraficoLiderGenero();
    CargarDatosTotalesLideres();
    //CargarDatosTotales();
    //CargarDatosTotales()
}
function CargarGraficosDiversificacion() {
    //var eventoVivienda = $("#select_evento_vivienda").val();
    // var eventoFinca = $("#select_evento_finca").val();
    //  var eventoOtros = $("#select_evento_otros").val();
 
    
    if (window.myChart) { //verificar el camvas si esta lleno o vacio para borrar y no se monte las graficas viejas
        window.myChart.clear();
        window.myChart.destroy();
    }
    
    CargarDatosGraficoDiversificacion();
    CargarDatosTotalesDiversificacion();
    
    //CargarDatosTotalesLideres();
    //CargarDatosTotales();
    //CargarDatosTotales()
}




function CargarDatosTotalesLideres() {
    var fechaInicioLid = $("#fecha_inicio_lid").val();
    var fechaFinalLid = $("#fecha_final_lid").val();
    // 'input:radio[name=gender]:checked'
    var evento = $('input:radio[name=genderLider]:checked').val();

    var ruta = '';


    ruta = 'controlador_totales_lideres.php';

    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioLid: fechaInicioLid,
            fechaFinalLid: fechaFinalLid,
            evento: evento
        }


    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];

            var data = JSON.parse(resp);
            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);


            }


            enviarLid(titulo, cantidad);


        }


    })

}



function CargarDatosTotalesDiversificacion() {
    var fechaInicioDiv = $("#fecha_inicio_div").val();
    var fechaFinalDiv = $("#fecha_final_div").val();
    // 'input:radio[name=gender]:checked'
    var evento = $('input:radio[name=genderDiversificacion]:checked').val();
    var ruta = '';


    ruta = 'controlador_totales_diver_todos.php';

    $.ajax({
        url: ruta,
        type: 'POST',
        data: {
            fechaInicioDiv: fechaInicioDiv,
            fechaFinalDiv: fechaFinalDiv,
            evento: evento
        }


    }).done(function(resp) {
        if (resp.length > 0) {
            var titulo = [];
            var cantidad = [];

            var data = JSON.parse(resp);
            for (var i = 0; i < data.length; i++) {
                titulo.push(data[i][0]);
                cantidad.push(data[i][1]);


            }


            enviarDiv(titulo, cantidad);


        }


    })

}
function enviarDiv(titulo, cantidad) { //no esta en uso

document.getElementById("contadorDiv").value = titulo + cantidad;
}

//////////////////////////////////crear grafico

function CreaGraficoAdaptabilidad(titulo, cantidad, colores, tipo, encabezado, id) {

    var ctx = document.getElementById(id).getContext('2d');
    window.myChart = new Chart(ctx,{
            type: tipo,

            data: {

                labels: [titulo[0], titulo[3], titulo[6], titulo[9], titulo[12], titulo[15], titulo[18], titulo[21],
                    titulo[24], titulo[27], titulo[30], titulo[33], titulo[36]
                ],
                datasets: [{
                        label: ['Hay Impacto'],
                        data: [cantidad[0], cantidad[3], cantidad[6], cantidad[9], cantidad[12], cantidad[15],
                            cantidad[18], cantidad[21], cantidad[24], cantidad[27], cantidad[30], cantidad[
                                33], cantidad[36]
                        ],
                        backgroundColor: '#ED7E30',
                        borderColor: '#ED7E30',
                        borderWidth: 1
                    }, {

                        label: 'No es perceptible',
                        data: [cantidad[2], cantidad[5], cantidad[8], cantidad[11], cantidad[14], cantidad[17],
                            cantidad[20], cantidad[23], cantidad[26], cantidad[29], cantidad[32], cantidad[
                                35], cantidad[38]
                        ],
                        backgroundColor: '#FFC100',
                        borderColor: '#FFC100',
                        //hoverBackgroundColor:'red',
                        borderWidth: 1
                    }, {
                        label: 'NO hay Impacto',
                        data: [cantidad[1], cantidad[4], cantidad[7], cantidad[10], cantidad[13], cantidad[16],
                            cantidad[19], cantidad[22], cantidad[25], cantidad[28], cantidad[31], cantidad[
                                34], cantidad[37]
                        ],
                        backgroundColor: '#70AD46',
                        borderColor: '#70AD46',
                        //hoverBackgroundColor:'red',
                        borderWidth: 1


                    }

                ]
            },
            options: {

                responsive: true,
                tooltips: {
                    mode: 'index',

                },
                scales: {
                    xAxes: [{
                        stacked: true,
                    }],
                    yAxes: [{
                        stacked: true,
                        ticks: {
                            beginAtZero: true


                        }
                    }]


                }
            },


        }


    );

}

function CreaGrafico(titulo, cantidad, colores, tipo, encabezado, id) {

    var ctx = document.getElementById(id).getContext('2d');
    window.myChart = new Chart(ctx, {
            type: tipo,

            data: {

                labels: [titulo[2], titulo[5], titulo[8], titulo[11], titulo[14], titulo[17]],
                datasets: [{
                        label: ['Hay Impacto'],
                        data: [cantidad[2], cantidad[5], cantidad[8], cantidad[11], cantidad[14], cantidad[17]],
                        backgroundColor: '#ED7E30',
                        borderColor: '#ED7E30',
                        borderWidth: 1
                    }, {

                        label: 'No es perceptible',
                        data: [cantidad[1], cantidad[4], cantidad[7], cantidad[10], cantidad[13], cantidad[16]],
                        backgroundColor: '#FFC100',
                        borderColor: '#FFC100',
                        //hoverBackgroundColor:'red',
                        borderWidth: 1
                    }, {
                        label: 'NO hay Impacto',
                        data: [cantidad[0], cantidad[3], cantidad[6], cantidad[9], cantidad[12], cantidad[15]],
                        backgroundColor: '#70AD46',
                        borderColor: '#70AD46',
                        //hoverBackgroundColor:'red',
                        borderWidth: 1


                    }

                ]
            },
            options: {

                responsive: true,
                tooltips: {
                    mode: 'index',

                },
                scales: {
                    xAxes: [{
                        stacked: true,
                    }],
                    yAxes: [{
                        stacked: true,
                        ticks: {
                            beginAtZero: true


                        }
                    }]


                }
            },


        }


    );

}


function CreaGraficoPrincipal(titulo, cantidad, colores, tipo, encabezado, id) {
    

    var ctx = document.getElementById(id).getContext('2d');
    window.myChart = new Chart(ctx, {
            type: tipo,

            data: {
            labels: titulo,
            datasets: [{
                    label: encabezado,
                    data: cantidad,
                    backgroundColor: colores,
                    borderColor: colores,
                    borderWidth: 1

                }


            ]
        },
        options: {
            responsive: true,
            tooltips: {
                mode: 'index',

            },
            scales: {
                xAxes: [{
                    stacked: true,
                }],
                yAxes: [{
                    stacked: true,
                    ticks: {
                        beginAtZero: true


                    }
                }]


            }
        },


    });
}
</script>