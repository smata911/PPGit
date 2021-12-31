<?php
require  'prueba2.php';
prueba();
function prueba(){
$header=array();
// $peliculas=array();
// $peliculas["items"]=array();
$header []='Authorization: token ';
$curl=curl_init();
curl_setopt($curl,CURLOPT_URL,'https://kc.sigihcafe.com/api/v1/data/149?format=json');
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
        $start = isset($item["start"]) ? $item["start"] : '';
        $end = isset($item["end"]) ?$item["end"]: '';
        $today = isset($item["today"]) ?$item["today"]: '';
        $username = isset($item["username"]) ? $item["username"] : '';
        $simeserial = isset($item["simserial"]) ?$item["simserial"]: '';
        $subscriberid = isset($item["subscriberid"]) ?$item["subscriberid"]: '';
        $deviceid = isset($item["deviceid"]) ?$item["deviceid"]: '';
        $Fecha_de_inicio = isset($item["Fecha_de_Inicio"]) ?$item["Fecha_de_Inicio"]: '';
        $departamento = isset($item["Ubicacion/Departamento"]) ? $item["Ubicacion/Departamento"]: '';
        $municipio = isset($item["Ubicacion/Municipio"]) ?$item["Ubicacion/Municipio"]: '';
        $aldea = isset($item["Ubicacion/Aldea"]) ?$item["Ubicacion/Aldea"]: '';
        $Ubicacion_evento = isset($item["Ubicacion/Ubicacion_del_evento"]) ?$item["Ubicacion/Ubicacion_del_evento"]: '';
        $region_Cafetalera_Regional= isset($item["Region_Cafetalera/Regional"]) ? $item["Region_Cafetalera/Regional"]: '';
        $region_Cafetalera_Agencia = isset($item["Region_Cafetalera/Agencia"]) ? $item["Region_Cafetalera/Agencia"]: '';
        $nombre_productor = isset($item["Datos_Generales_del_Productor/Nombre_del_productor"]) ?$item["Datos_Generales_del_Productor/Nombre_del_productor"]: '';
        $n_Identidad = isset($item["Datos_Generales_del_Productor/N_mero_de_Identidad"]) ? $item["Datos_Generales_del_Productor/N_mero_de_Identidad"]: '';
        $clave_productor = isset($item["Datos_Generales_del_Productor/Clave_de_productor"]) ? $item["Datos_Generales_del_Productor/Clave_de_productor"]: '';
        $sexo = isset($item["Datos_Generales_del_Productor/Sexo"]) ? $item["Datos_Generales_del_Productor/Sexo"]: '';
        $edad = isset($item["Datos_Generales_del_Productor/Edad"]) ? $item["Datos_Generales_del_Productor/Edad"]: '';
        $telefono = isset($item["Datos_Generales_del_Productor/Telefono"]) ? $item["Datos_Generales_del_Productor/Telefono"]: '';
        $finca_Pendiente = isset($item["Informacion_de_la_Finca/Pendiente"]) ? $item["Informacion_de_la_Finca/Pendiente"]: '';
        $finca_area = isset($item["Informacion_de_la_Finca/_rea_Total_de_la_Finca"]) ?$item["Informacion_de_la_Finca/_rea_Total_de_la_Finca"]: '';
        $finca_area_cafe = isset($item["Informacion_de_la_Finca/_rea_total_del_cafe"]) ? $item["Informacion_de_la_Finca/_rea_total_del_cafe"]: '';
        $finca_producion_promedio = isset($item["Informacion_de_la_Finca/Producci_n_Promedio"]) ? $item["Informacion_de_la_Finca/Producci_n_Promedio"]: '';
        $finca_Edad_cafetal = isset($item["Informacion_de_la_Finca/Edad_del_Cafetal"]) ? $item["Informacion_de_la_Finca/Edad_del_Cafetal"]: '';
        $meses_secos = isset($item["Informacion_de_la_Finca/Numero_de_meses_Secos"]) ? $item["Informacion_de_la_Finca/Numero_de_meses_Secos"]: '';
        $variedades = isset($item["Variedades"]) ? $item["Variedades"]: '';//NOTA ESTE AUN NO FUNCIONA PORQUE ES UN ARRAY

     
        // $contador = $contador +1 ;
        // foreach ($variedades as $items) {
             
        //     $Variedades_001 = isset($items["Variedades/Variedades_001"]) ? $items["Variedades/Variedades_001"] : '';
        // //    submision($Variedades_001,$index,'vulneravilidad climatica 2020',$contador,1,1,$Fecha_de_inicio,1);
        
        // echo $Variedades_001;    
        // }


        // if (!$variedades) {

        //     echo 'vacio';
        // }else{
            
        // foreach ($variedades as $clave=>$valor)
        // {
        // echo $Variedades_001 = $valor["Variedades/Variedades_001"];
        
        // }


        // }
        
        if (!empty($variedades)) {
         
            foreach ($variedades as $clave=>$valor)
        {
            
         $Variedades_001 = $valor["Variedades/Variedades_001"];
        submision($Variedades_001,'vulneravilidad climatica 2020',$contador,1,1,$Fecha_de_inicio,1);
        
    

        }
        
        }else{
            $Variedades_001 = "";
            echo 'vacio - ';
            submision($Variedades_001,'vulneravilidad climatica 2020',$contador,1,1,$Fecha_de_inicio,1);
            $index = $index + 1;
           
        }

      
       
        
         $c1_cambios_tem = isset($item["Aspectos_Limitantes/c1_cambios_tem"]) ? $item["Aspectos_Limitantes/c1_cambios_tem"]: '';
         $c1_1_practica_medida = isset($item["Aspectos_Limitantes/c1_1_practica_medida"]) ? $item["Aspectos_Limitantes/c1_1_practica_medida"] : '';
         $c2_lluvias_irregulares = isset($item["Aspectos_Limitantes/c2_lluvias_irregulares"]) ? $item["Aspectos_Limitantes/c2_lluvias_irregulares"]: '';
         $c1_2_practica_medida = isset($item["Aspectos_Limitantes/c1_2_practica_medida"]) ? $item["Aspectos_Limitantes/c1_2_practica_medida"] : '';
         $c3_aumento_lluvia = isset($item["Aspectos_Limitantes/c3_aumento_lluvia"]) ? $item["Aspectos_Limitantes/c3_aumento_lluvia"]: '';
         $c1_3_practica_medida = isset($item["Aspectos_Limitantes/c1_3_practica_medida"]) ? $item["Aspectos_Limitantes/c1_3_practica_medida"] : '';
         $c4_riesgo_huracanes = isset($item["Aspectos_Limitantes/c4_riesgo_huracanes"]) ? $item["Aspectos_Limitantes/c4_riesgo_huracanes"]: '';
         $c1_4_practica_medida = isset($item["Aspectos_Limitantes/c1_4_practica_medida"]) ? $item["Aspectos_Limitantes/c1_4_practica_medida"] : '';
         $c5_sequia_ult_anos = isset($item["Aspectos_Limitantes/c5_sequia_ult_anos"]) ? $item["Aspectos_Limitantes/c5_sequia_ult_anos"]: '';
         $c1_5_practica_medida = isset($item["Aspectos_Limitantes/c1_5_practica_medida"]) ? $item["Aspectos_Limitantes/c1_5_practica_medida"]: '';
         $c6_vientos_fuertes = isset($item["Aspectos_Limitantes/c6_vientos_fuertes"]) ? $item["Aspectos_Limitantes/c6_vientos_fuertes"]: '';
         $c1_6_practica_medida = isset($item["Aspectos_Limitantes/c1_6_practica_medida"]) ? $item["Aspectos_Limitantes/c1_6_practica_medida"] : '';
         $c7_senales_erosion = isset($item["Aspectos_Limitantes/c7_senales_erosion"]) ? $item["Aspectos_Limitantes/c7_senales_erosion"]: '';
         $c1_7_practica_medida = isset($item["Aspectos_Limitantes/c1_7_practica_medida"]) ? $item["Aspectos_Limitantes/c1_7_practica_medida"] : '';
         $c8_fetilidad_suelos = isset($item["Aspectos_Limitantes/c8_fetilidad_suelos"]) ?$item["Aspectos_Limitantes/c8_fetilidad_suelos"]: '';
         $c1_8_practica_medida = isset($item["Aspectos_Limitantes/c1_8_practica_medida"]) ? $item["Aspectos_Limitantes/c1_8_practica_medida"] : '';
         $c9_faltan_pract_suelo = isset($item["Aspectos_Limitantes/c9_faltan_pract_suelo"]) ? $item["Aspectos_Limitantes/c9_faltan_pract_suelo"]: '';
         $c1_9_practica_medida = isset($item["Aspectos_Limitantes/c1_9_practica_medida"]) ? $item["Aspectos_Limitantes/c1_9_practica_medida"] : '';
         $c10_ausencia_cober_hierbas = isset($item["Aspectos_Limitantes/c10_ausencia_cober_hierbas"]) ? $item["Aspectos_Limitantes/c10_ausencia_cober_hierbas"]: '';
         $c1_10_practica_medida = isset($item["Aspectos_Limitantes/c1_10_practica_medida"]) ? $item["Aspectos_Limitantes/c1_10_practica_medida"] : '';
         $c11_floracion_irregular = isset($item["Aspectos_Limitantes/c11_floracion_irregular"]) ? $item["Aspectos_Limitantes/c11_floracion_irregular"]: '';
         $c1_11_practica_medida = isset($item["Aspectos_Limitantes/c1_11_practica_medida"]) ? $item["Aspectos_Limitantes/c1_11_practica_medida"] : '';
         $c12_incre_caida_flores =isset($item["Aspectos_Limitantes/c12_incre_caida_flores"]) ? $item["Aspectos_Limitantes/c12_incre_caida_flores"]: '';
         $c1_12_practica_medida = isset($item["Aspectos_Limitantes/c1_12_practica_medida"]) ? $item["Aspectos_Limitantes/c1_12_practica_medida"] : '';
         $c13_incre_dano_plagas = isset($item["Aspectos_Limitantes/c13_incre_dano_plagas"]) ? $item["Aspectos_Limitantes/c13_incre_dano_plagas"]: '';
         $c1_13_practica_medida = isset($item["Aspectos_Limitantes/c1_13_practica_medida"]) ? $item["Aspectos_Limitantes/c1_13_practica_medida"] : '';
         $c14_diversificacion_cafetal = isset($item["Aspectos_Limitantes/c14_diversificacion_cafetal"]) ? $item["Aspectos_Limitantes/c14_diversificacion_cafetal"]: '';
         $c1_14_practica_medida = isset($item["Aspectos_Limitantes/c1_14_practica_medida"]) ? $item["Aspectos_Limitantes/c1_14_practica_medida"] : '';
         $c15_cafetales_pleno_sol = isset($item["Aspectos_Limitantes/c15_cafetales_pleno_sol"]) ?$item["Aspectos_Limitantes/c15_cafetales_pleno_sol"]: '';
         $c1_15_practica_medida = isset($item["Aspectos_Limitantes/c1_15_practica_medida"]) ? $item["Aspectos_Limitantes/c1_15_practica_medida"] : '';
         $c16_cafetales_viejos = isset($item["Aspectos_Limitantes/c16_cafetales_viejos"]) ? $item["Aspectos_Limitantes/c16_cafetales_viejos"]: '';
         $c1_16_practica_medida = isset($item["Aspectos_Limitantes/c1_16_practica_medida"]) ? $item["Aspectos_Limitantes/c1_16_practica_medida"] : '';
         $c17_var_existentes_resistentes =isset($item["Aspectos_Limitantes/c17_var_existentes_resistentes"]) ? $item["Aspectos_Limitantes/c17_var_existentes_resistentes"]: '';
         $c1_17_practica_medida = isset($item["Aspectos_Limitantes/c1_17_practica_medida"]) ? $item["Aspectos_Limitantes/c1_17_practica_medida"] : '';
         $c18_practica_anual_poda = isset($item["Aspectos_Limitantes/c18_practica_anual_poda"]) ? $item["Aspectos_Limitantes/c18_practica_anual_poda"]: '';
         $c1_18_practica_medida = isset($item["Aspectos_Limitantes/c1_18_practica_medida"]) ? $item["Aspectos_Limitantes/c1_18_practica_medida"] : '';
         $c19_resiembra_cafetos = isset($item["Aspectos_Limitantes/c19_resiembra_cafetos"]) ? $item["Aspectos_Limitantes/c19_resiembra_cafetos"]: '';
         $c1_19_practica_medida = isset($item["Aspectos_Limitantes/c1_19_practica_medida"]) ? $item["Aspectos_Limitantes/c1_19_practica_medida"] : '';
         $c20_produc_bajando = isset($item["Aspectos_Limitantes/c20_produc_bajando"]) ? $item["Aspectos_Limitantes/c20_produc_bajando"]: '';
         $c1_20_practica_medida = isset($item["Aspectos_Limitantes/c1_20_practica_medida"]) ? $item["Aspectos_Limitantes/c1_20_practica_medida"] : '';
         $c21_aplica_mas_200g = isset($item["Aspectos_Limitantes/c21_aplica_mas_200g"]) ? $item["Aspectos_Limitantes/c21_aplica_mas_200g"]: '';
         $c1_21_practica_medida = isset($item["Aspectos_Limitantes/c1_21_practica_medida"]) ? $item["Aspectos_Limitantes/c1_21_practica_medida"] : '';
         $c22_ausente_abono_orga = isset($item["Aspectos_Limitantes/c22_ausente_abono_orga"]) ? $item["Aspectos_Limitantes/c22_ausente_abono_orga"]: '';
         $c1_22_practica_medida = isset($item["Aspectos_Limitantes/c1_22_practica_medida"]) ? $item["Aspectos_Limitantes/c1_22_practica_medida"] : '';
         $c23_queb_fuen_sin_cobertura = isset($item["Aspectos_Limitantes/c23_queb_fuen_sin_cobertura"]) ? $item["Aspectos_Limitantes/c23_queb_fuen_sin_cobertura"]: '';
         $c1_23_practica_medida = isset($item["Aspectos_Limitantes/c1_23_practica_medida"]) ? $item["Aspectos_Limitantes/c1_23_practica_medida"] : '';
         $c24_sin_asocio_arboles = isset($item["Aspectos_Limitantes/c24_sin_asocio_arboles"]) ? $item["Aspectos_Limitantes/c24_sin_asocio_arboles"]: '';
         $c1_24_practica_medida = isset($item["Aspectos_Limitantes/c1_24_practica_medida"]) ? $item["Aspectos_Limitantes/c1_24_practica_medida"] : '';
         $c25_ausente_proc_org = isset($item["Aspectos_Limitantes/c25_ausente_proc_org"]) ? $item["Aspectos_Limitantes/c25_ausente_proc_org"]: '';
         $c1_25_practica_medida = isset($item["Aspectos_Limitantes/c1_25_practica_medida"]) ? $item["Aspectos_Limitantes/c1_25_practica_medida"] : '';
         $total = isset($item["Aspectos_Limitantes/total"]) ? $item["Aspectos_Limitantes/total"]: '';
         $Tecnicos = isset($item["Tecnico_Responsable"]) ? $item["Tecnico_Responsable"]: '';
         $__version__ = isset($item["__version__"]) ? $item["__version__"]: '';
         $_version_ = isset($item["_version_"]) ? $item["_version_"]: '';
         $_version__001 = isset($item["_version__001"]) ?$item["_version__001"]: '';
         $instanceID = isset($item["meta/instanceID"]) ? $item["meta/instanceID"]: '';
         $_geolocation =isset($item["_geolocation"]) ? $item["_geolocation"]: '';
         $latitud =  isset($_geolocation[0]) ?$_geolocation[0]: '';
         $longitud = isset($_geolocation[1]) ?$_geolocation[1]: '';   
         $Observaci_n_de_sus_visita = isset($item["Observaci_n_de_sus_visita"]) ? $item["Observaci_n_de_sus_visita"]: '';
         $index = $index + 1;
    //fin de las variables
        
        // $c2_lluvias_irregulares = $c2_lluvias_irregulares;

    //conversion a si no y quizas las preguntas        
     $c1_cambios_tem = SiNoQuizas($c1_cambios_tem);
     $c2_lluvias_irregulares= SiNoQuizas($c2_lluvias_irregulares);
     $c3_aumento_lluvia = SiNoQuizas($c3_aumento_lluvia);
     $c4_riesgo_huracanes = SiNoQuizas($c4_riesgo_huracanes);
     $c5_sequia_ult_anos = SiNoQuizas($c5_sequia_ult_anos);
     $c6_vientos_fuertes = SiNoQuizas($c6_vientos_fuertes);
     $c7_senales_erosion = SiNoQuizas($c7_senales_erosion);
     $c8_fetilidad_suelos =SiNoQuizas($c8_fetilidad_suelos);
     $c9_faltan_pract_suelo = SiNoQuizas($c9_faltan_pract_suelo);
     $c10_ausencia_cober_hierbas = SiNoQuizas($c10_ausencia_cober_hierbas);
     $c11_floracion_irregular = SiNoQuizas($c11_floracion_irregular);
     $c12_incre_caida_flores = SiNoQuizas($c12_incre_caida_flores);
     $c13_incre_dano_plagas = SiNoQuizas($c13_incre_dano_plagas);
     $c14_diversificacion_cafetal = SiNoQuizas($c14_diversificacion_cafetal);
     $c15_cafetales_pleno_sol  = SiNoQuizas($c15_cafetales_pleno_sol);
     $c16_cafetales_viejos = SiNoQuizas($c16_cafetales_viejos);
     $c17_var_existentes_resistentes = SiNoQuizas($c17_var_existentes_resistentes);
     $c18_practica_anual_poda= SiNoQuizas($c18_practica_anual_poda);
     $c19_resiembra_cafetos = SiNoQuizas($c19_resiembra_cafetos);
     $c20_produc_bajando = SiNoQuizas($c20_produc_bajando);
     $c21_aplica_mas_200g  = SiNoQuizas($c21_aplica_mas_200g );
     $c22_ausente_abono_orga  = SiNoQuizas($c22_ausente_abono_orga );
     $c23_queb_fuen_sin_cobertura = SiNoQuizas($c23_queb_fuen_sin_cobertura);
     $c24_sin_asocio_arboles  = SiNoQuizas($c24_sin_asocio_arboles );
     $c25_ausente_proc_org = SiNoQuizas($c25_ausente_proc_org);
    // //fin de la conversion
        
        
    //llamar ala funcion que manda a llamar ala base de datos
        vulnerabilidad_insert_kb($start,$end,$today,$username,$simeserial,$subscriberid,$deviceid,$Fecha_de_inicio,$departamento,$municipio,$aldea,$Ubicacion_evento,$latitud,$longitud, $region_Cafetalera_Regional,$region_Cafetalera_Agencia,
        $nombre_productor,$n_Identidad,$clave_productor,$sexo,$edad,$telefono,$finca_Pendiente,$finca_area,$finca_area_cafe, $finca_producion_promedio, $finca_Edad_cafetal, $meses_secos,
        $c1_cambios_tem,$c1_1_practica_medida,$c2_lluvias_irregulares,$c1_2_practica_medida,$c3_aumento_lluvia,$c1_3_practica_medida,$c4_riesgo_huracanes,$c1_4_practica_medida,
        $c5_sequia_ult_anos,$c1_5_practica_medida,$c6_vientos_fuertes,$c1_6_practica_medida,$c7_senales_erosion,$c1_7_practica_medida,$c8_fetilidad_suelos,$c1_8_practica_medida,
        $c9_faltan_pract_suelo,$c1_9_practica_medida,$c10_ausencia_cober_hierbas,$c1_10_practica_medida,$c11_floracion_irregular,$c1_11_practica_medida,$c12_incre_caida_flores,
        $c1_12_practica_medida,$c13_incre_dano_plagas,$c1_13_practica_medida,$c14_diversificacion_cafetal,$c1_14_practica_medida,$c15_cafetales_pleno_sol,$c1_15_practica_medida,
        $c16_cafetales_viejos,$c1_16_practica_medida,$c17_var_existentes_resistentes,$c1_17_practica_medida,$c18_practica_anual_poda,$c1_18_practica_medida,$c19_resiembra_cafetos,
        $c1_19_practica_medida,$c20_produc_bajando,$c1_20_practica_medida,$c21_aplica_mas_200g,$c1_21_practica_medida,$c22_ausente_abono_orga,$c1_22_practica_medida,
        $c23_queb_fuen_sin_cobertura,$c1_23_practica_medida,$c24_sin_asocio_arboles,$c1_24_practica_medida,$c25_ausente_proc_org,$c1_25_practica_medida,
        $total,$Tecnicos,$Observaci_n_de_sus_visita,$__version__,$_version_,$_version__001,$instanceID,$index2);

 
        $index2 = $index2 + 1;
        $contador = $contador +1 ;
        // echo $variedades;
        //  echo ("NOMBRE: "." ".$item["nombre"]." ");
        //  echo ("APELLIDO: "." ".$item["apellido"]." ");
         
        

        // echo ($item.["start"]);

       
        
    }
    
return $result;




}

?>


