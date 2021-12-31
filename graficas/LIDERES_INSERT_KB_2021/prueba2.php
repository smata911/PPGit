<?php
///////////////////////////////////////////////////
//falta mejorar la conexion, eliminar conexion  //
//repetidas                                    //
////////////////////////////////////////////////

//   function Genero($variable){
//       if ($variable =='1') {
            
//         $variable = "Hombre";
        
       
//       }else  {
          
//           $variable = "Mujer";
          
  
//       }
//       return ($variable);
//   }
function submisionVariedad($nombre_replica,$id_replica,$genero_replica,$contador){
      $servername = "localhost";
      $database = "ihcafefichas";
      $username = "root";
      $password = "";
      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $database);
      // Check connection
      if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
      }
      $sql = "Call lider_insert_coasociado('$nombre_replica','$id_replica','$genero_replica','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);
      
      
      
} 

function submisionApoyo($apoyo,$contador){
      $servername = "localhost";
      $database = "ihcafefichas";
      $username = "root";
      $password = "";
      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $database);
      // Check connection
      if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
      }
      $sql = "Call beneficiario_insert_apoyo_kb('$apoyo','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);    
} 

function lider_insert_kb(
      $start1,$end1,$username,
      $sinSerial,$subscriberid,$deviceid,
      $Fecha,$departamento,$municipio,
      $Aldea,$Ubicacion,$latitud,
      $longitud,$altitud,$presicion,$Regional,$Agencia,
      $Nombre_Productor,$identidad,
      $sexo,
      $nacimiento,
      $celular,
      $grupo,
      $are_Finca,
      $area_produccion,
      $variedades,
      $numero_productores,
      $problemas,
      $grupo_comunal,
      $otra,
      $proyecto,
      $tecnico,
      $index2,
      $version,
      $idd,
      $uid,
      $sumi,
      $time,
      $validation,
      $statuss,
      $submitte,
      $tag
  
){

$servername = "localhost";
$database = "ihcafefichas";
$username = "root";
$password = "";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}


// echo "Connected successfully";
$sql = "Call lider_insert_kb(
      '$start1','$end1','$username',
      '$sinSerial','$subscriberid','$deviceid',
      '$Fecha','$departamento','$municipio',
      '$Aldea','$Ubicacion','$latitud',
      '$longitud','$altitud','$presicion','$Regional','$Agencia',
      '$Nombre_Productor','$identidad',
      '$sexo',
      '$nacimiento',
      '$celular',
      '$grupo',
      '$are_Finca',
      '$area_produccion',
      '$variedades',
      '$numero_productores',
      '$problemas',
      '$grupo_comunal',
      '$otra',
      '$proyecto',
      '$tecnico',
      '$index2',
      '$version',
      '$idd',
      '$uid',
      '$sumi',
      '$time',
      '$validation',
      '$statuss',
      '$submitte',
      '$tag'
  
      )";
set_time_limit(500);
if (mysqli_query($conn,$sql)) {
      // echo "New record created successfully";
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
}

//https://es.stackoverflow.com/questions/144253/fatal-error-maximum-execution-time-of-30-seconds
// while ($datos = fgetcsv($fp , 7000 , ";")) {
//       set_time_limit(300);
//       // código de inserción
//     }
?>