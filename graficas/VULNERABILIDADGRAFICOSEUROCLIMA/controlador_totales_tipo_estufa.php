<?php
require 'modelo_grafico.php';
//$fechaano=$_POST['ano'];
//$fechainicio=$_POST['inicio'];
//$fechafin=$_POST['fin'];



$evento=$_POST['evento'];
$fechaInicioBene=$_POST['fechaInicioBene'];
$fechaFinalBene=$_POST['fechaFinalBene'];
$MG=new Modelo_Grafico();
$consulta= $MG ->TraeDatosTotalesEstufa($fechaInicioBene,$fechaFinalBene);
echo json_encode($consulta);


?>