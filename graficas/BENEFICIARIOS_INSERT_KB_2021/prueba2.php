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
function submisionVariedad($variedad,$contador){
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
      $sql = "Call beneficiario_insert_variedades_kb('$variedad','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);
      
      
      
} 
function submisionRubro($rubro,$contador){
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
      $sql = "Call beneficiario_insert_diver_rubro_kb('$rubro','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);    
} 

function submisionServicio($servicio,$contador){
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
      $sql = "Call beneficiario_insert_servicios_kb('$servicio','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);    
} 

function submisionEstufa($estufas,$contador){
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
      $sql = "Call beneficiario_insert_estufas_kb('$estufas','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);    
} 
      

function submisionActividades($actividades,$contador){
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
      $sql = "Call beneficiario_insert_actividad_kb('$actividades','$contador')";
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

function beneficiario_insert_kb(
      $start,
      $end,
      $today,
      $simSerial,
      $deviceid,
      $phoneNumber,
      $fechaInicio,
      $fechaEnvio,
      $departamento,
      $municipio,
      $aldea,
      $ubicacionEvento,
      $latitud,
      $longitud,
      $altitud,
      $presicion,
      $regional,
      $agencia,
      $productor,
      $celular,
      $identidad,
      $clave2,
      $genero,
      $edad,
      $estadoCivil,
      $escolaridad,
      $nMiembros,
      $rtn,
      $etnia,
      $grupoProductivo,
      $nomCajaRural,
      $nomCooperativa,
      $nomAsociacion,
      $nomEmpresaServicio,
      $juntaAgua,
      $orgMiembro,
      $tipoVivienda,
      $tipoDocumento,
      $tipoPared,
      $tipoTecho,
      $tipoPiso,
      $UbicacionFinca,
      $fuenteAgua,
      $nombreFuente,
      $sombra,
      $areaTotal,
      $areaConCafe,
      $plantaCafe,
      $produccionUva,
      $prodOro,
      $edadFinca,
      $tenencia,
      $fotoProductor,
      $fotoVivienda,
      $fotoFinca,
      $proyecto,
      $tecnico,
      $version,
      $_id,
      $uid,
      $sumisionTime,
      $validation,
      $notes,
      $statuss,
      $submitte,
      $index2
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
$sql = "Call beneficiario_insert_kb(
      '$start',
      '$end',
      '$today',
      '$simSerial',
      '$deviceid',
      '$phoneNumber',
      '$fechaInicio',
      '$fechaEnvio',
      '$departamento',
      '$municipio',
      '$aldea',
      '$ubicacionEvento',
      '$latitud',
      '$longitud',
      '$altitud',
      '$presicion',
      '$regional',
      '$agencia',
      '$productor',
      '$celular',
      '$identidad',
      '$clave2',
      '$genero',
      '$edad',
      '$estadoCivil',
      '$escolaridad',
      '$nMiembros',
      '$rtn',
      '$etnia',
      '$grupoProductivo',
      '$nomCajaRural',
      '$nomCooperativa',
      '$nomAsociacion',
      '$nomEmpresaServicio',
      '$juntaAgua',
      '$orgMiembro',
      '$tipoVivienda',
      '$tipoDocumento',
      '$tipoPared',
      '$tipoTecho',
      '$tipoPiso',
      '$UbicacionFinca',
      '$fuenteAgua',
      '$nombreFuente',
      '$sombra',
      '$areaTotal',
      '$areaConCafe',
      '$plantaCafe',
      '$produccionUva',
      '$prodOro',
      '$edadFinca',
      '$tenencia',
      '$fotoProductor',
      '$fotoVivienda',
      '$fotoFinca',
      '$proyecto',
      '$tecnico',
      '$version',
      '$_id',
      '$uid',
      '$sumisionTime',
      '$validation',
      '$notes',
      '$statuss',
      '$submitte',
      '$index2'
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