<?php
require 'modelo_grafico.php';
//$fechaano=$_POST['ano'];
//$fechainicio=$_POST['inicio'];
//$fechafin=$_POST['fin'];



$evento=$_POST['evento'];
$fechaInicioLid=$_POST['fechaInicioLid'];
$fechaFinalLid=$_POST['fechaFinalLid'];
$MG=new Modelo_Grafico();
$consulta= $MG ->TraeDatosTotaleslideres($fechaInicioLid,$fechaFinalLid,$evento);
echo json_encode($consulta);


?>