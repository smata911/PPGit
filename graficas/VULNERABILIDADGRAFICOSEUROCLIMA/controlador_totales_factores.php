<?php
require 'modelo_grafico.php';
//$fechaano=$_POST['ano'];
//$fechainicio=$_POST['inicio'];
//$fechafin=$_POST['fin'];



$evento=$_POST['evento'];
$fechaInicioFact=$_POST['fechaInicioFact'];
$fechaFinalFact=$_POST['fechaFinalFact'];
$MG=new Modelo_Grafico();
$consulta= $MG ->TraeDatosTotalesFactores($evento,$fechaInicioFact,$fechaFinalFact);
 echo json_encode($consulta);


?>