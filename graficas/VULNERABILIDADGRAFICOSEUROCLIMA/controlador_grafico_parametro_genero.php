<?php
require 'modelo_grafico.php';
//$fechaano=$_POST['ano'];
//$fechainicio=$_POST['inicio'];
//$fechafin=$_POST['fin'];



$genero=$_POST['genero'];
$evento=$_POST['evento'];
$fechaInicio=$_POST['fechaInicio'];
$fechaFinal=$_POST['fechaFinal'];
$MG=new Modelo_Grafico();
$consulta= $MG ->TraeDatosGraficoParametroGenero($evento,$fechaInicio,$fechaFinal,$genero);
echo json_encode($consulta);


?>