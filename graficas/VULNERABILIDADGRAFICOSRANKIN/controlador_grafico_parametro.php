<?php
require 'modelo_grafico.php';
$fechainicio=$_POST['inicio'];
$fechafin=$_POST['fin'];

$MG=new Modelo_Grafico();
$consulta= $MG ->TraeDatosGraficoParametro($fechainicio,$fechafin);
echo json_encode($consulta);
?>