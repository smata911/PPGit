<?php
require 'modelo_grafico.php';
//$fechaano=$_POST['ano'];
//$fechainicio=$_POST['inicio'];
//$fechafin=$_POST['fin'];



$evento=$_POST['evento'];
$fechaInicioDiv=$_POST['fechaInicioDiv'];
$fechaFinalDiv=$_POST['fechaFinalDiv'];
$MG=new Modelo_Grafico();
$consulta= $MG ->TraeDatosTotalesDiversificacion($fechaInicioDiv,$fechaFinalDiv,$evento);
echo json_encode($consulta);


?>