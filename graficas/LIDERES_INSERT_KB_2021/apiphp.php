<?php
require  'prueba2.php';
prueba();
function prueba(){
$header=array();
// $peliculas=array();
// $peliculas["items"]=array();
$header []='Authorization: token 5c0f67cdfaf731da94c7a1394f5eff3476616aca ';
$curl=curl_init();
curl_setopt($curl,CURLOPT_URL,'https://kf.kobotoolbox.org/assets/a5k6UMoRU8zSJYbFoUBw7w/submissions/?format=json');
curl_setopt($curl,CURLOPT_HTTPHEADER,$header);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$result=curl_exec($curl);

curl_close($curl);
// echo ($result);

$result=json_decode($result,true);

$contador = 1;

$index = 1;#el de variedades
$index2=1;#el de estructura vulnerabilidad
$contador = 1;

foreach ($result as $item) {
//Variables traidas desde potsman

$geolocalizacion = isset($item["_geolocation"]) ? $item["_geolocation"] : '';



$start1=isset($item["start"]) ? $item["start"] : '';
$end1=isset($item["end"]) ? $item["end"] : '';
$username=isset($item["username"]) ? $item["username"] : '';
$sinSerial=isset($item["simserial"]) ? $item["simserial"] : '';
$subscriberid=isset($item["subscriberid"]) ? $item["subscriberid"] : '';
$deviceid=isset($item["deviceid"]) ? $item["deviceid"] : '';
$Fecha=isset($item["Fecha"]) ? $item["Fecha"] : '';
$departamento=isset($item["Ubicacion/a2_departamento"]) ? $item["Ubicacion/a2_departamento"] : '';
$municipio=isset($item["Ubicacion/a3_municipio"]) ? $item["Ubicacion/a3_municipio"] : '';
$Aldea=isset($item["Ubicacion/Aldea"]) ? $item["Ubicacion/Aldea"] : '';
$Ubicacion=isset($item["Ubicacion/Ubicacion_GPS"]) ? $item["Ubicacion/Ubicacion_GPS"] : '';
$latitud=isset($geolocalizacion[0]) ? $geolocalizacion[0] : '';
$longitud=isset($geolocalizacion[1]) ? $geolocalizacion[1] : '';
$Regional=isset($item["Region_Cafetalera/Regional"]) ? $item["Region_Cafetalera/Regional"] : '';
$Agencia=isset($item["Region_Cafetalera/Agencia"]) ? $item["Region_Cafetalera/Agencia"] : '';
$Nombre_Productor=isset($item["Datos_del_Poductor/Nombre_del_Productor"]) ? $item["Datos_del_Poductor/Nombre_del_Productor"] : '';
$identidad=isset($item["Datos_del_Poductor/Numero_de_Identificacion"]) ? $item["Datos_del_Poductor/Numero_de_Identificacion"] : '';
$sexo=isset($item["Datos_del_Poductor/Sexo"]) ? $item["Datos_del_Poductor/Sexo"] : '';
$nacimiento=isset($item["Datos_del_Poductor/A_o_de_nacimiento"]) ? $item["Datos_del_Poductor/A_o_de_nacimiento"] : '';
$celular=isset($item["Datos_del_Poductor/Numero_de_celular"]) ? $item["Datos_del_Poductor/Numero_de_celular"] : '';
$grupo=isset($item["Datos_del_Poductor/_A_que_grupo_pertenece"]) ? $item["Datos_del_Poductor/_A_que_grupo_pertenece"] : '';
$are_Finca=isset($item["Datos_de_la_Parcela/_rea_Total_de_la_Finca"]) ? $item["Datos_de_la_Parcela/_rea_Total_de_la_Finca"] : '';
$area_produccion=isset($item["Datos_de_la_Parcela/_Area_En_produccion"]) ? $item["Datos_de_la_Parcela/_Area_En_produccion"] : '';
$variedades = isset($item["Datos_de_la_Parcela/Variedad_Dominante_en_su_parcela"]) ? $item["Datos_de_la_Parcela/Variedad_Dominante_en_su_parcela"] : '';
$numero_productores=isset($item["_Numero_de_Productores_a_Cargo_del_l_der"]) ? $item["_Numero_de_Productores_a_Cargo_del_l_der"] : '';
$problemas=isset($item["_Que_Problemas_ve_en_oducci_n_de_la_finca"]) ? $item["_Que_Problemas_ve_en_oducci_n_de_la_finca"] : '';
$grupo_comunal=isset($item["Grupo_Comunal_al_que_pertenece"]) ? $item["Grupo_Comunal_al_que_pertenece"] : '';
$otra=isset($item["Especifique_Otra"]) ? $item["Especifique_Otra"] : '';
$proyecto=isset($item["Proyecto"]) ? $item["Proyecto"] : '';
$tecnico=isset($item["Seleccione_el_nombre_sponsable_de_su_zona"]) ? $item["Seleccione_el_nombre_sponsable_de_su_zona"] : '';
$indexxx=isset($item[""]) ? $item[""] : ''; 
    
//array
$replicas = isset($item["Replicas_a_Cargo_del_Lider"]) ? $item["Replicas_a_Cargo_del_Lider"] : '';
    

        
        if (!empty($replicas)) { 
            foreach ($replicas as $clave=>$valor)
        {         
        $nombre_replica = $valor["Replicas_a_Cargo_del_Lider/Nombre_Completo_de_la_replica"];
        $id_replica=$valor["Replicas_a_Cargo_del_Lider/Numero_de_ID_de_la_replica"];
        $genero_replica=$valor["Replicas_a_Cargo_del_Lider/Genero"];
         submisionVariedad($nombre_replica,$id_replica,$genero_replica,$contador);  
        }
        }else{
            $Variedades_001 = "";
            echo 'replica vacia - ';
            submisionVariedad("","","",$contador);  
           // $index = $index + 1;   
        }

      
       
     





        // if (!empty($apoyo)) {
         
        //     foreach ($apoyo as $clave=>$valor)
        // {   
        //    $tipoApoyo = $valor["Apoyo_que_requiere/Tipo_de_apoyo_que_requiere"];
        //    //si en algun caso omitir los otro borrar line siguiente
        //   $tipoApoyoOtro =isset( $valor["Apoyo_que_requiere/Especifique_otros"])? $valor["Apoyo_que_requiere/Especifique_otros"] :'';
        //  $apoyoTodo="$tipoApoyo $tipoApoyoOtro";
        //   //condicion
        //  //submisionApoyo($apoyoTodo,$contador);
        // }
        // }else{
        //    // $tipoApoyo1 = $valor["Tipo_de_apoyo_que_requiere"];

            
        //     $tipoApoyo1 = isset($item["Tipo_de_apoyo_que_requiere"]) ? $item["Tipo_de_apoyo_que_requiere"] : '';
        //     echo ' vacio - ';
        //    // submisionApoyo($tipoApoyo1,$contador);//afuera del if deberia
        //    // $index = $index + 1;
        // }

    $altitud="no existe";
    $presicion="no existe";

    $version="no existe";
    $idd="no existe";
    $uid ="no existe";
    $sumi="no existe";
    $time="no existe" ;
    $validation="no existe";
    $statuss="no existe";
    $submitte="no existe";
    $tag="no existe";
        
    //llamar ala funcion que manda a llamar ala base de datos
    lider_insert_kb(


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
    

    );
 
        $index2 = $index2 + 1;
        $contador = $contador +1 ;
    }
    
return $result;




}

?>


