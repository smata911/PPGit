-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2021 a las 21:44:57
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ihcafefichas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `benefiario_delete_posiciones_codigo` ()  BEGIN
	#Routine body goes here...
	UPDATE tbl_bene_diversificacion_rubro SET posicion='';
	UPDATE tbl_bene_diversificacion_rubro SET codigo_rubro='';
	
	UPDATE tbl_bene_servicios_publicos SET posicion='';
	UPDATE tbl_bene_servicios_publicos SET codigo_servicio='';
	
		UPDATE tbl_bene_tipos_de_estufa SET posicion='';
	UPDATE tbl_bene_tipos_de_estufa SET codigo_estufa='';
	
	
		UPDATE tbl_bene_tipo_apoyo SET posicion='';
	UPDATE tbl_bene_tipo_apoyo SET codigo_apoyo='';
	
	
		UPDATE tbl_bene_variedades SET posicion='';
	UPDATE tbl_bene_variedades SET codigo_variedad='';
	
	UPDATE tbl_bene_actividad_productiva SET posicion='';
	UPDATE tbl_bene_actividad_productiva SET codigo_actividad='';
	
	
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_asignar_codigo_actividad` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_bene_Actividad_Productiva set codigo_actividad="1" WHERE Actividad_Productiva='productor';
UPDATE tbl_bene_Actividad_Productiva set codigo_actividad="2" WHERE Actividad_Productiva='comerciante';
UPDATE tbl_bene_Actividad_Productiva set codigo_actividad="3" WHERE Actividad_Productiva='exportador';

UPDATE tbl_bene_Actividad_Productiva set codigo_actividad="4" WHERE Actividad_Productiva='intermediario';


UPDATE tbl_bene_actividad_productiva SET Actividad_Productiva='Pendiente' WHERE Actividad_Productiva='';




end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_asignar_codigo_apoyo` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_bene_tipo_apoyo set codigo_apoyo="1" WHERE Tipo_de_apoyo_que_requiere='Sistema_Agrofo';
UPDATE tbl_bene_tipo_apoyo set codigo_apoyo="2" WHERE Tipo_de_apoyo_que_requiere='Certificacion';
UPDATE tbl_bene_tipo_apoyo set codigo_apoyo="3" WHERE Tipo_de_apoyo_que_requiere='Renovacion_fin';
UPDATE tbl_bene_tipo_apoyo set codigo_apoyo="4" WHERE Tipo_de_apoyo_que_requiere='SAF/Ganadería';
UPDATE tbl_bene_tipo_apoyo set codigo_apoyo="5" WHERE Tipo_de_apoyo_que_requiere='SAF/Granos_bás';
UPDATE tbl_bene_tipo_apoyo set codigo_apoyo="6" WHERE Tipo_de_apoyo_que_requiere LIKE 'Otros%';
UPDATE tbl_bene_tipo_apoyo set codigo_apoyo="7" WHERE Tipo_de_apoyo_que_requiere='';


		#UPDATE tbl_bene_tipo_apoyo set posicion=@ii WHERE index1=@iii;
	#elseif @ii=2 then
	#UPDATE tbl_bene_tipo_apoyo set posicion=1 WHERE sumision=@iii;
	#UPDATE tbl_bene_tipo_apoyo set posicion=2 WHERE sumision=@iii+1;
	#end if;
	
		#SET @ii = @ii + 1;
		#end while;

#SET @i = @i + 1;
#SET @iii = @iii + 1;
#END while;

 ##set @Sumision=(SELECT COUNT(sumision) from vista_vulnerabilidad_Tipo_de_apoyo_que_requiere GROUP BY sumision);
 

#end if;
 


end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_asignar_codigo_estufa
` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_bene_tipos_de_estufa set codigo_estufa="1" WHERE Tipo_estufa='estufa_gas';
UPDATE tbl_bene_tipos_de_estufa set codigo_estufa="2" WHERE Tipo_estufa='estufa_electri';
UPDATE tbl_bene_tipos_de_estufa set codigo_estufa="3" WHERE Tipo_estufa='Hornilla';
UPDATE tbl_bene_tipos_de_estufa set codigo_estufa="4" WHERE Tipo_estufa='Ecofogon';
UPDATE tbl_bene_tipos_de_estufa set codigo_estufa="5" WHERE Tipo_estufa='';




end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_asignar_codigo_rubro` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="1" WHERE rubros_que_posee='Maderables';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="2" WHERE rubros_que_posee='Frutales';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="3" WHERE rubros_que_posee='Musaceas';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="4" WHERE rubros_que_posee='Cerdos';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="5" WHERE rubros_que_posee='Gallinas';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="6" WHERE rubros_que_posee='Peces';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="7" WHERE rubros_que_posee='Abejas';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="8" WHERE rubros_que_posee='Ganado';

UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="9" WHERE rubros_que_posee='Ninguno';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="10" WHERE rubros_que_posee='Granos_básicos';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="11" WHERE rubros_que_posee='';

UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="12" WHERE rubros_que_posee='Caña_de_azucar';
UPDATE tbl_bene_diversificacion_rubro set codigo_rubro="13" WHERE rubros_que_posee='Turismo';

#UPDATE tbl_bene_diversificacion_rubro set posicion="2"
 #WHERE 
# (SELECT sumision from tbl_bene_diversificacion_rubro GROUP BY sumision HAVING COUNT(#sumision=2) );

#set @maximo=(SELECT COUNT(index1) from vista_vulnerabilidad_rubros_que_posee LIMIT 1);
#set @i=0;
#set @ii=1;
#set @iii=1;
#WHILE @iii<@maximo DO 
##recorrer la tabla
#SELECT index1,sumision,posicion
  #into @index1,@sumision,@posicion
	#from ihcafefichas.vista_vulnerabilidad_rubros_que_posee vf
  #WHERE index1 =(@iii+1);
	
	
	#set @siguiente=(SELECT sumision from ihcafefichas.vista_vulnerabilidad_rubros_que_posee vf
#  WHERE index1 =@iii+2);
	
	#if @sumision<>@siguiente then
	#UPDATE tbl_bene_diversificacion_rubro set posicion=1 WHERE index1=@iii;
	#UPDATE tbl_bene_diversificacion_rubro set posicion=2 WHERE index1=@iii+1;
#end if;
	#set @contar=(SELECT COUNT(sumision) from tbl_bene_diversificacion_rubro 
	#WHERE sumision=@iii LIMIT 1);

		#WHILE @ii<@contar DO 
	#if @ii=1 then
	
		#UPDATE tbl_bene_diversificacion_rubro set posicion=@ii WHERE index1=@iii;
	#elseif @ii=2 then
	#UPDATE tbl_bene_diversificacion_rubro set posicion=1 WHERE sumision=@iii;
	#UPDATE tbl_bene_diversificacion_rubro set posicion=2 WHERE sumision=@iii+1;
	#end if;
	
		#SET @ii = @ii + 1;
		#end while;

#SET @i = @i + 1;
#SET @iii = @iii + 1;
#END while;

 ##set @Sumision=(SELECT COUNT(sumision) from vista_vulnerabilidad_rubros_que_posee GROUP BY sumision);
 

#end if;
 


end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_asignar_codigo_servicio` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_bene_servicios_publicos set codigo_servicio="1" WHERE Servicios_publicos='agua_entubada';
UPDATE tbl_bene_servicios_publicos set codigo_servicio="2" WHERE Servicios_publicos='Electricidad';
UPDATE tbl_bene_servicios_publicos set codigo_servicio="3" WHERE Servicios_publicos='Alcantarillado';
UPDATE tbl_bene_servicios_publicos set codigo_servicio="4" WHERE Servicios_publicos='Letrina';
UPDATE tbl_bene_servicios_publicos set codigo_servicio="5" WHERE Servicios_publicos='';




end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_asignar_codigo_variedad` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_bene_variedades set codigo_variedad="1" WHERE Variedades_Presentes='Catimor';
UPDATE tbl_bene_variedades set codigo_variedad="2" WHERE Variedades_Presentes='Catuai';
UPDATE tbl_bene_variedades set codigo_variedad="3" WHERE Variedades_Presentes='Caturra';
UPDATE tbl_bene_variedades set codigo_variedad="4" WHERE Variedades_Presentes='Ihcafe_90';
UPDATE tbl_bene_variedades set codigo_variedad="5" WHERE Variedades_Presentes='Lempira';
UPDATE tbl_bene_variedades set codigo_variedad="6" WHERE Variedades_Presentes='Pacas';
UPDATE tbl_bene_variedades set codigo_variedad="7" WHERE Variedades_Presentes='Parainema';
UPDATE tbl_bene_variedades set codigo_variedad="8" WHERE Variedades_Presentes='Típica';

UPDATE tbl_bene_variedades set codigo_variedad="9" WHERE Variedades_Presentes='Icatu';
UPDATE tbl_bene_variedades set codigo_variedad="10" WHERE Variedades_Presentes='Obata';

UPDATE tbl_bene_variedades set codigo_variedad="11" WHERE Variedades_Presentes='';

UPDATE tbl_bene_variedades set codigo_variedad="12" WHERE Variedades_Presentes='Pacamara';
UPDATE tbl_bene_variedades set codigo_variedad="13" WHERE Variedades_Presentes='Bourbon';
UPDATE tbl_bene_variedades set codigo_variedad="14" WHERE Variedades_Presentes='ANACAFE_14';
UPDATE tbl_bene_variedades set codigo_variedad="15" WHERE Variedades_Presentes='Maragogipe';
UPDATE tbl_bene_variedades set codigo_variedad="16" WHERE Variedades_Presentes='Geisha';
UPDATE tbl_bene_variedades set codigo_variedad="17" WHERE Variedades_Presentes='H27';
UPDATE tbl_bene_variedades set codigo_variedad="18" WHERE Variedades_Presentes='Otra';
#UPDATE tbl_bene_variedades set posicion="2"
 #WHERE 
# (SELECT sumision from tbl_bene_variedades GROUP BY sumision HAVING COUNT(#sumision=2) );

#set @maximo=(SELECT COUNT(index1) from vista_vulnerabilidad_Variedades_Presentes LIMIT 1);
#set @i=0;
#set @ii=1;
#set @iii=1;
#WHILE @iii<@maximo DO 
##recorrer la tabla
#SELECT index1,sumision,posicion
  #into @index1,@sumision,@posicion
	#from ihcafefichas.vista_vulnerabilidad_Variedades_Presentes vf
  #WHERE index1 =(@iii+1);
	
	
	#set @siguiente=(SELECT sumision from ihcafefichas.vista_vulnerabilidad_Variedades_Presentes vf
#  WHERE index1 =@iii+2);
	
	#if @sumision<>@siguiente then
	#UPDATE tbl_bene_variedades set posicion=1 WHERE index1=@iii;
	#UPDATE tbl_bene_variedades set posicion=2 WHERE index1=@iii+1;
#end if;
	#set @contar=(SELECT COUNT(sumision) from tbl_bene_variedades 
	#WHERE sumision=@iii LIMIT 1);

		#WHILE @ii<@contar DO 
	#if @ii=1 then
	
		#UPDATE tbl_bene_variedades set posicion=@ii WHERE index1=@iii;
	#elseif @ii=2 then
	#UPDATE tbl_bene_variedades set posicion=1 WHERE sumision=@iii;
	#UPDATE tbl_bene_variedades set posicion=2 WHERE sumision=@iii+1;
	#end if;
	
		#SET @ii = @ii + 1;
		#end while;

#SET @i = @i + 1;
#SET @iii = @iii + 1;
#END while;

 ##set @Sumision=(SELECT COUNT(sumision) from vista_vulnerabilidad_Variedades_Presentes GROUP BY sumision);
 

#end if;
 


end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_cursor_apoyo_vacio_euroclima` ()  BEGIN
DECLARE ind,sumi VARCHAR(10);
Declare exit_loop Boolean DEFAULT false;
DECLARE  array cursor for
			SELECT _index,Proyecto_beneficia from tbl_bene_ficha_productores 
			WHERE Proyecto_beneficia='Euroclima';
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN array;
	m_loop: loop
		FETCH from array into ind,sumi;
			
#CASE 
	#WHEN sumi=1 THEN
		UPDATE tbl_bene_tipo_apoyo SET Tipo_de_apoyo_que_requiere='Sistema_Agrofo' WHERE index1=ind 
		and Tipo_de_apoyo_que_requiere="";
		
		#else
		#SELECT 'no aplica' as mensaje; 
#END CASE;

		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE array;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_cursor_posicion_actividad` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_bene_actividad_productiva GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_actividad_productiva SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_actividad_productiva SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_actividad_productiva SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_actividad_productiva SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_actividad_productiva SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_actividad_productiva SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_actividad_productiva SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_actividad_productiva SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_actividad_productiva SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_actividad_productiva SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_actividad_productiva SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_actividad_productiva SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_actividad_productiva SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_actividad_productiva SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_actividad_productiva SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_actividad_productiva SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_actividad_productiva SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_actividad_productiva SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_actividad_productiva SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_actividad_productiva SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_actividad_productiva SET posicion=8 WHERE index1=ind+7;
		
		WHEN sumi=9 THEN
		UPDATE tbl_bene_actividad_productiva SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_actividad_productiva SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_actividad_productiva SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_actividad_productiva SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_actividad_productiva SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_actividad_productiva SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_actividad_productiva SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_actividad_productiva SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_actividad_productiva SET posicion=9 WHERE index1=ind+8;
		
		
		
		
		
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_cursor_posicion_apoyo` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_bene_apoyo GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		
		WHEN sumi=9 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
		
		
WHEN sumi=10 THEN
			UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
WHEN sumi=11 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
		UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;
WHEN sumi=12 THEN
	UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
					
		UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;
			
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
WHEN sumi=13 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
						UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;
			
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
				UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
			
		
				
WHEN sumi=14 THEN
UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
				UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
			
		
WHEN sumi=15 THEN
	UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
				
				UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_tipo_apoyo SET posicion=15 WHERE index1=ind+14;
		
		
WHEN sumi=16 THEN
	UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;	
					UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_tipo_apoyo SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_bene_tipo_apoyo SET posicion=16 WHERE index1=ind+15;
		
WHEN sumi=17 THEN
		UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
				
							UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_tipo_apoyo SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_bene_tipo_apoyo SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_bene_tipo_apoyo SET posicion=17 WHERE index1=ind+16;
		
WHEN sumi=18 THEN
	UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
				
									UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_tipo_apoyo SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_bene_tipo_apoyo SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_bene_tipo_apoyo SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_bene_tipo_apoyo SET posicion=18 WHERE index1=ind+17;
		
WHEN sumi=19 THEN
	UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;	
				
					UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_tipo_apoyo SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_bene_tipo_apoyo SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_bene_tipo_apoyo SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_bene_tipo_apoyo SET posicion=18 WHERE index1=ind+17;
		UPDATE tbl_bene_tipo_apoyo SET posicion=19 WHERE index1=ind+18;
		
		
WHEN sumi=20 THEN
UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
				
							UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_tipo_apoyo SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_bene_tipo_apoyo SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_bene_tipo_apoyo SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_bene_tipo_apoyo SET posicion=18 WHERE index1=ind+17;
		UPDATE tbl_bene_tipo_apoyo SET posicion=19 WHERE index1=ind+18;
		UPDATE tbl_bene_tipo_apoyo SET posicion=20 WHERE index1=ind+19;
		
WHEN sumi=21 THEN
UPDATE tbl_bene_tipo_apoyo SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipo_apoyo SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipo_apoyo SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipo_apoyo SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipo_apoyo SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipo_apoyo SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_tipo_apoyo SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_tipo_apoyo SET posicion=10 WHERE index1=ind+9;
				
				UPDATE tbl_bene_tipo_apoyo SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_tipo_apoyo SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_tipo_apoyo SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_bene_tipo_apoyo SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_tipo_apoyo SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_bene_tipo_apoyo SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_bene_tipo_apoyo SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_bene_tipo_apoyo SET posicion=18 WHERE index1=ind+17;
		UPDATE tbl_bene_tipo_apoyo SET posicion=19 WHERE index1=ind+18;
		UPDATE tbl_bene_tipo_apoyo SET posicion=20 WHERE index1=ind+19;
		UPDATE tbl_bene_tipo_apoyo SET posicion=21 WHERE index1=ind+20;
		
		
		
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_cursor_posicion_estufa` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_bene_estufa GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipos_de_estufa SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipos_de_estufa SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_bene_tipos_de_estufa SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_tipos_de_estufa SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_tipos_de_estufa SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_tipos_de_estufa SET posicion=8 WHERE index1=ind+7;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_cursor_posicion_rubro` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_bene_diversificacion_rubro GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=8 WHERE index1=ind+7;
		
					WHEN sumi=9 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=9 WHERE index1=ind+8;
		
							WHEN sumi=10 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=10 WHERE index1=ind+9;
		
									WHEN sumi=11 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=10 WHERE index1=ind+9;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=11 WHERE index1=ind+10;
		
		
											WHEN sumi=12 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=10 WHERE index1=ind+9;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=11 WHERE index1=ind+10;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=12 WHERE index1=ind+11;
		
													WHEN sumi=13 THEN
		UPDATE tbl_bene_diversificacion_rubro SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_diversificacion_rubro SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_diversificacion_rubro SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=10 WHERE index1=ind+9;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=11 WHERE index1=ind+10;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_diversificacion_rubro SET posicion=13 WHERE index1=ind+12;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_cursor_posicion_servicio` ()  BEGIN
DECLARE ind,sumi VARCHAR(30);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_bene_servicios_publico GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
		
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_servicios_publicos SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_servicios_publicos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_servicios_publicos SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_servicios_publicos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_servicios_publicos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_servicios_publicos SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_servicios_publicos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_servicios_publicos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_servicios_publicos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_servicios_publicos SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_servicios_publicos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_servicios_publicos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_servicios_publicos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_servicios_publicos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_servicios_publicos SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_servicios_publicos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_servicios_publicos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_servicios_publicos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_servicios_publicos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_servicios_publicos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_servicios_publicos SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_bene_servicios_publicos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_servicios_publicos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_servicios_publicos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_servicios_publicos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_servicios_publicos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_servicios_publicos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_servicios_publicos SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_servicios_publicos SET posicion=8 WHERE index1=ind+7;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_cursor_posicion_vrdes` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_bene_variedades GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
		
		
	WHILE @i<sumi DO
	UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind+i;
			
	set @i=@i+1;
	end while;

			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_variedades SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_variedades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_variedades SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_variedades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_variedades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_variedades SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_variedades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_variedades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_variedades SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_variedades SET posicion=8 WHERE index1=ind+7;
		
			WHEN sumi=9 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_variedades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_variedades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_variedades SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_variedades SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_variedades SET posicion=9 WHERE index1=ind+8;
		
					WHEN sumi=10 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_variedades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_variedades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_variedades SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_variedades SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_variedades SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_variedades SET posicion=10 WHERE index1=ind+9;
				
				######################################################3
				######################################################
				##########faltan mas#################################
				
									WHEN sumi=17 THEN
		UPDATE tbl_bene_variedades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_bene_variedades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_bene_variedades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_bene_variedades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_bene_variedades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_bene_variedades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_bene_variedades SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_bene_variedades SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_bene_variedades SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_bene_variedades SET posicion=10 WHERE index1=ind+9;
				UPDATE tbl_bene_variedades SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_bene_variedades SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_bene_variedades SET posicion=13 WHERE index1=ind+12;		
		UPDATE tbl_bene_variedades SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_bene_variedades SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_bene_variedades SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_bene_variedades SET posicion=17 WHERE index1=ind+16;
				
		
		else
		SELECT 'no aplica' as mensaje; 
END CASE;

		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_delete_data` ()  NO SQL
BEGIN
DELETE from tbl_bene_variedades;
alter TABLE tbl_bene_variedades AUTO_INCREMENT=1;

DELETE from tbl_bene_actividad_productiva;
alter TABLE tbl_bene_actividad_productiva AUTO_INCREMENT=1;

DELETE FROM tbl_bene_tipo_apoyo;
alter TABLE tbl_bene_tipo_apoyo AUTO_INCREMENT=1;

DELETE from tbl_bene_servicios_publicos;
alter TABLE tbl_bene_servicios_publicos AUTO_INCREMENT=1;

DELETE from tbl_bene_ficha_productores;
alter TABLE tbl_bene_ficha_productores AUTO_INCREMENT=1;

DELETE from tbl_bene_tipos_de_estufa;
alter TABLE tbl_bene_tipos_de_estufa AUTO_INCREMENT=1;

DELETE from tbl_bene_diversificacion_rubro;
alter TABLE tbl_bene_diversificacion_rubro AUTO_INCREMENT=1;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_ingreso_productor` ()  BEGIN
	#Routine body goes here...
	
	START TRANSACTION;
	
	SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from ihcafefichas.vista_bene_ficha limit 1);

WHILE @contar<@t_repetir DO
set @can_productor=(SELECT COUNT(p.cod_identidad) from ihcafemonitoreo.tbl_bene_productor p);

  SELECT vf.Num_Identidad,vf.Name_productor,vf.Clave_productor,vf.Genero,
	vf.Celular,vf.Departamento,vf.Municipio,vf.Aldea_Comunidad,vf.Agencia,vf.Id_etnica
	
  into @numero_identidad,@nombre_productor,@clave,@sexo,@telefono,@departamento,@municipio,
	@aldea,@agencia,@etnia
	from ihcafefichas.vista_bene_ficha vf
  WHERE n =(@contar+1) ;
  ##verificar existencia en tbl productor		
  #buscar los codigos de sexo,municipio,agencia
	
	
  SELECT g.cod_genero into @codgenero from ihcafemonitoreo.tbl_general_genero g 
	WHERE g.abreviatura2=LOWER(@sexo)
  LIMIT 1;
	
	SELECT gm.cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	INNER JOIN ihcafemonitoreo.tbl_general_departamento gd on gm.cod_depart=gd.cod_depart
	WHERE gd.departamento=@departamento and gm.municipio=@municipio LIMIT 1;

	#SELECT cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	#WHERE gm.cod_municipio=@municipio LIMIT 1; 	
	
	SELECT a.cod_agencia INTO @codagencia from ihcafemonitoreo.tbl_general_agencia a
	WHERE a.agencia2=@agencia LIMIT 1;
	
    SELECT e.cod_etnias into @codEtnia from ihcafemonitoreo.tbl_general_etnias e WHERE etnias=@etnia LIMIT 1;
		
		if not EXISTS(SELECT gp.cod_identidad from ihcafemonitoreo.tbl_bene_productor gp 
				WHERE gp.cod_identidad=@numero_identidad) THEN
		#-------------------------------------------------------		
		#insertar falta el grado de escolaridad y estado civil.-
		#--------------------------------------------------------
				INSERT into ihcafemonitoreo.tbl_bene_productor
					(cod_identidad,clave,nombre,cod_genero,celular,nacimiento,cod_pais,cod_municipio,cod_agencia,cod_etnias) 
					VALUE(@numero_identidad,@clave,@nombre_productor,@codgenero,@telefono,NULL,'137',@codigoMunicipio,
					@codagencia,@codEtnia);
		
		
		elseif EXISTS(SELECT gp.cod_identidad 
		from ihcafemonitoreo.tbl_general_productor gp
		WHERE gp.cod_identidad=@numero_identidad) THEN
		SELECT 'datos repetidos' as mensaje;
	
	
end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_insert_actividad_kb` (IN `pactividad` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_bene_actividad_productiva(index1,Actividad_Productiva,sumision,parent_index,submission__id,codigo_actividad,posicion) 
	SELECT NULL,pactividad,psumision,'','','',''
	WHERE not EXISTS (SELECT ta.Actividad_Productiva from tbl_bene_actividad_productiva ta WHERE sumision=psumision and Actividad_Productiva=pactividad LIMIT 1);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_insert_apoyo_kb` (IN `papoyo` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...INSERT INTO 
	INSERT INTO tbl_bene_tipo_apoyo(index1,Tipo_de_apoyo_que_requiere,sumision,Especifique_otros,parent_index,codigo_apoyo,posicion)
	SELECT NULL,papoyo,psumision,'','','',''
	WHERE not EXISTS (SELECT ta.Tipo_de_apoyo_que_requiere from tbl_bene_tipo_apoyo ta WHERE sumision=psumision and Tipo_de_apoyo_que_requiere=papoyo LIMIT 1);
	
	#segunda forma 

#if not EXISTS (SELECT ta.Tipo_de_apoyo_que_requiere from tbl_bene_tipo_apoyo ta WHERE sumision=psumision and Tipo_de_apoyo_que_requiere=papoyo LIMIT 1) then
#INSERT INTO tbl_bene_tipo_apoyo(index1,Tipo_de_apoyo_que_requiere,sumision,Especifique_otros,parent_index,codigo_apoyo,posicion) VALUES(NULL,papoyo,psumision,'','','','');
#end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_insert_diver_rubro_kb` (IN `prubro` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_bene_diversificacion_rubro(index1,rubros_que_posee,sumision,parent_index,submission__id,codigo_rubro,posicion)

SELECT NULL,prubro,psumision,'','','',''
	WHERE not EXISTS (SELECT ta.rubros_que_posee from tbl_bene_diversificacion_rubro ta 
	WHERE sumision=psumision and ta.rubros_que_posee=prubro LIMIT 1);




END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_insert_estufas_kb` (IN `pestufa` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_bene_tipos_de_estufa(index1,tipo_estufa,sumision,parent_index,submission__id,codigo_estufa,posicion) 

SELECT NULL,pestufa,psumision,'','','',''
	WHERE not EXISTS (SELECT ta.Tipo_estufa from tbl_bene_tipos_de_estufa ta 
	WHERE sumision=psumision and ta.Tipo_estufa=pestufa LIMIT 1);




END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_insert_kb` (IN `startt` VARCHAR(25), IN `endd` VARCHAR(25), IN `today` VARCHAR(25), IN `simSerial` VARCHAR(40), IN `devideId` VARCHAR(50), IN `phoneNumber` VARCHAR(50), IN `fechavisita` VARCHAR(10), IN `fechaEnvio` VARCHAR(10), IN `departamento` VARCHAR(18), IN `municipio` VARCHAR(50), IN `aldea` VARCHAR(60), IN `ubicacion` VARCHAR(40), IN `latitud` VARCHAR(10), IN `longitud` VARCHAR(10), IN `altitud` VARCHAR(10), IN `presicion` VARCHAR(10), IN `regional` VARCHAR(30), IN `agencia` VARCHAR(60), IN `productor` VARCHAR(60), IN `celular` VARCHAR(15), IN `identidad` VARCHAR(20), IN `clave` VARCHAR(15), IN `genero` VARCHAR(15), IN `edad` VARCHAR(3), IN `estado_civil` VARCHAR(15), IN `escolaridad` VARCHAR(3), IN `nFmiliares` VARCHAR(3), IN `rtn` VARCHAR(20), IN `etnia` VARCHAR(35), IN `grupoComunitario` VARCHAR(30), IN `nomCajaRural` VARCHAR(45), IN `nomCooperativa` VARCHAR(45), IN `nomAsociacion` VARCHAR(50), IN `nomEmpresaServicio` VARCHAR(50), IN `juntaAgua` VARCHAR(50), IN `orgCafetalera` VARCHAR(25), IN `tipoVivienda` VARCHAR(35), IN `tipoDocumento` VARCHAR(40), IN `tipoPared` VARCHAR(40), IN `tipoTecho` VARCHAR(40), IN `tipoPiso` VARCHAR(40), IN `ubicacionFinca` VARCHAR(100), IN `fuenteAgua` VARCHAR(2), IN `nombreFuente` VARCHAR(50), IN `sombra` VARCHAR(4), IN `areaTotal` VARCHAR(8), IN `areConCafe` VARCHAR(8), IN `numPlantasCafe` VARCHAR(8), IN `qqUva` VARCHAR(8), IN `qqOro` VARCHAR(8), IN `edadFinca` VARCHAR(3), IN `tenencia` VARCHAR(50), IN `fotoProductor` VARCHAR(255), IN `fotoVivienda` VARCHAR(255), IN `fotoFinca` VARCHAR(255), IN `proyecto` VARCHAR(50), IN `tecnico` VARCHAR(50), IN `versison` VARCHAR(40), IN `id` VARCHAR(40), IN `uuid` VARCHAR(50), IN `sumision` VARCHAR(50), IN `validation` VARCHAR(50), IN `notes` VARCHAR(10), IN `statuss` VARCHAR(20), IN `submitte` VARCHAR(40), IN `indexx` VARCHAR(20))  BEGIN

INSERT INTO tbl_bene_ficha_productores VALUES(
null,
startt,
endd,
today,
simSerial,
devideId,
phoneNumber,
 fechavisita,
fechaEnvio,
 departamento,
municipio,
aldea,
ubicacion,
 latitud,
longitud,
 altitud,
presicion,
 regional,
agencia,
productor,
celular,
identidad,
 clave,
 genero,
edad,
 estado_civil,
escolaridad,
nFmiliares,
 rtn,
etnia,
grupoComunitario,
nomCajaRural,
nomCooperativa,
nomAsociacion,
nomEmpresaServicio,
juntaAgua,
orgCafetalera,
'ninguna',
tipoVivienda ,
tipoDocumento,
tipoPared,
tipoTecho,
tipoPiso,
0,
0,
 ubicacionFinca,
 fuenteAgua,
 nombreFuente,
 sombra,
 areaTotal,
areConCafe,
 numPlantasCafe,
qqUva,
qqOro,
 edadFinca,
 tenencia ,
0,
0,
fotoProductor,
fotoVivienda,
fotoFinca,
0,
proyecto,
tecnico,
versison,
id,
uuid,
sumision,
validation,
notes,
statuss,
submitte,
0,
indexx
);


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_insert_servicios_kb` (IN `pservicios` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_bene_servicios_publicos(index1,Servicios_publicos,sumision,parent_index,submission__id,codigo_servicio,posicion) 

SELECT NULL,pservicios,psumision,'beneficiario kb','','',''
	WHERE not EXISTS (SELECT ta.Servicios_publicos from tbl_bene_servicios_publicos ta 
	WHERE sumision=psumision and ta.Servicios_publicos=pservicios LIMIT 1);


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_insert_variedades_kb` (IN `pvariedad` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_bene_variedades(index1,Variedades_Presentes,sumision,parent_index,submission__id,codigo_variedad,posicion) 

SELECT NULL,pvariedad,psumision,'beneficiario kb','','',''
	WHERE not EXISTS (SELECT ta.Variedades_Presentes from tbl_bene_variedades ta 
	WHERE sumision=psumision and ta.Variedades_Presentes=pvariedad LIMIT 1);


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_tecnico_sin_guion` ()  BEGIN
	#UPDATE tbl_bene_ficha_productores p SET p.tecnico_responsable=REPLACE('_',' ');
update tbl_bene_ficha_productores 
set Tec_responsable=replace(Tec_responsable,'_', ' ');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_documento` ()  BEGIN
	UPDATE tbl_bene_ficha_productores set tipo_doc='Escritura publica' WHERE tipo_doc='escritura_publica';
	UPDATE tbl_bene_ficha_productores set tipo_doc='Dominio pleno' WHERE tipo_doc='dominio_pleno';
	UPDATE tbl_bene_ficha_productores set tipo_doc='Dominio privado' WHERE tipo_doc='dominio_privado';
	UPDATE tbl_bene_ficha_productores set tipo_doc='No cuenta con documentacion' WHERE tipo_doc='no_tiene_docs';
	UPDATE tbl_bene_ficha_productores set tipo_doc='Other' WHERE tipo_doc='other';
	
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_etnia` ()  BEGIN
	UPDATE tbl_bene_ficha_productores set Id_etnica='No Aplica' WHERE Id_etnica='no_aplica';
	
	UPDATE tbl_bene_ficha_productores set Id_etnica='Other' WHERE Id_etnica='other';
	
	UPDATE tbl_bene_ficha_productores set Id_etnica='Pendiente' WHERE Id_etnica='';
	
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_grupo_comunitario` ()  BEGIN
	UPDATE tbl_bene_ficha_productores set Grupo_comunitario='Caja Rural' WHERE Grupo_comunitario='caja_rural';
	
	UPDATE tbl_bene_ficha_productores set Grupo_comunitario='Cooperativa Cafetalera' WHERE Grupo_comunitario='cooperativa_ca';
	UPDATE tbl_bene_ficha_productores set Grupo_comunitario='Asociacion de productores' WHERE Grupo_comunitario='asociacion_pro';
	UPDATE tbl_bene_ficha_productores set Grupo_comunitario='Empresa de Servicios' WHERE Grupo_comunitario='empresa_servic';
	UPDATE tbl_bene_ficha_productores set Grupo_comunitario='Junta de Agua' WHERE Grupo_comunitario='junta_agua';
	UPDATE tbl_bene_ficha_productores set Grupo_comunitario='Ninguna' WHERE Grupo_comunitario='ninguna';
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_organizacion_cafetalera` ()  BEGIN
	
	UPDATE  tbl_bene_ficha_productores set Org_cafetalera='LA CENTRAL DE COOPERATIVAS' WHERE Org_cafetalera='CENTRAL_COOPER';
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_proyecto_beneficia` ()  BEGIN
#
	UPDATE tbl_bene_ficha_productores set Proyecto_beneficia='Fondo de Desarrollo Verde (FDV)' WHERE Proyecto_beneficia='Fondo_de_Desar';

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_techo` ()  BEGIN
	UPDATE tbl_bene_ficha_productores SET tipo_techo='Zinc' WHERE tipo_techo='zinc';
		UPDATE tbl_bene_ficha_productores SET tipo_techo='Teja' WHERE tipo_techo='teja';
			UPDATE tbl_bene_ficha_productores SET tipo_techo='Asbesto' WHERE tipo_techo='asbesto';
			UPDATE tbl_bene_ficha_productores SET tipo_techo='Palma' WHERE tipo_techo='palma';
			UPDATE tbl_bene_ficha_productores SET tipo_techo='Other' WHERE tipo_techo='other';
				
				

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_tecnicos_generalizar_nombres` ()  BEGIN
	UPDATE tbl_bene_ficha_productores SET Tec_responsable='DARWIN JAVIER VASQUEZ' WHERE tec_responsable='DARWIN JAVIER';
	
	UPDATE tbl_bene_ficha_productores SET Tec_responsable='HRNS ALEX HERNANDEZ' WHERE Tec_responsable='HRNS ALEX HERN';
	
	UPDATE tbl_bene_ficha_productores SET Tec_responsable='HRNS KARINA ORELLANA' WHERE Tec_responsable='HRNS KARINA OR';
	
		UPDATE tbl_bene_ficha_productores SET Tec_responsable='HRNS MARCO PEREZ' WHERE Tec_responsable='HRNS MARCO PER';
	
	UPDATE tbl_bene_ficha_productores SET Tec_responsable='HRNS MARVIN PINTO' WHERE Tec_responsable='HRNS MARVIN PI';
	
	
	
		UPDATE tbl_bene_ficha_productores SET Tec_responsable='HRNS MIRTALA GUERRA' WHERE tec_responsable='HRNS MIRTALA G';
	
	UPDATE tbl_bene_ficha_productores SET Tec_responsable='JOSE ALEXIS HERNANDEZ MENCIA' WHERE Tec_responsable='JOSE ALEXIS HE';
	
	UPDATE tbl_bene_ficha_productores SET Tec_responsable='NORA MICHELL GUERRERO RAMOS' WHERE Tec_responsable='NORA MICHELL G';
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiario_upd_tenencia` ()  BEGIN
	UPDATE tbl_bene_ficha_productores SET Tenencia_tierra='Documento Del INA' WHERE Tenencia_tierra='documento_INA';
	
	UPDATE tbl_bene_ficha_productores SET Tenencia_tierra='Documento Privado' WHERE Tenencia_tierra= 'Docto_Pivado';

UPDATE tbl_bene_ficha_productores SET Tenencia_tierra='Titulo del IP (Escritura Publica)' WHERE Tenencia_tierra='Titulo_del_IP_';
UPDATE tbl_bene_ficha_productores SET Tenencia_tierra='Titulo del IP (Escritura Publica)' WHERE Tenencia_tierra='titulo_IP';

UPDATE tbl_bene_ficha_productores SET Tenencia_tierra='Sin Documento' WHERE Tenencia_tierra='Sin_docto';
UPDATE tbl_bene_ficha_productores SET Tenencia_tierra='Sin Documento' WHERE Tenencia_tierra='Sin_Documento_1';

UPDATE tbl_bene_ficha_productores SET Tenencia_tierra='Dominio Pleno' WHERE Tenencia_tierra='Dominio_Pleno';


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `beneficiaro_posicion_codigo_variedad_generalizartodos` ()  BEGIN
	#las posiciones
	call beneficiario_cursor_posicion_vrdes();
	call beneficiario_cursor_posicion_rubro();	
	call beneficiario_cursor_posicion_estufa();
	call beneficiario_cursor_posicion_servicio();
	call beneficiario_cursor_posicion_apoyo();
	
	call beneficiario_cursor_posicion_actividad();
	
	#los codigos
	
	
	call beneficiario_asignar_codigo_variedad();
	call beneficiario_asignar_codigo_rubro();
	call `beneficiario_asignar_codigo_estufa
`();
	call beneficiario_asignar_codigo_servicio();
	
	call beneficiario_cursor_apoyo_vacio_euroclima();#cursor
		call beneficiario_asignar_codigo_apoyo();
		
		call beneficiario_asignar_codigo_actividad();
		
		
		## globalizar todas los datos de determinadas columnas
		
		call beneficiario_upd_organizacion_cafetalera();
		
		CALL beneficiario_upd_documento();
		CALL beneficiario_upd_grupo_comunitario();
		CALL beneficiario_upd_proyecto_beneficia();
		
		call beneficiario_tecnico_sin_guion();
		
		call beneficiario_upd_tenencia();
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `bene_normalizar` ()  NO SQL
BEGIN

START TRANSACTION;
SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from vista_bene_ficha);

WHILE @contar<@t_repetir DO


	select
	Fecha_Entrevista,`Fecha_envío`,Departamento,Municipio,Aldea_Comunidad,Ubi_eve,Ubi_eve_lat,
	Ubi_eve_long,ubi_eve_alti,ubi_eve_alti,Ubi_eve_pre,Regional,Agencia,Name_productor,Celular,
	Num_Identidad,Clave_productor,Genero,Edad_productor,Est_civil,Escolaridad,Num_miembros_familia,Num_RTN,Id_etnica,Grupo_comunitario,caja_rural,coop_cafetalera,
	Asoc_productores,junta_agua,Org_cafetalera,act_productivas,Tipo_vivienda,tipo_doc,
	tipo_pared,tipo_techo,tipo_piso,Ubi_finca,Fuente_agua,Nombre_Fuente_agua,Porc_sombra_finca,
	Area_total,area_cafe,num_plantas_cafe,prod_uva,prod_oro,Edad_finca,Tenencia_tierra,Foto_productor,Foto_vivienda,Foto_finca,Proyecto_beneficia,Tec_responsable,_index
		
	INTO 
	@Fecha_Entrevista,@Fecha_envio,@Departamento,@Municipio,@Aldea_Comunidad,@Ubi_eve,@Ubi_eve_lat,
	@Ubi_eve_long,@ubi_eve_alti,@ubi_eve_alti,@Ubi_eve_pre,@Regional,@Agencia,@Name_productor,@Celular,
	@Num_Identidad,@Clave_productor,@Genero,@Edad_productor,@Est_civil,@Escolaridad
	,@Num_miembros_familia,@Num_RTN,@Id_etnica,@Grupo_comunitario,@caja_rural,
	@coop_cafetalera,@Asoc_productores,@junta_agua,@Org_cafetalera,@act_productivas,@Tipo_vivienda,
	@tipo_doc,
	@tipo_pared,@tipo_techo,@tipo_piso,@Ubi_finca,@Fuente_agua,@Nombre_Fuente_agua,@Porc_sombra_finca,
	@Area_total,@area_cafe,@num_plantas_cafe,@prod_uva,@prod_oro,@Edad_finca,@Tenencia_tierra,@Foto_productor,@Foto_vivienda,@Foto_finca,
	@Proyecto_beneficia,@Tec_responsable,@indexxx
		from vista_bene_ficha
    WHERE n =(@contar+1) ;
		#convertir strin a decimal
		
		SELECT gm.cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	INNER JOIN ihcafemonitoreo.tbl_general_departamento gd on gm.cod_depart=gd.cod_depart
	WHERE gd.departamento=@Departamento and gm.municipio=@Municipio LIMIT 1;	
		   
	set @Area_total=(SELECT CAST(@Area_total as Decimal(10,2)));
	set @area_cafe=(SELECT CAST(@area_cafe as Decimal(10,2)));
		
	#buscar en ihcafemonitoreo si existe y mapear en variables
	SELECT latitud,longitud,cod_finca,cod_identidad
    into @f_latitud,@f_longitud,@f_cod_finca,@f_cod_identidad
    from ihcafemonitoreo.tbl_bene_finca gf
    WHERE gf.latitud=@Ubi_eve_lat AND gf.longitud=@Ubi_eve_long  and gf.cod_identidad=@Num_Identidad
  	order by gf.cod_identidad DESC LIMIT 1;
		#numero de fila que hay 
 	SELECT COUNT(*) into @canfilas FROM ihcafemonitoreo.tbl_bene_finca mf
     WHERE mf.cod_identidad=@Num_Identidad ;
		 
	if @Tec_responsable='' then
		SET @Tec_responsable='Pendiente';
	end if;
	
	SELECT T.cod_tecnico into @codigoTecnico from ihcafemonitoreo.tbl_general_tecnico t 
		WHERE t.nombre= @Tec_responsable LIMIT 1;
	
	SELECT bt.cod_tenencia into @cod_tenencia from ihcafemonitoreo.tbl_bene_tenencia bt
	  WHERE bt.tenencia=@Tenencia_tierra LIMIT 1;
		
		
# para el insert ficha(Grupo_comunitario,caja_rural,coop_cafetalera,
#Asoc_productores,junta_agua,Org_cafetalera,)------------------------------------------------------------

SELECT g.cod_grupo into @cod_grupo FROM ihcafemonitoreo.tbl_bene_grupo_comunitario g
 WHERE g.Grupo_comunitario=@Grupo_comunitario LIMIT 1;
 
set @nombreGrupo=(SELECT CONCAT(@caja_rural,@coop_cafetalera,@Asoc_productores,@junta_agua));

SELECT oc.cod_org_cafetalera into @cod_organizacion FROM ihcafemonitoreo.tbl_bene_org_cafetalera oc
	WHERE oc.organizacion_cafetale=@Org_cafetalera LIMIT 1;
	
SELECT pb.cod_pro_beneficia into @cod_beneficia  FROM ihcafemonitoreo.tbl_bene_proyecto_beneficia pb
  WHERE pb.proyecto_beneficia=@Proyecto_beneficia limit 1;
 
 #para el insert de vivienda-@Tipo_vivienda,@tipo_doc,@tipo_pared,
 #@tipo_techo,@tipo_piso-------------------------------------------------------------------------------
SELECT tv.cod_tipo_vivienda into @codigoVivienda from ihcafemonitoreo.tbl_bene_tipo_vivienda tv 
  WHERE tv.tipo_vivienda=@Tipo_vivienda limit 1;
		
		
SELECT td.cod_tipo_doc into @codDoc from ihcafemonitoreo.tbl_bene_tipo_documentacion td
	WHERE td.tipo_documentacion=@tipo_doc limit 1;
	

		
		
SELECT tp.cod_tipo_pared into @codPared from ihcafemonitoreo.tbl_bene_tipo_pared tp 
  WHERE tp.tipo_pared=@tipo_pared LIMIT 1;
		
SELECT tt.cod_tipo_techo into @codTecho from ihcafemonitoreo.tbl_bene_tipo_techo tt 
	WHERE tt.tipo_techo=@tipo_techo LIMIT 1;
		
SELECT tpp.cod_tipo_piso into @codPiso from ihcafemonitoreo.tbl_bene_tipo_piso tpp 
	WHERE tpp.tipo_piso=@tipo_piso LIMIT 1;

	
	if  @canfilas=0 and not EXISTS (SELECT fff.latitud,fff.longitud FROM 
		ihcafemonitoreo.tbl_bene_finca fff WHERE fff.latitud=@Ubi_eve_lat and fff.longitud=@Ubi_eve_long LIMIT 1) then
#insertado en finnca	
	INSERT INTO ihcafemonitoreo.tbl_bene_finca(
		cod_finca,ubicacion,
		latitud,longitud,
		altitud,presion,
		Nombre_Fuente_agua,sombra,
		area_total_mz,area_cafe,
		num_plantas_cafe,qq_uva_anterior,
		qq_oro_anterior,Edad_finca,
		cod_tenencia,cod_identidad,
		url_finca) 
	VALUES(
		@Num_Identidad,@Ubi_eve,
		@Ubi_eve_lat,@Ubi_eve_long,
		@ubi_eve_alti,@Ubi_eve_pre,
		@Nombre_Fuente_agua,@Porc_sombra_finca,
	
		@Area_total,@area_cafe,
		@num_plantas_cafe,@prod_uva,
		@prod_oro,@Edad_finca,
		@cod_tenencia,@Num_Identidad,
		@Foto_finca);
		
#insertado en tbl_beneficiario variedades con ciclo.
	set @vueltas=(SELECT COUNT(vvv.codigo_variedad) FROM vista_bene_variedades vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @i=0;
		#es el id ultimo de bene finca 
		##set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @i<@vueltas DO
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_bene_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@i+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_variedades(cod_h_variedad,cod_variedad,cod_finca)
		VALUES(NULL,@cod_variedad_f,@Num_Identidad);
			
	set @i=@i+1;
	end while;
	
	set @vueltasActividad=(SELECT COUNT(vvv.codigo_actividad) FROM vista_bene_actividad_productiva vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iActividad=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @iActividad<@vueltasActividad DO
		SELECT vvv.codigo_actividad into @cod_actividad
		FROM vista_bene_actividad_productiva vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iActividad+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_general_h_actividad_pro(cod_h_actividad,cod_actividad_pro,cod_identidad)
		VALUES(NULL,@cod_actividad,@Num_Identidad);
			
	set @iActividad=@iActividad+1;
	end while;	
	
#insertado en tbl_bene rubro
set @vueltasRubro=(SELECT COUNT(vvv.rubros_que_posee) FROM vista_bene_diversificacion_rubro vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iRubro=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @iRubro<@vueltasRubro DO
		SELECT vvv.codigo_rubro into @cod_rubro
		FROM vista_bene_diversificacion_rubro vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iRubro+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_rubros(cod_h_rubros,cod_rubro,cod_finca)
		VALUES(NULL,@cod_rubro,@Num_Identidad);
			
	set @iRubro=@iRubro+1;
	end while;			

	
	
		
		
		
		
		
		
		
#insertado en ficha	
INSERT INTO ihcafemonitoreo.tbl_beneficiario_ficha(
cod_beneficiario,
cod_grupo,
grupo,
cod_identidad,
fecha_visita,
fecha_envio,
cod_org_cafetalera,
cod_pro_beneficia,
cod_tecnico,
cod_finca,fecha_ingreso)  
VALUES(null,@cod_grupo,@nombreGrupo,@Num_Identidad,@Fecha_Entrevista,@Fecha_envio,@cod_organizacion,@cod_beneficia,@codigoTecnico,@Num_Identidad,NOW());


set @maximo=(SELECT MAX(bf.cod_beneficiario) from ihcafemonitoreo.tbl_beneficiario_ficha bf LIMIT 1);	
#insertado en vivienda

insert into ihcafemonitoreo.tbl_bene_vivienda(
cod_vivienda,cod_tipo_vivienda,
cod_tipo_doc,cod_beneficiario,
cod_tipo_pared,cod_tipo_techo,
cod_tipo_piso,url_vivienda) values(null,@codigoVivienda,@codDoc,@maximo,@codPared,@codTecho,@codPiso,@Foto_vivienda);



#insertado en tbl_bene estufas
set @vueltasEstufa=(SELECT COUNT(vvv.Tipo_estufa) FROM vista_bene_estufa vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
SET @iEstufa=0;
		#es el id ultimo de bene finca 
set @maximoV=(SELECT MAX(gnf.cod_vivienda) from ihcafemonitoreo.tbl_bene_vivienda gnf LIMIT 1);	
	WHILE @iEstufa<@vueltasEstufa DO
		SELECT vvv.codigo_estufa into @cod_estufa
		FROM vista_bene_estufa vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iEstufa+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_tipo_estufa(cod_h_estufa,cod_vivienda,cod_tipo_estufa)
		VALUES(NULL,@maximoV,@cod_estufa);
			
	set @iEstufa=@iEstufa+1;
	end while;	

	
#insertado en tbl_bene servicios
set @vueltasServicio=(SELECT COUNT(vvv.Servicios_publicos) FROM vista_bene_servicios_publico vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
SET @iServicio=0;
		#es el id ultimo de bene finca 
#set @maximoV=(SELECT MAX(gnf.cod_vivienda) from ihcafemonitoreo.tbl_bene_vivienda gnf LIMIT 1);	
	WHILE @iServicio<@vueltasServicio DO
	 SELECT vvv.codigo_servicio into @cod_servicio
		FROM vista_bene_servicios_publico vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iServicio+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_tipo_servicios_p(cod_h_tipo_servicio,cod_vivienda,cod_tipo_servicio)
		VALUES(NULL,@maximoV,@cod_servicio);
			
	set @iServicio=@iServicio+1;
	end while;	

			
#insertado en tbl_bene apoyo
set @vueltasApoyo=(SELECT COUNT(vvv.Tipo_de_apoyo_que_requiere) FROM vista_bene_apoyo vvv 
			WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iApoyo=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @iApoyo<@vueltasApoyo DO
		SELECT vvv.codigo_apoyo,vvv.Tipo_de_apoyo_que_requiere into @cod_apoyo,@otro_apoyo
		FROM vista_bene_apoyo vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iApoyo+1 LIMIT 1;
		
		
		if @cod_apoyo<>6 then
		set @otroApayo='ninguno';
		else
		set @otroApayo=TRIM(SUBSTRING(@otro_apoyo,6,95));
		
		end if;
		
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_tipo_apoyo(cod_h_tipo_apoyo,cod_vivienda,cod_tipo_apoyo,apoyo_otro)
		VALUES(NULL,@maximoV,@cod_apoyo,@otroApayo);
			
	set @iApoyo=@iApoyo+1;
	end while;		
	


	select 1 as codigo, 'Se inserto Correctamente' as mensaje;
	
	  
		
		
		
		
	
ELSEIF   @canfilas>0  and 
 EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_bene_finca fff WHERE fff.latitud=@Ubi_eve_lat
	and fff.longitud=@Ubi_eve_long LIMIT 1) then 
#EXISTS (SELECT fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.longitud=@Ubi_eve_long) then
		set @string_Mensaje=concat('DATOS REPETIDOS ',@f_latitud,'-\t ',
                               @f_longitud);											 
			select 1 as codigo,@string_Mensaje mensaje;
	

	
else


SELECT COUNT(*) 
    into @n_finca 
    from ihcafemonitoreo.tbl_bene_finca gf
    WHERE gf.latitud<>@Ubi_eve_lat OR gf.longitud<>@Ubi_eve_long  and gf.cod_identidad=@Num_Identidad
  	 LIMIT 1;
		
	INSERT INTO ihcafemonitoreo.tbl_bene_finca(
		cod_finca,ubicacion,
		latitud,longitud,
		altitud,presion,
		Nombre_Fuente_agua,sombra,
		area_total_mz,area_cafe,
		num_plantas_cafe,qq_uva_anterior,
		qq_oro_anterior,Edad_finca,
		cod_tenencia,cod_identidad,
		url_finca) 
	VALUES(
		concat(@Num_Identidad,'-',@n_finca+1),@Ubi_eve,
		@Ubi_eve_lat,@Ubi_eve_long,
		@ubi_eve_alti,@Ubi_eve_pre,
		@Nombre_Fuente_agua,@Porc_sombra_finca,
	
		@Area_total,@area_cafe,
		@num_plantas_cafe,@prod_uva,
		@prod_oro,@Edad_finca,
		@cod_tenencia,@Num_Identidad,
		@Foto_finca);
		
		
#insertado en tbl_beneficiario variedades con ciclo. nota:los codigos de esta seccion ya esta en su respectiva tabla
	set @vueltasF2=(SELECT COUNT(vvv.codigo_variedad) FROM vista_bene_variedades vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @ii=0;
		#es el id ultimo de bene finca 
		#set @maximoF2=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @ii<@vueltasF2 DO
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_bene_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@ii+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_variedades(cod_h_variedad,cod_variedad,cod_finca)
		VALUES(NULL,@cod_variedad_f,concat(@Num_Identidad,'-',@n_finca+1));
			
	set @ii=@ii+1;
	end while;	
#insertando en tbl_general propia del productor	
set @vueltasActividad2=(SELECT COUNT(vvv.codigo_actividad) FROM vista_bene_actividad_productiva vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iActividad2=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @iActividad2<@vueltasActividad2 DO
		SELECT vvv.codigo_actividad into @cod_actividad
		FROM vista_bene_actividad_productiva vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iActividad2+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_general_h_actividad_pro(cod_h_actividad,cod_actividad_pro,cod_identidad)
		VALUES(NULL,@cod_actividad,@Num_Identidad);
			
	set @iActividad2=@iActividad2+1;
	end while;	
	
	
	
	
	
#insertado en tbl_bene rubro
	set @vueltasRubro2=(SELECT COUNT(vvv.rubros_que_posee) FROM vista_bene_diversificacion_rubro vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iRubro2=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @iRubro2<@vueltasRubro2 DO
		SELECT vvv.codigo_rubro into @cod_rubro
		FROM vista_bene_diversificacion_rubro vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iRubro2+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_rubros(cod_h_rubros,cod_rubro,cod_finca)
		VALUES(NULL,@cod_rubro,concat(@Num_Identidad,'-',@n_finca+1));
			
	set @iRubro2=@iRubro2+1;
	end while;			


		
	#----------------------------------------------------------------------------------------------------------	
		INSERT INTO ihcafemonitoreo.tbl_beneficiario_ficha(
cod_beneficiario,
cod_grupo,
grupo,
cod_identidad,
fecha_visita,
fecha_envio,
cod_org_cafetalera,
cod_pro_beneficia,
cod_tecnico,
cod_finca,fecha_ingreso) 
VALUES(null,@cod_grupo,@nombreGrupo,@Num_Identidad,@Fecha_Entrevista,@Fecha_envio,@cod_organizacion,@cod_beneficia,@codigoTecnico,concat(@Num_Identidad,'-',@n_finca+1),NOW());
	
	
	set @maximo=(SELECT MAX(bf.cod_beneficiario) from ihcafemonitoreo.tbl_beneficiario_ficha bf LIMIT 1);	
#insertado en vivienda

insert into ihcafemonitoreo.tbl_bene_vivienda(
cod_vivienda,cod_tipo_vivienda,
cod_tipo_doc,cod_beneficiario,
cod_tipo_pared,cod_tipo_techo,
cod_tipo_piso,url_vivienda) values(null,@codigoVivienda,@codDoc,@maximo,@codPared,@codTecho,@codPiso,@Foto_vivienda);

#insertado en tbl_bene estufas
set @vueltasEstufa2=(SELECT COUNT(vvv.Tipo_estufa) FROM vista_bene_estufa vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
SET @iEstufa2=0;
		#es el id ultimo de bene finca 
set @maximoV=(SELECT MAX(gnf.cod_vivienda) from ihcafemonitoreo.tbl_bene_vivienda gnf LIMIT 1);	
	WHILE @iEstufa2<@vueltasEstufa2 DO
		SELECT vvv.codigo_estufa into @cod_estufa
		FROM vista_bene_estufa vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iEstufa2+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_tipo_estufa(cod_h_estufa,cod_vivienda,cod_tipo_estufa)
		VALUES(NULL,@maximoV,@cod_estufa);
			
	set @iEstufa2=@iEstufa2+1;
	end while;	

#insertado en tbl_bene servicios
set @vueltasServicio2=(SELECT COUNT(vvv.Servicios_publicos) FROM vista_bene_servicios_publico vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
SET @iServicio2=0;
		#es el id ultimo de bene finca 
#set @maximoV=(SELECT MAX(gnf.cod_vivienda) from ihcafemonitoreo.tbl_bene_vivienda gnf LIMIT 1);	
	WHILE @iServicio2<@vueltasServicio2 DO
	 SELECT vvv.codigo_servicio into @cod_servicio
		FROM vista_bene_servicios_publico vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iServicio2+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_tipo_servicios_p(cod_h_tipo_servicio,cod_vivienda,cod_tipo_servicio)
		VALUES(NULL,@maximoV,@cod_servicio);
			
	set @iServicio2=@iServicio2+1;
	end while;

#insertado en tbl_bene apoyo
set @vueltasApoyo2=(SELECT COUNT(vvv.Tipo_de_apoyo_que_requiere) FROM vista_bene_apoyo vvv 
			WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iApoyo2=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @iApoyo2<@vueltasApoyo2 DO
		SELECT vvv.codigo_apoyo,vvv.Tipo_de_apoyo_que_requiere into @cod_apoyo,@otro_apoyo
		FROM vista_bene_apoyo vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iApoyo2+1 LIMIT 1;
		
			if @cod_apoyo<>6 then
		set @otroApayo='ninguno';
		else
	set @otroApayo=TRIM(SUBSTRING(@otro_apoyo,6,95));
		
		end if;
		INSERT INTO 
		ihcafemonitoreo.tbl_bene_h_tipo_apoyo(cod_h_tipo_apoyo,cod_vivienda,cod_tipo_apoyo,apoyo_otro)
		VALUES(NULL,@maximoV,@cod_apoyo,@otroApayo);
			
	set @iApoyo2=@iApoyo2+1;
	end while;		
	
 	select 1 as codigo,'nueva aldea' mensaje;
		
	end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_pregunta` (IN `prespuesta` VARCHAR(255), IN `pnumero` INT(3))  NO SQL
SELECT r.cod_respuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta r WHERE r.respuesta=prespuesta and cod_pregunta=pnumero LIMIT 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `dber` ()  NO SQL
BEGIN
DECLARE i,j int;
DECLARE latitud, latitud1 float;
START TRANSACTION;

# variable que trae el maximo en cantidades de latitud
SET latitud = (SELECT MAX(v.n) FROM vista_ficha_finca v LIMIT 1);

# condicion que nos permite verificar si existen datos en la tabla
IF EXISTS (SELECT v.latitud FROM ihcafemonitoreo.tbl_general_finca v LIMIT 1) THEN
SET i = 1;

#ciclo que nos va contando cada dato de cada fila 
WHILE latitud >= i DO

# condicion que nos permitira insertar datos en caso contrario se omite(sino existe la latitu)compara 2bases
IF NOT EXISTS (SELECT g.latitud FROM ihcafemonitoreo.tbl_general_finca g WHERE g.latitud = (SELECT v.latitu FROM vista_ficha_finca v WHERE v.n = i)) THEN

# acumulador que nos trae un numero para sumarlo o concatenarlo
SET j = (SELECT SUBSTRING(MAX(v.cod_finca),14,1)+1 FROM ihcafemonitoreo.tbl_general_finca v WHERE v.cod_identidad = (SELECT v.numero_identidad FROM ihcafefichas.vista_ficha_finca v WHERE v.n = i));

INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) SELECT CONCAT((SUBSTRING(v.numero_identidad,1,13)),j),v.nombre_productor,v.latitu,v.logitud,v.numero_identidad FROM vista_ficha_finca v WHERE v.n = i;
SELECT "Se ingreso Correctamente" as mensaje;
ELSE
SELECT "Datos Repetidos" as mensaje;
END IF;

SET i = i + 1;
END WHILE;
END IF;

#Condicion que nos indica si hay datos en la tabla de no haber inserta datos
IF NOT EXISTS (SELECT v.latitud FROM ihcafemonitoreo.tbl_general_finca v LIMIT 1) THEN
INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) SELECT v.numero_identidad,v.nombre_productor,v.latitu,v.logitud,v.numero_identidad FROM vista_ficha_finca v;
SELECT "Datos Insertados Correctamente" as mensaje;
END IF;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacino_upd_Tecnico` ()  BEGIN
	UPDATE tbl_div_ficha_productor SET tecnico_responsable='CARLOS MAGDIEL ARRIAGA LOPEZ' WHERE tecnico_responsable='CARLOS MAGDIEL ARRIA';
	
	UPDATE tbl_div_ficha_productor SET tecnico_responsable='BORIS FERNANDO BUEZO JUAREZ' WHERE tecnico_responsable='BORIS FERNANDO BUEZO';

				

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_asignar_codigo_ingresos` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_div_fuentes_ingreso set codigo_ingreso="1" WHERE fuentes_ingresos='Ganadería';
UPDATE tbl_div_fuentes_ingreso set codigo_ingreso="2" WHERE fuentes_ingresos='Negocio_Pequeñ';
UPDATE tbl_div_fuentes_ingreso set codigo_ingreso="3" WHERE fuentes_ingresos='Empleo';
UPDATE tbl_div_fuentes_ingreso set codigo_ingreso="4" WHERE fuentes_ingresos='Remesas';
UPDATE tbl_div_fuentes_ingreso set codigo_ingreso="5" WHERE fuentes_ingresos='Granos_Básicos';
UPDATE tbl_div_fuentes_ingreso set codigo_ingreso="6" WHERE fuentes_ingresos='Ninguna';





end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_asignar_codigo_meses` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_div_meses_flacos set codigo_mes="1" WHERE meses_flacos='Enero';
UPDATE tbl_div_meses_flacos set codigo_mes="2" WHERE meses_flacos='Febrero';
UPDATE tbl_div_meses_flacos set codigo_mes="3" WHERE meses_flacos='Marzo';
UPDATE tbl_div_meses_flacos set codigo_mes="4" WHERE meses_flacos='Abril';
UPDATE tbl_div_meses_flacos set codigo_mes="5" WHERE meses_flacos='Mayo';
UPDATE tbl_div_meses_flacos set codigo_mes="6" WHERE meses_flacos='Junio';
UPDATE tbl_div_meses_flacos set codigo_mes="7" WHERE meses_flacos='Julio';
UPDATE tbl_div_meses_flacos set codigo_mes="8" WHERE meses_flacos='Agosto';
UPDATE tbl_div_meses_flacos set codigo_mes="9" WHERE meses_flacos='Septiembre';
UPDATE tbl_div_meses_flacos set codigo_mes="10" WHERE meses_flacos='Octubre';
UPDATE tbl_div_meses_flacos set codigo_mes="11" WHERE meses_flacos='Noviembre';
UPDATE tbl_div_meses_flacos set codigo_mes="12" WHERE meses_flacos='Diciembre';




UPDATE tbl_div_meses_lluviosos set codigo_mes="1" WHERE meses_mas_lluviosos='Enero';
UPDATE tbl_div_meses_lluviosos set codigo_mes="2" WHERE meses_mas_lluviosos='Febrero';
UPDATE tbl_div_meses_lluviosos set codigo_mes="3" WHERE meses_mas_lluviosos='Marzo';
UPDATE tbl_div_meses_lluviosos set codigo_mes="4" WHERE meses_mas_lluviosos='Abril';
UPDATE tbl_div_meses_lluviosos set codigo_mes="5" WHERE meses_mas_lluviosos='Mayo';
UPDATE tbl_div_meses_lluviosos set codigo_mes="6" WHERE meses_mas_lluviosos='Junio';
UPDATE tbl_div_meses_lluviosos set codigo_mes="7" WHERE meses_mas_lluviosos='Julio';
UPDATE tbl_div_meses_lluviosos set codigo_mes="8" WHERE meses_mas_lluviosos='Agosto';
UPDATE tbl_div_meses_lluviosos set codigo_mes="9" WHERE meses_mas_lluviosos='Septiembre';
UPDATE tbl_div_meses_lluviosos set codigo_mes="10" WHERE meses_mas_lluviosos='Octubre';
UPDATE tbl_div_meses_lluviosos set codigo_mes="11" WHERE meses_mas_lluviosos='Noviembre';
UPDATE tbl_div_meses_lluviosos set codigo_mes="12" WHERE meses_mas_lluviosos='Diciembre';








end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_cursor_posicion_ingreso` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_diversificacion_ingresos GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_fuentes_ingreso SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_fuentes_ingreso SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_fuentes_ingreso SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_fuentes_ingreso SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_fuentes_ingreso SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_fuentes_ingreso SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_fuentes_ingreso SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_fuentes_ingreso SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_fuentes_ingreso SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_fuentes_ingreso SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_fuentes_ingreso SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_fuentes_ingreso SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_div_fuentes_ingreso SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_fuentes_ingreso SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_fuentes_ingreso SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_fuentes_ingreso SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_fuentes_ingreso SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_fuentes_ingreso SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_div_fuentes_ingreso SET posicion=8 WHERE index1=ind+7;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_cursor_posicion_meses_flacos` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_diversificacion_meses_flaco GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_flacos SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_flacos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_flacos SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_flacos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_flacos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_flacos SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_flacos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_flacos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_flacos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_flacos SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_flacos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_flacos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_flacos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_flacos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_flacos SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_flacos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_flacos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_flacos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_flacos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_flacos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_flacos SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_div_meses_flacos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_flacos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_flacos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_flacos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_flacos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_flacos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_flacos SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_div_meses_flacos SET posicion=8 WHERE index1=ind+7;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_cursor_posicion_meses_lluvioso` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_diversificacion_lluviosos GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_lluviosos SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_lluviosos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_lluviosos SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_lluviosos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_lluviosos SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_div_meses_lluviosos SET posicion=8 WHERE index1=ind+7;
				WHEN sumi=9 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_lluviosos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_lluviosos SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_div_meses_lluviosos SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_div_meses_lluviosos SET posicion=9 WHERE index1=ind+8;
		
		WHEN sumi=10 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_lluviosos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_lluviosos SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_div_meses_lluviosos SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_div_meses_lluviosos SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_div_meses_lluviosos SET posicion=10 WHERE index1=ind+9;
		WHEN sumi=11 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_lluviosos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_lluviosos SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_div_meses_lluviosos SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_div_meses_lluviosos SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_div_meses_lluviosos SET posicion=10 WHERE index1=ind+9;
		UPDATE tbl_div_meses_lluviosos SET posicion=11 WHERE index1=ind+10;
		WHEN sumi=12 THEN
		UPDATE tbl_div_meses_lluviosos SET posicion=1 WHERE index1=ind;
		UPDATE tbl_div_meses_lluviosos SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_div_meses_lluviosos SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_div_meses_lluviosos SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_div_meses_lluviosos SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_div_meses_lluviosos SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_div_meses_lluviosos SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_div_meses_lluviosos SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_div_meses_lluviosos SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_div_meses_lluviosos SET posicion=10 WHERE index1=ind+9;
		UPDATE tbl_div_meses_lluviosos SET posicion=11 WHERE index1=ind+10;
		UPDATE tbl_div_meses_lluviosos SET posicion=12 WHERE index1=ind+11;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_delete_data` ()  NO SQL
BEGIN
DELETE from tbl_div_ficha_productor;
alter TABLE tbl_div_ficha_productor AUTO_INCREMENT=1;

DELETE from tbl_div_meses_flacos;
alter TABLE tbl_div_meses_flacos AUTO_INCREMENT=1;

DELETE FROM tbl_div_fuentes_ingreso;
alter TABLE tbl_div_fuentes_ingreso AUTO_INCREMENT=1;

DELETE from tbl_div_meses_lluviosos;
alter TABLE tbl_div_meses_lluviosos AUTO_INCREMENT=1;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_ingreso_productor` ()  BEGIN
	#Routine body goes here...
	
	START TRANSACTION;
	
	SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from ihcafefichas.vista_diversificacion_ficha limit 1);

WHILE @contar<@t_repetir DO
set @can_productor=(SELECT COUNT(p.cod_identidad) from ihcafemonitoreo.tbl_div_productor p);

  SELECT
	id_productor,nombre_productor,
	Clave_productor,sexo,
	Depto,Municipio,
	Aldea,Agencia
	
  into @id_productor,@nombre_productor,
	@Clave_productor,@sexo,
	@Depto,@Municipio,
	@Aldea,@Agencia
	from ihcafefichas.vista_diversificacion_ficha
  WHERE n =(@contar+1) ;
  ##verificar existencia en tbl productor		
  #buscar los codigos de sexo,municipio,agencia
  SELECT g.cod_genero into @codgenero from ihcafemonitoreo.tbl_general_genero g 
	WHERE g.genero=LOWER(@sexo)
  LIMIT 1;
		if not EXISTS(SELECT gp.cod_identidad from ihcafemonitoreo.tbl_div_productor gp 
				WHERE gp.cod_identidad=@id_productor) THEN

				INSERT into ihcafemonitoreo.tbl_div_productor
					(cod_identidad,nombre,clave,cod_genero,celular,nacimiento,cod_pais,cod_municipio,cod_agencia) 
					VALUE(@id_productor,@Nombre_Productor,@Clave_productor,@codgenero,null,NULL,'137',@Municipio,
					@Agencia);
		
		
		elseif EXISTS(SELECT gp.cod_identidad 
		from ihcafemonitoreo.tbl_general_productor gp
		WHERE gp.cod_identidad=@id_productor) THEN
		SELECT 'datos repetidos' as mensaje;
	
	
end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_insert_ingreso_kb` (IN `pingreso` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_div_fuentes_ingreso(index1,fuentes_ingresos,sumision,parent_index,submission_id,codigo_ingreso,posicion) 

SELECT NULL,pingreso,psumision,'','','',''
	WHERE not EXISTS (SELECT ta.fuentes_ingresos from tbl_div_fuentes_ingreso ta 
	WHERE sumision=psumision and ta.fuentes_ingresos=pingreso LIMIT 1);




END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_insert_kb` (IN `startt` VARCHAR(25), IN `endd` VARCHAR(25), IN `username` VARCHAR(20), IN `simserial` VARCHAR(20), IN `subscriberid` VARCHAR(20), IN `device` VARCHAR(20), IN `fecha_visita` VARCHAR(20), IN `dept` VARCHAR(30), IN `muni` VARCHAR(50), IN `aldea` VARCHAR(50), IN `ubicacion` VARCHAR(20), IN `latitud` VARCHAR(10), IN `longitud` VARCHAR(10), IN `altitud` VARCHAR(10), IN `precisino1` VARCHAR(10), IN `regional` VARCHAR(50), IN `agencia` VARCHAR(50), IN `nombre` VARCHAR(50), IN `id` VARCHAR(20), IN `sexo` VARCHAR(10), IN `regIhcafe` VARCHAR(5), IN `parentesco` VARCHAR(30), IN `idParentesco` VARCHAR(20), IN `clave` VARCHAR(20), IN `areaFinca` VARCHAR(15), IN `tiempo` VARCHAR(10), IN `implementar_p` VARCHAR(30), IN `miembroGrupo` VARCHAR(30), IN `mesesLluvioso` VARCHAR(30), IN `profundidad` VARCHAR(15), IN `porcentaje` VARCHAR(20), IN `tipoSuelo` VARCHAR(30), IN `rubro` VARCHAR(50), IN `lineaCafe1` VARCHAR(10), IN `lineaCafe2` VARCHAR(10), IN `tipo_frutales` VARCHAR(20), IN `mel` VARCHAR(10), IN `gua` VARCHAR(10), IN `ram` VARCHAR(10), IN `citri` VARCHAR(10), IN `lic` VARCHAR(10), IN `proyecto` VARCHAR(30), IN `tecnico` VARCHAR(50), IN `indexx` VARCHAR(20))  BEGIN
INSERT INTO tbl_div_ficha_productor VALUES(

null,
startt,
endd,
username,
simserial,
subscriberid,
device,
fecha_visita,
dept,
muni,
aldea,
ubicacion,
latitud,
longitud,
altitud,
precisino1,
regional,
agencia,
nombre,
id,
sexo,
regIhcafe,
parentesco,
idParentesco,
clave,
areaFinca,
tiempo,
implementar_p,
miembroGrupo,
mesesLluvioso,
profundidad,
porcentaje,
tipoSuelo,
rubro,
lineaCafe1,
lineaCafe2,
tipo_frutales,
mel,
gua,
ram,
citri,
lic,
proyecto,
tecnico,
indexx);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_insert_meses_f` (IN `pmes` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_div_meses_flacos(index1,meses_flacos,sumision,parent_index,submission_id,codigo_mes,posicion) 

SELECT NULL,pmes,psumision,'','','',''
	WHERE not EXISTS (SELECT ta.meses_flacos from tbl_div_meses_flacos ta 
	WHERE sumision=psumision and ta.meses_flacos=pmes LIMIT 1);




END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_insert_meses_lluvia` (IN `pmes` VARCHAR(50), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_div_meses_lluviosos(index1,meses_mas_lluviosos,sumision,parent_index,submission_id,codigo_mes,posicion) 

SELECT NULL,pmes,psumision,'','','',''
	WHERE not EXISTS (SELECT ta.meses_mas_lluviosos from tbl_div_meses_lluviosos ta 
	WHERE sumision=psumision and ta.meses_mas_lluviosos=pmes LIMIT 1);




END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_normalizar` ()  NO SQL
BEGIN

START TRANSACTION;
SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from vista_diversificacion_ficha);

WHILE @contar<@t_repetir DO


	select
n,fecha_visita,Depto,Municipio,Aldea,UbicacionGPS,latitude,longitude,altitude,
precision1,Regional,Agencia,Nombre_productor,id_productor,Sexo,reg_incafe, 
parentesco_per_reg,id_parentesco_per_reg,Clave_productor,area_finca,Disp_tiempo_Cap,miembros_grupo,
meses_lluviosos,Profundidad_suelo,porc_mat_org_suelo,tipo_suelo,rubro_implementar,linea_cafe,
linea_cafe2,Tipo_frutales,tipo_frutales_mel,tipo_frutales_gua,tipo_frutales_ram, 
tipo_frutales_citri,tipo_frutales_lic,proyecto_beneficia,tecnico_responsable,indexxx
		
	INTO 
@n,@fecha_visita,@Depto,@Municipio,@Aldea,@UbicacionGPS,@latitude,@longitude,@altitude,
@precision1,@Regional,@Agencia,@Nombre_productor,@id_productor,@Sexo,@reg_incafe, 
@parentesco_per_reg,@id_parentesco_per_reg,@Clave_productor,@area_finca,@Disp_tiempo_Cap,@miembros_grupo,
@meses_lluviosos,@Profundidad_suelo,@porc_mat_org_suelo,@tipo_suelo,@rubro_implementar,@linea_cafe,
@linea_cafe2,@Tipo_frutales,@tipo_frutales_mel,@tipo_frutales_gua,@tipo_frutales_ram, 
@tipo_frutales_citri,@tipo_frutales_lic,@proyecto_beneficia,@tecnico_responsable,@indexxx
	
		from vista_diversificacion_ficha
    WHERE n =(@contar+1);
		#convertir strin a decimal
	
		   
	set @Area_total=(SELECT CAST(@area_finca as Decimal(10,2)));
	#set @area_cafe=(SELECT CAST(@area_cafe as Decimal(10,2)));
		
	#buscar en ihcafemonitoreo si existe y mapear en variables
	SELECT latitud,longitud,cod_finca,cod_identidad
    into @f_latitud,@f_longitud,@f_cod_finca,@f_cod_identidad
    from ihcafemonitoreo.tbl_div_finca gf
    WHERE gf.latitud=@latitude AND gf.longitud=@longitude  and gf.cod_identidad=@id_productor
  	order by gf.cod_identidad DESC LIMIT 1;
		
		#numero de fila que hay 
 	SELECT COUNT(*) into @canfilas FROM ihcafemonitoreo.tbl_div_finca mf
     WHERE mf.cod_identidad=@id_productor ;
		 
	if @tecnico_responsable='' then
		SET @tecnico_responsable='Pendiente';
	end if;
	
	##probar con un LIKE
	SELECT T.cod_tecnico into @codigoTecnico from ihcafemonitoreo.tbl_general_tecnico t 
		WHERE t.nombre=REPLACE(@tecnico_responsable,"_"," ") LIMIT 1;
	
			
SELECT pb.cod_pro_beneficia into @cod_beneficia  FROM ihcafemonitoreo.tbl_bene_proyecto_beneficia pb
  WHERE pb.proyecto_beneficia=@proyecto_beneficia limit 1;
 
	
if  @canfilas=0 and not EXISTS (SELECT fff.latitud,fff.longitud FROM 
		ihcafemonitoreo.tbl_bene_finca fff WHERE fff.latitud=@latitude and fff.longitud=@longitude LIMIT 1) then
#insertado en finnca	
	INSERT INTO ihcafemonitoreo.tbl_div_finca(
		cod_finca,ubicacion,
		latitud,longitud,cod_identidad,area,profundidad,cod_porcentaje,cod_tipo_suelo
		) 
	VALUES(
	@id_productor,@UbicacionGPS,@latitude,@longitude,@id_productor,@area_finca,@Profundidad_suelo,@porc_mat_org_suelo,@tipo_suelo
	);
		
	
#insertado en ficha	
INSERT INTO ihcafemonitoreo.tbl_div_ficha(

cod_ficha,cod_rubro,cod_dicision,cod_pro_beneficia,Fecha_visita,fecha_sistema,cod_identidad,cod_tecnico,cod_decision_per,cod_modo)  
VALUES(null,@rubro_implementar,@Disp_tiempo_Cap,@cod_beneficia,@fecha_visita,NOW(),@id_productor,
@codigoTecnico,@reg_incafe,@reg_incafe);


set @maximoFicha=(SELECT MAX(bf.cod_ficha) from ihcafemonitoreo.tbl_div_ficha bf LIMIT 1);	
#iinsertado de recomendacion
if @id_parentesco_per_reg <>" " then 
	INSERT INTO ihcafemonitoreo.tbl_div_recomendacion (cod_recomendacion,cod_parentesco,cod_ficha,id_registrada)
	VALUES(null,@parentesco_per_reg,@maximoFicha,@id_parentesco_per_reg);		
end if;

#insertado de ingresos

#insertado en tbl_ingresoss
set @vueltasIngreso=(SELECT COUNT(vvv.fuentes_ingresos) FROM vista_diversificacion_ingresos vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iIngreso=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_div_finca gnf LIMIT 1);	
	WHILE @iIngreso<@vueltasIngreso DO
		SELECT vvv.codigo_ingreso into @cod_ingreso
		FROM vista_diversificacion_ingresos vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iIngreso+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_div_h_ingresos(cod_h_ingreso,cod_ingreso,cod_ficha)
		VALUES(NULL,@cod_ingreso,@maximoFicha);
			
	set @iIngreso=@iIngreso+1;
	end while;	

#insertado en tbl_meses_flacos
set @vueltasFlacos=(SELECT COUNT(vvv.meses_flacos) FROM vista_diversificacion_meses_flaco vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iFlacos=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_div_finca gnf LIMIT 1);	
	WHILE @iFlacos<@vueltasFlacos DO
		SELECT vvv.codigo_mes into @cod_mes
		FROM vista_diversificacion_meses_flaco vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iFlacos+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_div_h_familia_mes(cod_h_familia_mes,cod_ficha,cod_mes)
		VALUES(NULL,@maximoFicha,@cod_mes);
			
	set @iFlacos=@iFlacos+1;
	end while;	
	
#insertado en tbl_meses_lluviosos
set @vueltasLluvia=(SELECT COUNT(vvv.meses_mas_lluviosos) FROM vista_diversificacion_lluviosos vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @iLluvia=0;
		#es el id ultimo de bene finca 
		#set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_div_finca gnf LIMIT 1);	
	WHILE @iLluvia<@vueltasLluvia DO
		SELECT vvv.codigo_mes into @cod_mesL
		FROM vista_diversificacion_lluviosos vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@iLluvia+1 LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_div_h_meses(cod_div_h_meses,cod_mes,cod_finca)
		VALUES(NULL,@cod_mesL,@id_productor);
			
	set @iLluvia=@iLluvia+1;
	end while;		
	





	select 1 as codigo, 'Se inserto Correctamente' as mensaje;
	
	  
		
		
		
		
	
ELSEIF   @canfilas>0  and 
 EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_div_finca fff WHERE fff.latitud=@latitude
	and fff.longitud=@longitude LIMIT 1) then 
#EXISTS (SELECT fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.longitud=@longitude) then
		set @string_Mensaje=concat('DATOS REPETIDOS ',@f_latitud,'-\t ',
                               @f_longitud);											 
			select 1 as codigo,@string_Mensaje mensaje;
	

	
else


SELECT COUNT(*) 
    into @n_finca 
    from ihcafemonitoreo.tbl_div_finca gf
    WHERE gf.latitud<>@latitude OR gf.longitud<>@longitude  and gf.cod_identidad=@Num_Identidad
  	 LIMIT 1;
			
	
 	select 1 as codigo,'nueva aldea' mensaje;
		
	end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `diversificacion_upd_rubros_suelos` ()  BEGIN

#rubros
	UPDATE tbl_div_ficha_productor set rubro_implementar='1' WHERE rubro_implementar='Aguacate_hass';
	UPDATE tbl_div_ficha_productor set rubro_implementar='2' WHERE rubro_implementar='Aguacate_Puro';
	UPDATE tbl_div_ficha_productor set rubro_implementar='3' WHERE rubro_implementar='Huerto_Casero';
	UPDATE tbl_div_ficha_productor set rubro_implementar='4' WHERE rubro_implementar='Limon_5*1';
	UPDATE tbl_div_ficha_productor set rubro_implementar='5' WHERE rubro_implementar='Aguacate_5*1';
	UPDATE tbl_div_ficha_productor set rubro_implementar='6' WHERE rubro_implementar='Frutales';
	UPDATE tbl_div_ficha_productor set rubro_implementar='7' WHERE rubro_implementar='Bisutería';
	UPDATE tbl_div_ficha_productor set rubro_implementar='8' WHERE rubro_implementar='Granjas_Avícol';
	UPDATE tbl_div_ficha_productor set rubro_implementar='9' WHERE rubro_implementar='Plátano';
	UPDATE tbl_div_ficha_productor set rubro_implementar='10' WHERE rubro_implementar='Alevines';
	UPDATE tbl_div_ficha_productor set rubro_implementar='11' WHERE rubro_implementar='Pasto_mejorado';
	UPDATE tbl_div_ficha_productor set rubro_implementar='12' WHERE rubro_implementar='Granos_Básicos';
	
#tipo suelo

UPDATE tbl_div_ficha_productor set tipo_suelo='1' WHERE tipo_suelo='Suelos_Humedos';
UPDATE tbl_div_ficha_productor set tipo_suelo='2' WHERE tipo_suelo='Suelos_secos';
UPDATE tbl_div_ficha_productor set tipo_suelo='3' WHERE tipo_suelo='Suelos_pantano';
UPDATE tbl_div_ficha_productor set tipo_suelo='4' WHERE tipo_suelo='Suelos_Pedrego';

#porcentaje
UPDATE tbl_div_ficha_productor set porc_mat_org_suelo='1' WHERE porc_mat_org_suelo='Pobre';
UPDATE tbl_div_ficha_productor set porc_mat_org_suelo='2' WHERE porc_mat_org_suelo='Media';
UPDATE tbl_div_ficha_productor set porc_mat_org_suelo='3' WHERE porc_mat_org_suelo='Rica';

#modo implementar
UPDATE tbl_div_ficha_productor set impleentar_proyecto='1' WHERE impleentar_proyecto='Grupal';
UPDATE tbl_div_ficha_productor set impleentar_proyecto='2' WHERE impleentar_proyecto='Individual';

#registro ihcafe?
UPDATE tbl_div_ficha_productor set reg_incafe='1' WHERE reg_incafe='SI';
UPDATE tbl_div_ficha_productor set reg_incafe='2' WHERE reg_incafe='NO';

#PARENTESCO Madre Hija

UPDATE tbl_div_ficha_productor set parentesco_per_reg='1' WHERE parentesco_per_reg='Esposa';
UPDATE tbl_div_ficha_productor set parentesco_per_reg='2' WHERE parentesco_per_reg='Madre';
UPDATE tbl_div_ficha_productor set parentesco_per_reg='3' WHERE parentesco_per_reg='Hija';

#registro ihcafe?
UPDATE tbl_div_ficha_productor set Disp_tiempo_Cap='1' WHERE Disp_tiempo_Cap='SI';
UPDATE tbl_div_ficha_productor set Disp_tiempo_Cap='2' WHERE Disp_tiempo_Cap='NO';



END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `fechaconvertidor` ()  BEGIN
	#Routine body goes here...
	Select v.fechavisita,DATE(STR_TO_DATE(v.fechavisita,'%d/%m/%Y')) 
from ihcafefichas.vista_ficha_finca v;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_prueba` (IN `pnombre` VARCHAR(45), IN `papellido` VARCHAR(45))  BEGIN
	#Routine body goes here...
	INSERT INTO tbl_prueba VALUES(pnombre, papellido);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lideres_delete_data` ()  NO SQL
BEGIN
DELETE from tbl_lid_ficha_productor;
alter TABLE tbl_lid_ficha_productor AUTO_INCREMENT=1;

DELETE from tbl_lid_coasociados;
alter TABLE tbl_lid_coasociados AUTO_INCREMENT=1;


end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lider_cursor_posicion_coasociados` ()  BEGIN
DECLARE ind,sumi VARCHAR(20);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT 	index1,COUNT(submission) from vista_lider_coasociados GROUP BY submission;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE # para un maximo de 8 variedades, nota:seria bueno optimizar con un ciclo donde el sumi seria la veces a ciclar
	WHEN sumi=1 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		
		WHEN sumi=9 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
		
		
WHEN sumi=10 THEN
			UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
WHEN sumi=11 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
		UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
		UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;
WHEN sumi=12 THEN
	UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
					
		UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;
			
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
WHEN sumi=13 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
						UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;
			
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
				UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
			
		
				
WHEN sumi=14 THEN
UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
				UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
			
		
WHEN sumi=15 THEN
	UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
				
				UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_lid_coasociados SET posicion=15 WHERE index1=ind+14;
		
		
WHEN sumi=16 THEN
	UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;	
					UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_lid_coasociados SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_lid_coasociados SET posicion=16 WHERE index1=ind+15;
		
WHEN sumi=17 THEN
		UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
				
							UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_lid_coasociados SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_lid_coasociados SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_lid_coasociados SET posicion=17 WHERE index1=ind+16;
		
WHEN sumi=18 THEN
	UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
				
									UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_lid_coasociados SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_lid_coasociados SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_lid_coasociados SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_lid_coasociados SET posicion=18 WHERE index1=ind+17;
		
WHEN sumi=19 THEN
	UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;	
				
					UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_lid_coasociados SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_lid_coasociados SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_lid_coasociados SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_lid_coasociados SET posicion=18 WHERE index1=ind+17;
		UPDATE tbl_lid_coasociados SET posicion=19 WHERE index1=ind+18;
		
		
WHEN sumi=20 THEN
UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
				
							UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_lid_coasociados SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_lid_coasociados SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_lid_coasociados SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_lid_coasociados SET posicion=18 WHERE index1=ind+17;
		UPDATE tbl_lid_coasociados SET posicion=19 WHERE index1=ind+18;
		UPDATE tbl_lid_coasociados SET posicion=20 WHERE index1=ind+19;
		
WHEN sumi=21 THEN
UPDATE tbl_lid_coasociados SET posicion=1 WHERE index1=ind;
		UPDATE tbl_lid_coasociados SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_lid_coasociados SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_lid_coasociados SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_lid_coasociados SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_lid_coasociados SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_lid_coasociados SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_lid_coasociados SET posicion=8 WHERE index1=ind+7;
		UPDATE tbl_lid_coasociados SET posicion=9 WHERE index1=ind+8;
				UPDATE tbl_lid_coasociados SET posicion=10 WHERE index1=ind+9;
				
				UPDATE tbl_lid_coasociados SET posicion=11 WHERE index1=ind+10;	
		UPDATE tbl_lid_coasociados SET posicion=12 WHERE index1=ind+11;
		UPDATE tbl_lid_coasociados SET posicion=13 WHERE index1=ind+12;
		UPDATE tbl_lid_coasociados SET posicion=14 WHERE index1=ind+13;
		UPDATE tbl_lid_coasociados SET posicion=15 WHERE index1=ind+14;
		UPDATE tbl_lid_coasociados SET posicion=16 WHERE index1=ind+15;
		UPDATE tbl_lid_coasociados SET posicion=17 WHERE index1=ind+16;
		UPDATE tbl_lid_coasociados SET posicion=18 WHERE index1=ind+17;
		UPDATE tbl_lid_coasociados SET posicion=19 WHERE index1=ind+18;
		UPDATE tbl_lid_coasociados SET posicion=20 WHERE index1=ind+19;
		UPDATE tbl_lid_coasociados SET posicion=21 WHERE index1=ind+20;
		
		
		
		else
		SELECT 'no aplica' as mensaje; 
END CASE;
		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lider_ingreso_productor` ()  BEGIN
	#Routine body goes here...
	
	START TRANSACTION;
	
	SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from ihcafefichas.vista_lider_ficha limit 1);

WHILE @contar<@t_repetir DO
set @can_productor=(SELECT COUNT(p.cod_identidad) from ihcafemonitoreo.tbl_lider_productor p);

  SELECT vf.identidad,vf.Nombre_productor,vf.sexo,
	vf.celular,vf.departamento,vf.municipio,vf.Aldea,vf.Agencia,vf.nacimiento
	
  into @numero_identidad,@nombre_productor,@sexo,@telefono,@departamento,@municipio,
	@aldea,@agencia,@nacimiento
	from ihcafefichas.vista_lider_ficha vf
  WHERE n =(@contar+1) ;
  ##verificar existencia en tbl productor		
  #buscar los codigos de sexo,municipio,agencia
	
	
  SELECT g.cod_genero into @codgenero from ihcafemonitoreo.tbl_general_genero g 
	WHERE g.genero=LOWER(@sexo)
  LIMIT 1;
	
	SELECT gm.cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	INNER JOIN ihcafemonitoreo.tbl_general_departamento gd on gm.cod_depart=gd.cod_depart
	WHERE gd.departamento=REPLACE(@departamento,"_"," ") and gm.municipio=@municipio LIMIT 1;

	#SELECT cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	#WHERE gm.cod_municipio=@municipio LIMIT 1; 	
	
	#SELECT a.cod_agencia INTO @codagencia from ihcafemonitoreo.tbl_general_agencia a
	#WHERE a.agencia2=@agencia LIMIT 1;
	
   # SELECT e.cod_etnias into @codEtnia from ihcafemonitoreo.tbl_general_etnias e WHERE etnias=@etnia LIMIT 1;
		
		if not EXISTS(SELECT gp.cod_identidad from ihcafemonitoreo.tbl_lider_productor gp 
				WHERE gp.cod_identidad=@numero_identidad) THEN
				
				INSERT into ihcafemonitoreo.tbl_lider_productor
					(cod_identidad,clave,nombre,cod_genero,celular,nacimiento,cod_pais,cod_municipio,cod_agencia) 
					VALUE(@numero_identidad,null,@nombre_productor,@codgenero,@telefono,@nacimiento,'137',@codigoMunicipio,
					@agencia);
		
		
		elseif EXISTS(SELECT gp.cod_identidad 
		from ihcafemonitoreo.tbl_lider_productor gp
		WHERE gp.cod_identidad=@numero_identidad) THEN
		SELECT 'datos repetidos' as mensaje;
	
	
end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lider_insert_coasociado` (IN `pnombre_replica` VARCHAR(40), IN `pidentidad` VARCHAR(20), IN `pgenero` VARCHAR(15), IN `psumision` VARCHAR(80))  BEGIN
	#Routine body goes here...INSERT INTO 
	INSERT INTO tbl_lid_coasociados(index1,nombre_replica,identidad,genero,submission,parent_index,posicion)
	SELECT NULL,pnombre_replica,pidentidad,pgenero,psumision,'',''
	WHERE not EXISTS (SELECT ta.identidad from tbl_lid_coasociados ta 
	WHERE ta.submission=psumision and ta.identidad=pidentidad LIMIT 1);
	
	#segunda forma 

#if not EXISTS (SELECT ta.Tipo_de_apoyo_que_requiere from tbl_bene_tipo_apoyo ta WHERE sumision=psumision and Tipo_de_apoyo_que_requiere=papoyo LIMIT 1) then
#INSERT INTO tbl_bene_tipo_apoyo(index1,Tipo_de_apoyo_que_requiere,sumision,Especifique_otros,parent_index,codigo_apoyo,posicion) VALUES(NULL,papoyo,psumision,'','','','');
#end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lider_insert_kb` (IN `start1` VARCHAR(15), IN `end1` VARCHAR(15), IN `username` VARCHAR(20), IN `sinSerial` VARCHAR(20), IN `subscriberid` VARCHAR(15), IN `deviceid` VARCHAR(15), IN `Fecha` VARCHAR(15), IN `departamento` VARCHAR(20), IN `municipio` VARCHAR(70), IN `Aldea` VARCHAR(70), IN `Ubicacion` VARCHAR(20), IN `latitude` VARCHAR(10), IN `longitud` VARCHAR(10), IN `altitud` VARCHAR(10), IN `presicion` VARCHAR(10), IN `Regional` VARCHAR(40), IN `Agencia` VARCHAR(60), IN `Nombre_Productor` VARCHAR(50), IN `identidad` VARCHAR(20), IN `sexo` VARCHAR(15), IN `nacimiento` VARCHAR(15), IN `celular` VARCHAR(15), IN `grupo` VARCHAR(40), IN `are_Finca` VARCHAR(15), IN `area_produccion` VARCHAR(15), IN `variedad` VARCHAR(35), IN `numero_productores` VARCHAR(5), IN `problemas` VARCHAR(70), IN `grupo_comunal` VARCHAR(40), IN `otra` VARCHAR(40), IN `proyecto` VARCHAR(45), IN `tecnico` VARCHAR(15), IN `indexxx` VARCHAR(20), IN `version` VARCHAR(15), IN `id` VARCHAR(15), IN `uuid` VARCHAR(15), IN `submission` VARCHAR(15), IN `time` VARCHAR(15), IN `validation` VARCHAR(10), IN `statuss` VARCHAR(5), IN `submitted` VARCHAR(15), IN `tags` VARCHAR(15))  BEGIN

INSERT INTO tbl_lid_ficha_productor VALUES(
null,
start1,
end1,
username,
sinSerial,
subscriberid,
deviceid,
Fecha,
departamento,
municipio,
Aldea,
Ubicacion,
latitude,
longitud,
altitud,
presicion,
Regional,
Agencia,
Nombre_Productor,
identidad,
sexo,
nacimiento,
celular,
grupo,
are_Finca,
area_produccion,
variedad,
numero_productores,
problemas,
grupo_comunal,
otra,
proyecto,
tecnico,
indexxx,
version,
id,
uuid,
submission,
time,
validation,
statuss,
submitted,
tags
);


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lider_normalizar` ()  NO SQL
BEGIN

START TRANSACTION;
SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from vista_lider_ficha);

WHILE @contar<@t_repetir DO


	select
	Fecha,ubicacion,latitude,longitud,grupo_pertenece,area_finca,area_produccion,Variedad_Dominante,numero_productores,problemas,
	grupo_comunal,especifique_otra,proyecto,identidad,tecnico,indexxx
		
	INTO 
	@Fecha,@ubicacion,@latitude,@longitud,@grupo_pertenece,@area_finca,@area_produccion,@Variedad_Dominante,@numero_productores
	,@problemas,@grupo_comunal,@especifique_otra,@proyecto,@identidad,@tecnico,@indexxx
		from vista_lider_ficha
    WHERE n =(@contar+1) ;
		#convertir strin a decimal
		
		SELECT gm.cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	INNER JOIN ihcafemonitoreo.tbl_general_departamento gd on gm.cod_depart=gd.cod_depart
	WHERE gd.departamento=@Departamento and gm.municipio=@Municipio LIMIT 1;	
		   
	set @Area_total=(SELECT CAST(@area_finca as Decimal(10,2)));
	set @area_cafe=(SELECT CAST(@area_produccion as Decimal(10,2)));
		
		#codigo de variedad
		SELECT vvv.cod_variedad into @variedad
		FROM ihcafemonitoreo.tbl_vulnerabilidad_variedades vvv WHERE  vvv.variedad=@Variedad_Dominante;
		
	#buscar en ihcafemonitoreo si existe y mapear en variables
	SELECT latitud,longitud,cod_finca,cod_identidad
    into @f_latitud,@f_longitud,@f_cod_finca,@f_cod_identidad
    from ihcafemonitoreo.tbl_lider_fincas gf
    WHERE gf.latitud=@latitude AND gf.longitud=@longitud  and gf.cod_identidad=@identidad
  	order by gf.cod_identidad DESC LIMIT 1;
		#numero de fila que hay en finca
 	SELECT COUNT(*) into @canfilas FROM ihcafemonitoreo.tbl_lider_fincas mf
     WHERE mf.cod_identidad=@identidad;
		 
	if @tecnico='' then
		SET @Tec_responsable='Pendiente';
	end if;
	
	
	
		
		
# para el insert ficha(Grupo_comunitario,caja_rural,coop_cafetalera,
#Asoc_productores,junta_agua,Org_cafetalera,)------------------------------------------------------------

 
	
SELECT pb.cod_pro_beneficia into @cod_beneficia  FROM ihcafemonitoreo.tbl_bene_proyecto_beneficia pb
  WHERE pb.proyecto_beneficia=@proyecto limit 1;
 
 #para el insert de vivienda-@Tipo_vivienda,@tipo_doc,@tipo_pared,
 #@tipo_techo,@tipo_piso-------------------------------------------------------------------------------

		

	if  @canfilas=0 and not EXISTS (SELECT fff.latitud,fff.longitud FROM 
		ihcafemonitoreo.tbl_lider_fincas fff WHERE fff.latitud=@latitude and fff.longitud=@longitud LIMIT 1) then
#insertado en finnca	
	INSERT INTO ihcafemonitoreo.tbl_lider_fincas(
		cod_finca,ubicacion,
		latitud,longitud,
		cod_identidad) 
	VALUES(
		@identidad,@ubicacion,@latitude,@longitud,@identidad);
		
#insertado en tbl_beneficiario coasociados con ciclo.
	set @vueltas=(SELECT COUNT(vvv.index1) FROM vista_lider_coasociados vvv 
		WHERE vvv.submission=@indexxx LIMIT 1);		
		SET @i=0;
		#es el id ultimo de bene finca 
		##set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @i<@vueltas DO
		SELECT vvv.identidad,vvv.nombre_replica,vvv.genero into @identidadC,@nombre_replicaC,@generoC
		FROM vista_lider_coasociados vvv WHERE vvv.submission=@indexxx and
		vvv.posicion=@i+1 LIMIT 1;
		
		SELECT g.cod_genero into @codgeneroC from ihcafemonitoreo.tbl_general_genero g 
	WHERE g.genero=LOWER(@generoC)
  LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_lider_coasociados(cod_coasociado,nombre,coa_identidad,cod_genero)
		VALUES(NULL,@nombre_replicaC,@identidadC,@codgeneroC);
		
		SET @maximoR=(SELECT MAX(cod_coasociado) from ihcafemonitoreo.tbl_lider_coasociados limit 1);
		INSERT into ihcafemonitoreo.tbl_lider_h_coasociados(cod_h_coasociado,cod_identidad,cod_coasociado)
		values(null,@identidad,@maximoR);
		
	##INSER DE LA HIPOSITORA
#set @maximo=(SELECT MAX(bf.cod_beneficiario) from ihcafemonitoreo.tbl_beneficiario_ficha bf LIMIT 1);				
	set @i=@i+1;
	end while;
	
					
#insertado en ficha	
INSERT INTO ihcafemonitoreo.tbl_lideres_ficha(
cod_ficha,cod_tecnico,cod_grupo,cod_problema,cod_identidad,cod_pro_beneficia,n_coasosicados,fecha_visita,fecha_registro)  
VALUES(null,@tecnico,@grupo_pertenece,@problemas,@identidad,@cod_beneficia,@numero_productores,@Fecha,NOW());

#insetado comunal y su especificacion
set @maximoFicha=(SELECT max(cod_ficha) from ihcafemonitoreo.tbl_lideres_ficha limit 1);
INSERT INTO ihcafemonitoreo.tbl_lider_h_comunal(cod_h_comunal,cod_ficha,cod_comunal,especificacion) 
VALUES(null,@maximoFicha,@grupo_comunal,@especifique_otra);


#insert en parcela 
INSERT INTO  ihcafemonitoreo.tbl_lider_parcela(cod_parcela,cod_finca,area_total,area_produccion,cod_variedad)
VALUES(NULL,@identidad,@area_finca,@area_produccion,@variedad);

	select 1 as codigo, 'Se inserto Correctamente' as mensaje;
	
	  	
ELSEIF   @canfilas>0  and 
 EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_lider_fincaS fff WHERE fff.latitud=@latitude
	and fff.longitud=@longitud LIMIT 1) then 
#EXISTS (SELECT fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.longitud=@Ubi_eve_long) then
		set @string_Mensaje=concat('DATOS REPETIDOS ',@f_latitud,'-\t ',
                               @f_longitud);											 
			select 1 as codigo,@string_Mensaje mensaje;
	

	
else
SELECT COUNT(*) 
    into @n_finca 
    from ihcafemonitoreo.tbl_lider_fincas gf
    WHERE gf.latitud<>@latitude OR gf.longitud<>@longitud  and gf.cod_identidad=@identidad
  	 LIMIT 1;


#insertado en finnca	
	INSERT INTO ihcafemonitoreo.tbl_lider_fincas(
		cod_finca,ubicacion,
		latitud,longitud,
		cod_identidad) 
	VALUES(
		CONCAT(@identidad,"-",@n_finca),@ubicacion,@latitude,@longitud,@identidad);
		
		

		
#insertado en tbl_beneficiario coasociados con ciclo.
	set @vueltas=(SELECT COUNT(vvv.index1) FROM vista_lider_coasociados vvv 
		WHERE vvv.submission=@indexxx LIMIT 1);		
		SET @i=0;
		#es el id ultimo de bene finca 
		##set @maximoF=(SELECT MAX(gnf.cod_finca) from ihcafemonitoreo.tbl_bene_finca gnf LIMIT 1);	
	WHILE @i<@vueltas DO
		SELECT vvv.identidad,vvv.nombre_replica,vvv.genero into @identidadC,@nombre_replicaC,@generoC
		FROM vista_lider_coasociados vvv WHERE vvv.submission=@indexxx and
		vvv.posicion=@i+1 LIMIT 1;
		
		SELECT g.cod_genero into @codgeneroC from ihcafemonitoreo.tbl_general_genero g 
	WHERE g.genero=LOWER(@generoC)
  LIMIT 1;
		
		INSERT INTO 
		ihcafemonitoreo.tbl_lider_coasociados(cod_coasociado,nombre,coa_identidad,cod_genero)
		VALUES(NULL,@nombre_replicaC,@identidadC,@codgeneroC);
		
		SET @maximoR=(SELECT MAX(cod_coasociado) from ihcafemonitoreo.tbl_lider_coasociados limit 1);
		INSERT into ihcafemonitoreo.tbl_lider_h_coasociados(cod_h_coasociado,cod_identidad,cod_coasociado)
		values(null,@identidad,@maximoR);
		
	##INSER DE LA HIPOSITORA
#set @maximo=(SELECT MAX(bf.cod_beneficiario) from ihcafemonitoreo.tbl_beneficiario_ficha bf LIMIT 1);				
	set @i=@i+1;
	end while;
	
					
#insertado en ficha	
INSERT INTO ihcafemonitoreo.tbl_lideres_ficha(
cod_ficha,cod_tecnico,cod_grupo,cod_problema,cod_identidad,cod_pro_beneficia,n_coasosicados,fecha_visita,fecha_registro)  
VALUES(null,@tecnico,@grupo_pertenece,@problemas,@identidad,@cod_beneficia,@numero_productores,@Fecha,NOW());

#insetado comunal y su especificacion
set @maximoFicha=(SELECT max(cod_ficha) from ihcafemonitoreo.tbl_lideres_ficha limit 1);
INSERT INTO ihcafemonitoreo.tbl_lider_h_comunal(cod_h_comunal,cod_ficha,cod_comunal,especificacion) 
VALUES(null,@maximoFicha,@grupo_comunal,@especifique_otra);


#insert en parcela 
INSERT INTO  ihcafemonitoreo.tbl_lider_parcela(cod_parcela,cod_finca,area_total,area_produccion,cod_variedad)
VALUES(NULL,CONCAT(@identidad,"-",@n_finca),@area_finca,@area_produccion,@variedad);

		

 	select 1 as codigo,'nueva aldea' mensaje;
		
	end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lider_upd_grupo_pertenece` ()  BEGIN
#asignar los codigos de grupo pertenece
UPDATE tbl_lid_ficha_productor SET grupo_pertenece=1 WHERE grupo_pertenece='Caficultura_So';
UPDATE tbl_lid_ficha_productor SET grupo_pertenece=2 WHERE grupo_pertenece='Gerencia_de_Ne';
UPDATE tbl_lid_ficha_productor SET grupo_pertenece=3 WHERE grupo_pertenece='ECA_LOCAL';

#asignar los codigos de problemas
UPDATE tbl_lid_ficha_productor SET problemas=1 WHERE problemas='Acceso_al_cred';
UPDATE tbl_lid_ficha_productor SET problemas=2 WHERE problemas='Falta_de_asist';
UPDATE tbl_lid_ficha_productor SET problemas=3 WHERE problemas='Falta_de_apoyo';

#grupo comunal

UPDATE tbl_lid_ficha_productor SET grupo_comunal=1 WHERE grupo_comunal='Cooperativa_Ca';
UPDATE tbl_lid_ficha_productor SET grupo_comunal=2 WHERE grupo_comunal='Patronato';
UPDATE tbl_lid_ficha_productor SET grupo_comunal=3 WHERE grupo_comunal='Otra';
UPDATE tbl_lid_ficha_productor SET grupo_comunal=4 WHERE grupo_comunal='Ninguna';

	 
	
	

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba3_copy1` ()  NO SQL
BEGIN

START TRANSACTION;
SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from vista_ficha_finca);

WHILE @contar<@t_repetir DO
#recorrer la vista y mapear Select v.fechavisita,DATE(STR_TO_DATE(v.fechavisita,'%d/%m/%Y')) DATE(STR_TO_DATE(fechavisita,'%d/%m/%Y')), el cast para 


	select numero_identidad,nombre_productor,latitu,logitud,municipio,aldea,pendiente,area_total_finca,
	area_total_cafe,produccion_promedio,edad_cafetal,meses_seco,observacion,fechavisita,nombre_tecnico,
	
	p1cambios_temperatura,c1practica_instruccion,p2lluvias_irregulares,c2practica_instruccion,
	p3inuncaciones_derrumbe,c3practica_instruccion,p4riesgo_huracanes_tt,c4practica_instruccion,
	p5disminucion_agua,c5practica_instruccion,p6vientos_fuerte,c6practica_instruccion,
	p7señales_erosion,c7practica_instruccion,p8practica_suelo,c8practica_instruccion,
	p9f_practica_conservacion,c9practica_instruccion,p10ausente_hierva,c10practica_instruccion,
	p11floracion_irregular,c11practica_instruccion,p12aumento_defoliacion,c12practica_instruccion,
	p13enfermedad_plantas,c13practica_instrucciones,p14diversificacion_cafetal,c14practica_instruccion,
	p15cafetale_sol,c15practica_instruccion,p16cafetales_viejo,c16practica_instruccion,
	p17ausente_variedades,c17practica_instruccion,p18ausente_practica,c18practica_instruccion,p19ausente_x_año,c19practica_instruccion,p20produccion_bajo,c20practica_instruccion,p21aplico_200kg,c21practica_instruccion,
	p22ausente_abono,c22practica_instruccion,p23quebradas_sin_cobertura,c23practica_instruccion,
	p24sin_socios_arboles,c24practica_instruccion,p25ausente_procesos,c25practica_instrucciones,
	
	c1variedades_tolerante,c1sistema_produccion,c1implementar_sistema,c2cosecha_agua,c2riesgo_adecuada,			 c2aplicacion_frecuente_foliares,c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo,
	c4mantenerse_infomado,c4evitar_cultivo_riesgo,
	
	c5cosecha_agua,c5manejo_sombra,c5cobertura_suelo,
	c6barreras_rompe_viento,c6manejo_sombra,
	c7conservacion_suelos,c7menejo_selectivo,c7manejo_sombra,
	c8programa_fertilizacion,c8aporte_organica,c8manejo_sombra,
	c9practica_conservacion,
	c10m_seleccion_hierva,c10manejo_sombra,
	c11programa_fertilizacion,c11riesgo_adecuao,c11manejo_sombra,
	c12programa_fertilizacion,c12riesgo_adecuado,c12fuente_laguinosas,
	c13diagnostico_incidencia,c13medidas_climas,c13informado_alerta,c13manejo_cafetales,c13manejo_sombra,c13combinar_lotes,
	c14m_sistemas_agroforestales,
	c15condicion_sombra,
	c16programa_renovacion,
	c17identificar_disponibilidad,c17t_lotes_variedades,
	c18poscosecha_programa,
	c19contar_resiembras,
	c20diagnosticos_cafetales,c20analisis_quimico,c20r_programa_fertilizacion,c20necesidad_sustituto,
	c21sustituir_o_complementar,c21buscar_productividad,
	c22incorporar_abono,c22elaborar_abono,
	c23recuperacion_cobertura,
	c24arreglos_sistema,
	c25fortalecer_acciones,
	indexxx,
	departamento
	
	
	
	
	
	INTO @identidad,@nombre_productor,@latitu,@logitud,@municipio,@aldea,
	@pendiente,@area_total_finca,
	@area_total_cafe,@produccion_promedio,@edad_cafetal,@meses_seco,@observacion,@fechavisita,@nombre_tecnico,
	
	@p1cambios_temperatura,@c1practica_instruccion,@p2lluvias_irregulares,@c2practica_instruccion,
	@p3inuncaciones_derrumbe,@c3practica_instruccion,@p4riesgo_huracanes_tt,@c4practica_instruccion,
	@p5disminucion_agua,@c5practica_instruccion,@p6vientos_fuerte,@c6practica_instruccion,
	@p7señales_erosion,@c7practica_instruccion,@p8practica_suelo,@c8practica_instruccion,
	@p9f_practica_conservacion,@c9practica_instruccion,@p10ausente_hierva,@c10practica_instruccion,
	@p11floracion_irregular,@c11practica_instruccion,@p12aumento_defoliacion,@c12practica_instruccion,
	@p13enfermedad_plantas,@c13practica_instrucciones,@p14diversificacion_cafetal,@c14practica_instruccion,
	@p15cafetale_sol,@c15practica_instruccion,@p16cafetales_viejo,@c16practica_instruccion,
	@p17ausente_variedades,@c17practica_instruccion,@p18ausente_practica,@c18practica_instruccion,@p19ausente_x_año,  
	@c19practica_instruccion,@p20produccion_bajo,@c20practica_instruccion,@p21aplico_200kg,@c21practica_instruccion,
	@p22ausente_abono,@c22practica_instruccion,@p23quebradas_sin_cobertura,@c23practica_instruccion,
	@p24sin_socios_arboles,@c24practica_instruccion,@p25ausente_procesos,@c25practica_instrucciones,
	
	@c1variedades_tolerante,@c1sistema_produccion,@c1implementar_sistema,@c2cosecha_agua,@c2riesgo_adecuada,
	@c2aplicacion_frecuente_foliares,@c3conservacion_suelo,@c3diseño_sombre,@c3evitar_cultivo_riesgo,
	@c4mantenerse_infomado,@c4evitar_cultivo_riesgo,
	
	
	@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	@c6barreras_rompe_viento,@c6manejo_sombra,
	@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
	@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
	@c9practica_conservacion,
	@c10m_seleccion_hierva,@c10manejo_sombra,
	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
	@c14m_sistemas_agroforestales,
	@c15condicion_sombra,
	@c16programa_renovacion,
	@c17identificar_disponibilidad,@c17t_lotes_variedades,
	@c18poscosecha_programa,
	@c19contar_resiembras,
	@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
	@c21sustituir_o_complementar,@c21buscar_productividad,
	@c22incorporar_abono,@c22elaborar_abono,
	@c23recuperacion_cobertura,
	@c24arreglos_sistema,
	@c25fortalecer_acciones,
	@indexxx,@departamento
 
		from vista_ficha_finca 
    WHERE n =(@contar+1) ;
		#convertir strin a decimal
		   
	set @pendienteDecimal=(SELECT CAST(@pendiente as Decimal(10,2)));
			set @area_total_fincaDecimal=(SELECT CAST(@area_total_finca as DECIMAL(10,2)));
			SET @area_total_cafeDecimal =(SELECT CAST(@area_total_cafe as DECIMAL(10,2)));
			set @produccion_promedioDecimal=(SELECT CAST(@produccion_promedio as DECIMAL(10,2)));
		
		
	#buscar en ihcafemonitoreo si existe y mapear en variables
		SELECT latitud,longitud,cod_finca,cod_identidad
    into @f_latitud,@f_longitud,@f_cod_finca,@f_cod_identidad
    from ihcafemonitoreo.tbl_general_finca gf
    WHERE gf.latitud=@latitu AND gf.longitud=@logitud  and gf.cod_identidad=@identidad
  	order by gf.cod_identidad DESC LIMIT 1;
  #numero de fila que hay 
 	 SELECT COUNT(*) into @canfilas FROM ihcafemonitoreo.tbl_general_finca mf
     WHERE mf.cod_identidad=@identidad ;
		 
		 # para extraer el codigo de las tablas  municipio y tecnicos y preguntas
	#SELECT gm.cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	#INNER JOIN ihcafemonitoreo.tbl_general_departamento gd on gm.cod_depart=gd.cod_depart
	#WHERE gd.departamento=@departamento and gm.municipio=@municipio LIMIT 1;
	
	SELECT T.cod_tecnico into @codigoTecnico from ihcafemonitoreo.tbl_general_tecnico t 
	WHERE t.nombre= @nombre_tecnico LIMIT 1;
	
	if  @canfilas=0 and not EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.latitud=@latitu and fff.longitud=@logitud LIMIT 1) then
	 
	INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) 
	VALUES(@identidad,@nombre_productor,@latitu,@logitud,@identidad);
	select 1 as codigo, 'Se inserto Correctamente' as mensaje;
	
	#insertado en vulnerabilidadficha
			
	INSERT INTO ihcafemonitoreo.tbl_vulnerabilidades_ficha(cod_vulnerabilidad,cod_identidad,cod_municipio,pendiente,
	area_total_finca,area_total_cafe,p_promedio,edad_cafetal,cod_finca,cod_tecnico,num_meses_seco,fecha_visita,sitio,
	observacion,fecha_i)
	 VALUES(NULL,@identidad,@municipio,@pendienteDecimal,@area_total_fincaDecimal,@area_total_cafeDecimal,
	 @produccion_promedioDecimal,@edad_cafetal,@identidad,@codigoTecnico,@meses_seco,@fechavisita,@aldea,@observacion,
	 @fechavisita);	
	 
	 #set @maximo=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
	# set @vueltas=(SELECT COUNT(vvv.codigo_variedad) FROM vista_vulnerabilidad_variedades vvv 
	 #WHERE vvv.sumision=@indexxx LIMIT 1);
		#if @vueltas=1 THEN
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=1 ;
	 #elseif @vueltas=2 then
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=1 ;
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=2 ;
	 #end if;
	 
	 
	 
	 
#insertado en variedades solo esta para dos
set @vueltas=(SELECT COUNT(vvv.codigo_variedad) FROM vista_vulnerabilidad_variedades vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @i=1;
		#es el id de ficha vulnerabilidad
		set @maximo=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
	#WHILE @i<@vueltas DO
	
	if @vueltas=1 then
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=1 LIMIT 1;
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo);
		
	ELSEIF @vueltas=2 then
	
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=1 LIMIT 1;
		SELECT vvv.codigo_variedad into @cod_variedad_f2
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=2 LIMIT 1;
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo);
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo);
	
	 end if;
	 
	 
		
 ##SET @i = @i + 1;
#END WHILE;

	
			
			
#@c1variedades_tolerante,@c1sistema_produccion,@c1implementar_sistema,
CASE#insertado en tbl_h_respuesta
		WHEN UPPER(TRIM(@p1cambios_temperatura))='SI' THEN
			
			SET @c1variedad_tolerante=(SELECT CONVERT(@c1variedades_tolerante,SIGNED));
			set @c1SistemaProduccion=(SELECT CONVERT(@c1sistema_produccion,SIGNED));
			set @c1ImplementarSistema=(SELECT CONVERT(@c1implementar_sistema,SIGNED));
			
			if @c1variedad_tolerante='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,1,@identidad);
			end if;	
			if @c1SistemaProduccion='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,2,@identidad);
			end if;
			if @c1ImplementarSistema='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,3,@identidad);
			end if;
			IF @c1variedad_tolerante=" " AND @c1SistemaProduccion=" " AND @c1ImplementarSistema=" " THEN
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,5,@identidad);
			END IF;
				
			
		WHEN UPPER(TRIM(@p1cambios_temperatura))='NO' THEN
			#SELECT vr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vr 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on vr.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p1cambios_temperatura) and  vr.cod_pregunta=1 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,4,@identidad);
		WHEN UPPER(TRIM(@p1cambios_temperatura))='QUIZAS' THEN 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,@identidad);
		ELSE 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,@identidad);
		END CASE;
CASE	#@c2cosecha_agua,@c2riesgo_adecuada,#@c2aplicacion_frecuente_foliares
	WHEN TRIM(@p2lluvias_irregulares)='Si' THEN
	
				set @c2CosechaAgua=(SELECT CONVERT(@c2cosecha_agua,SIGNED));
		set @c2RiesgoAdecuada=(SELECT CONVERT(@c2riesgo_adecuada,SIGNED));
		set @c2AplicacionFoliares=(SELECT CONVERT(@c2aplicacion_frecuente_foliares,SIGNED));
			
		
		if @c2CosechaAgua='1' then
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,6,@identidad);
		end if;
		if 	@c2riesgo_adecuada='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,7,@identidad);
		end if;
		if @c2AplicacionFoliares='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,8,@identidad);
		end if;
		
		IF @c2CosechaAgua=' ' AND @c2RiesgoAdecuada=' ' AND @c2AplicacionFoliares=' ' THEN##QUE SEA POR 0 TAMBIEN. 
			##agregar en todas		
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,10,@identidad);
		END IF;
		
		
	WHEN TRIM(@p2lluvias_irregulares)='No' THEN
		#SELECT vrr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vrr 		
		#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion dd on vrr.cod_desicion=dd.cod_desicion
		#WHERE dd.desisicon=UPPER(@p2lluvias_irregulares) and  vrr.cod_pregunta=2 LIMIT 1;
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,9,@identidad);
	WHEN TRIM(@p2lluvias_irregulares)='Quizas' THEN
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,@identidad);
	ELSE
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,@identidad);
		
END CASE;		



CASE#c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo
		 WHEN TRIM(@p3inuncaciones_derrumbe)='Si' THEN
			set @c3ConservacionSuelo=(SELECT CONVERT(@c3conservacion_suelo,SIGNED));
			set @c3DiseñoSombra=(SELECT CONVERT(@c3diseño_sombre,SIGNED));
			set @c3EvitarCultivoRiesgo=(SELECT CONVERT(@c3evitar_cultivo_riesgo,SIGNED));
		 
				if @c3ConservacionSuelo='1' then	
						#insertado en tbl_h_respuesta
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,11,@identidad);
				end if;
				if @c3DiseñoSombra='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,12,@identidad);
				end if;
				if @c3EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,13,@identidad);
				end if;		
				IF @c3ConservacionSuelo=' ' AND @c3DiseñoSombra=' ' AND @c3EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,15,@identidad);
				END IF;		
				
		WHEN TRIM(@p3inuncaciones_derrumbe)='No' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,14,@identidad);
		WHEN TRIM(@p3inuncaciones_derrumbe)='Quizas' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,15,@identidad);
	  ELSE ##agregar en todas
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,15,@identidad)	;
		END CASE;


		
case#@c4mantenerse_infomado,@c4evitar_cultivo_riesgo		
		WHEN TRIM(@p4riesgo_huracanes_tt)='Si' THEN
				set @c4MantenerInformado=(SELECT CONVERT(@c4mantenerse_infomado,SIGNED));
				set @c4EvitarCultivoRiesgo=(SELECT CONVERT(@c4evitar_cultivo_riesgo,SIGNED));
							
				if @c4MantenerInformado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,16,@identidad);
				end if;
				if @c4EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,17,@identidad);
				end if;
				IF @c4MantenerInformado=' ' AND @c4EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,19,@identidad);
				END IF;		
						
		WHEN TRIM(@p4riesgo_huracanes_tt)='No' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,18,@identidad);
		WHEN TRIM(@p4riesgo_huracanes_tt)='Quizas' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,@identidad);
		ELSE
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,@identidad);
		END CASE;

case#@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	WHEN TRIM(@p5disminucion_agua)='Si' THEN
		set @c5CosechaAgua=(SELECT CONVERT(@c5cosecha_agua,SIGNED));
		SET @c5ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
		SET @c5CoberturaSuelo=(SELECT convert(@c5cobertura_suelo,SIGNED));
		
		if @c5CosechaAgua='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,20,@identidad);
				end if;
		if @c5ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,21,@identidad);
				end if;
		if @c5CoberturaSuelo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,22,@identidad);
				end if;		
			IF @c5CosechaAgua=' ' AND @c5ManejoSombra=' '  AND @c5CoberturaSuelo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,24,@identidad);
				END IF;		
		WHEN 	TRIM(@p5disminucion_agua)='No' THEN
						
			#insertado en tbl_h_respuesta
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,23,@identidad);
		WHEN 	TRIM(@p5disminucion_agua)='Quizas' THEN	
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,24,@identidad);
		ELSE
		
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,24,@identidad);
		END case;

case#@c6barreras_rompe_viento,@c6manejo_sombra,
		WHEN TRIM(@p6vientos_fuerte)='Si' THEN
					set @c6BarreraRompeViento=(SELECT CONVERT(@c6barreras_rompe_viento,SIGNED));
					SET @c6ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
				if @c6BarreraRompeViento='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,25,@identidad);
				end if;
				if @c6ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,26,@identidad);
				end if;	
				IF @c6BarreraRompeViento=' ' AND @c6ManejoSombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,28,@identidad);
				END IF;		
		WHEN TRIM(@p6vientos_fuerte)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,27,@identidad);
		WHEN TRIM(@p6vientos_fuerte)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,@identidad);
		END CASE;
		
		
		
		
CASE #@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
		WHEN TRIM(@p7señales_erosion)='Si' THEN
					set @c7conservacion_suelos=(SELECT CONVERT(@c7conservacion_suelos,SIGNED));
					SET @c7menejo_selectivo=(SELECT CONVERT(@c7menejo_selectivo,SIGNED));
					SET @c7manejo_sombra=(SELECT CONVERT(@c7manejo_sombra,SIGNED));
				if @c7conservacion_suelos='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,29,@identidad);
				end if;
				if @c7menejo_selectivo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,30,@identidad);
				end if;	
				if @c7manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,31,@identidad);
				end if;	
				IF @c7conservacion_suelos=' ' AND @c7menejo_selectivo=' '  AND @c7manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,33,@identidad);
				END IF;		
		WHEN TRIM(@p7señales_erosion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,32,@identidad);
		WHEN TRIM(@p7señales_erosion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,@identidad);
		END CASE;
		
		

		CASE #@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
		WHEN TRIM(@p8practica_suelo)='Si' THEN
					set @c8programa_fertilizacion=(SELECT CONVERT(@c8programa_fertilizacion,SIGNED));
					SET @c8aporte_organica=(SELECT CONVERT(@c8aporte_organica,SIGNED));
					SET @c8manejo_sombra=(SELECT CONVERT(@c8manejo_sombra,SIGNED));
				if @c8programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,34,@identidad);
				end if;
				if @c8aporte_organica='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,35,@identidad);
				end if;	
				if @c8manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,36,@identidad);
				end if;	
				IF @c8programa_fertilizacion=' ' AND @c8aporte_organica=' '  AND @c8manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,38,@identidad);
				END IF;		
		WHEN TRIM(@p8practica_suelo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,37,@identidad);
		WHEN TRIM(@p8practica_suelo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,@identidad);
		END CASE;
		
			
		CASE #@c9practica_conservacion,
		WHEN TRIM(@p9f_practica_conservacion)='Si' THEN
					set @c9practica_conservacion=(SELECT CONVERT(@c9practica_conservacion,SIGNED));
				
				if @c9practica_conservacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,39,@identidad);
				end if;
				
				IF @c9practica_conservacion=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,41,@identidad);
				END IF;		
		WHEN TRIM(@p9f_practica_conservacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,40,@identidad);
		WHEN TRIM(@p9f_practica_conservacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,@identidad);
		END CASE;
		
		
		CASE #@c10m_seleccion_hierva,@c10manejo_sombra,
		WHEN TRIM(@p10ausente_hierva)='Si' THEN
					set @c10m_seleccion_hierva=(SELECT CONVERT(@c10m_seleccion_hierva,SIGNED));
					SET @c10manejo_sombra=(SELECT CONVERT(@c10manejo_sombra,SIGNED));
					
				if @c10m_seleccion_hierva='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,42,@identidad);
				end if;
				if @c10manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,43,@identidad);
				end if;	
	
	
				IF @c10m_seleccion_hierva=' ' AND @c10manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,45,@identidad);
				END IF;		
		WHEN TRIM(@p10ausente_hierva)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,44,@identidad);
		WHEN TRIM(@p10ausente_hierva)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,@identidad);
		END CASE;
	
		

	CASE #	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
		WHEN TRIM(@p11floracion_irregular)='Si' THEN
					set @c11programa_fertilizacion=(SELECT CONVERT(@c11programa_fertilizacion,SIGNED));
					SET @c11riesgo_adecuao=(SELECT CONVERT(@c11riesgo_adecuao,SIGNED));
					SET @c11manejo_sombra=(SELECT CONVERT(@c11manejo_sombra,SIGNED));
					
				if @c11programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,46,@identidad);
				end if;
				if @c11riesgo_adecuao='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,47,@identidad);
				end if;	
				if @c11manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,48,@identidad);
				end if;	
	
	
				IF @c11programa_fertilizacion=' ' AND @c11riesgo_adecuao=' ' AND @c11manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,50,@identidad);
				END IF;		
		WHEN TRIM(@p11floracion_irregular)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,49,@identidad);
		WHEN TRIM(@p11floracion_irregular)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,@identidad);
		END CASE;
		
		CASE #	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
		WHEN TRIM(@p12aumento_defoliacion)='Si' THEN
					set @c12programa_fertilizacion=(SELECT CONVERT(@c12programa_fertilizacion,SIGNED));
					SET @c12riesgo_adecuado=(SELECT CONVERT(@c12riesgo_adecuado,SIGNED));
					SET @c12fuente_laguinosas=(SELECT CONVERT(@c12fuente_laguinosas,SIGNED));
					
				if @c12programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,51,@identidad);
				end if;
				if @c12riesgo_adecuado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,52,@identidad);
				end if;	
				if @c12fuente_laguinosas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,53,@identidad);
				end if;	
	
	
				IF @c12programa_fertilizacion=' ' AND @c12riesgo_adecuado=' ' AND @c12fuente_laguinosas=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,55,@identidad);
				END IF;		
		WHEN TRIM(@p12aumento_defoliacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,54,@identidad);
		WHEN TRIM(@p12aumento_defoliacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,@identidad);
		END CASE;
		
CASE #	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
		WHEN TRIM(@p13enfermedad_plantas)='Si' THEN
					set @c13diagnostico_incidencia=(SELECT CONVERT(@c13diagnostico_incidencia,SIGNED));
					SET @c13medidas_climas=(SELECT CONVERT(@c13medidas_climas,SIGNED));
					SET @c13informado_alerta=(SELECT CONVERT(@c13informado_alerta,SIGNED));
					
					set @c13manejo_cafetales=(SELECT CONVERT(@c13manejo_cafetales,SIGNED));
					SET @c13manejo_sombra=(SELECT CONVERT(@c13manejo_sombra,SIGNED));
					SET @c13combinar_lotes=(SELECT CONVERT(@c13combinar_lotes,SIGNED));
					
				if @c13diagnostico_incidencia='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,56,@identidad);
				end if;
				if @c13medidas_climas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,57,@identidad);
				end if;	
				if @c13informado_alerta='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,58,@identidad);
				end if;	
					
				if @c13manejo_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,59,@identidad);
				end if;
				if @c13manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,60,@identidad);
				end if;	
				if @c13combinar_lotes='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,61,@identidad);
				end if;	
	
	
	
				IF @c13diagnostico_incidencia=' ' AND @c13medidas_climas=' ' AND @c13informado_alerta=' ' and @c13manejo_cafetales=' ' AND @c13manejo_sombra=' ' 
				AND @c13combinar_lotes=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,63,@identidad);
				END IF;		
		WHEN TRIM(@p13enfermedad_plantas)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,62,@identidad);
		WHEN TRIM(@p13enfermedad_plantas)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,@identidad);
		END CASE;			
	
CASE #@c14m_sistemas_agroforestales,
		WHEN TRIM(@p14diversificacion_cafetal)='Si' THEN
					set @c14m_sistemas_agroforestales=(SELECT CONVERT(@c14m_sistemas_agroforestales,SIGNED));
	
					
				if @c14m_sistemas_agroforestales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,64,@identidad);
				end if;
				
				IF @c14m_sistemas_agroforestales=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,66,@identidad);
				END IF;		
		WHEN TRIM(@p14diversificacion_cafetal)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,65,@identidad);
		WHEN TRIM(@p14diversificacion_cafetal)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,@identidad);
		END CASE;	

CASE #@c15condicion_sombra
		WHEN TRIM(@p15cafetale_sol)='Si' THEN
					set @c15condicion_sombra=(SELECT CONVERT(@c15condicion_sombra,SIGNED));
	
					
				if @c15condicion_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,67,@identidad);
				end if;
				
				IF @c15condicion_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,69,@identidad);
				END IF;		
		WHEN TRIM(@p15cafetale_sol)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,68,@identidad);
		WHEN TRIM(@p15cafetale_sol)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,@identidad);
		END CASE;			
		
CASE #@c16programa_renovacion,
		WHEN TRIM(@p16cafetales_viejo)='Si' THEN
					set @c16programa_renovacion=(SELECT CONVERT(@c16programa_renovacion,SIGNED));
	
					
				if @c16programa_renovacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,70,@identidad);
				end if;
				
				IF @c16programa_renovacion=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,72,@identidad);
				END IF;		
		WHEN TRIM(@p16cafetales_viejo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,71,@identidad);
		WHEN TRIM(@p16cafetales_viejo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,@identidad);
		END CASE;			
		
CASE #@c17identificar_disponibilidad,@c17t_lotes_variedades,
		WHEN TRIM(@p17ausente_variedades)='Si' THEN
					set @c17identificar_disponibilidad=(SELECT CONVERT(@c17identificar_disponibilidad,SIGNED));
						set @c17t_lotes_variedades=(SELECT CONVERT(@c17t_lotes_variedades,SIGNED));
	
					
				if @c17identificar_disponibilidad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,73,@identidad);
				end if;
						
				if @c17t_lotes_variedades='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,74,@identidad);
				end if;
				
				IF @c17identificar_disponibilidad=' '  and @c17t_lotes_variedades=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,76,@identidad);
				END IF;		
				
				
		WHEN TRIM(@p17ausente_variedades)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,75,@identidad);
		WHEN TRIM(@p17ausente_variedades)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,@identidad);
		END CASE;			
		
		
CASE #@c18poscosecha_programa,
		WHEN TRIM(@p18ausente_practica)='Si' THEN
					set @c18poscosecha_programa=(SELECT CONVERT(@c18poscosecha_programa,SIGNED));
	
					
				if @c18poscosecha_programa='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,77,@identidad);
				end if;
				
				IF @c18poscosecha_programa=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,79,@identidad);
				END IF;		
		WHEN TRIM(@p18ausente_practica)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,78,@identidad);
		WHEN TRIM(@p18ausente_practica)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,@identidad);
		END CASE;				
		
CASE #@c19contar_resiembras,
		WHEN TRIM(@p19ausente_x_año)='Si' THEN
					set @c19contar_resiembras=(SELECT CONVERT(@c19contar_resiembras,SIGNED));
	
					
				if @c19contar_resiembras='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,80,@identidad);
				end if;
				
				IF @c19contar_resiembras=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,82,@identidad);
				END IF;		
		WHEN TRIM(@p19ausente_x_año)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,81,@identidad);
		WHEN TRIM(@p19ausente_x_año)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,@identidad);
		END CASE;				
		
CASE #@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
		WHEN TRIM(@p20produccion_bajo)='Si' THEN
					set @c20diagnosticos_cafetales=(SELECT CONVERT(@c20diagnosticos_cafetales,SIGNED));
					set @c20analisis_quimico=(SELECT CONVERT(@c20analisis_quimico,SIGNED));
					set @c20r_programa_fertilizacion=(SELECT CONVERT(@c20r_programa_fertilizacion,SIGNED));
					set @c20necesidad_sustituto=(SELECT CONVERT(@c20necesidad_sustituto,SIGNED));
	
					
				if @c20diagnosticos_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,83,@identidad);
				end if;
				if @c20analisis_quimico='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,84,@identidad);
				end if;
				if @c20r_programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,85,@identidad);
				end if;
				if @c20necesidad_sustituto='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,86,@identidad);
				end if;
				
				IF @c20diagnosticos_cafetales=' ' and @c20analisis_quimico=' ' and @c20r_programa_fertilizacion=' ' and @c20necesidad_sustituto=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,88,@identidad);
				end if;		
				
		WHEN TRIM(@p20produccion_bajo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,87,@identidad);
		WHEN TRIM(@p20produccion_bajo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,@identidad);
		END CASE;		
		
		
CASE #@c21sustituir_o_complementar,@c21buscar_productividad,
		WHEN TRIM(@p21aplico_200kg)='Si' THEN
					set @c21sustituir_o_complementar=(SELECT CONVERT(@c21sustituir_o_complementar,SIGNED));
					set @c21buscar_productividad=(SELECT CONVERT(@c21buscar_productividad,SIGNED));
					
	
					
				if @c21sustituir_o_complementar='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,89,@identidad);
				end if;
				if @c21buscar_productividad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,90,@identidad);
				end if;
				
				
				IF @c21sustituir_o_complementar=' ' and @c21buscar_productividad=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,92,@identidad);
				end if;		
				
		WHEN TRIM(@p21aplico_200kg)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,91,@identidad);
		WHEN TRIM(@p21aplico_200kg)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,@identidad);
		END CASE;		


CASE #	@c22incorporar_abono,@c22elaborar_abono,
		WHEN TRIM(@p22ausente_abono)='Si' THEN
					set @c22incorporar_abono=(SELECT CONVERT(@c22incorporar_abono,SIGNED));
					set @c22elaborar_abono=(SELECT CONVERT(@c22elaborar_abono,SIGNED));				
				if @c22incorporar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,93,@identidad);
				end if;
				if @c22elaborar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,94,@identidad);
				end if;			
				IF @c22incorporar_abono=' ' and @c22elaborar_abono=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,96,@identidad);
				end if;		
				
		WHEN TRIM(@p22ausente_abono)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,95,@identidad);
		WHEN TRIM(@p22ausente_abono)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,@identidad);
		END CASE;	
		
		

CASE #		@c23recuperacion_cobertura,
		WHEN TRIM(@p23quebradas_sin_cobertura)='Si' THEN
					set @c23recuperacion_cobertura=(SELECT CONVERT(@c23recuperacion_cobertura,SIGNED));
					
				if @c23recuperacion_cobertura='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,97,@identidad);
				end if;
					
				IF @c23recuperacion_cobertura=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,99,@identidad);
				end if;		
				
		WHEN TRIM(@p23quebradas_sin_cobertura)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,98,@identidad);
		WHEN TRIM(@p23quebradas_sin_cobertura)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,@identidad);
		END CASE;		
		
CASE #		@c24arreglos_sistema,,
		WHEN TRIM(@p24sin_socios_arboles)='Si' THEN
					set @c24arreglos_sistema=(SELECT CONVERT(@c24arreglos_sistema,SIGNED));
					
				if @c24arreglos_sistema='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,100,@identidad);
				end if;
					
				IF @c24arreglos_sistema=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,102,@identidad);
				end if;		
				
		WHEN TRIM(@p24sin_socios_arboles)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,101,@identidad);
		WHEN TRIM(@p24sin_socios_arboles)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,@identidad);
		END CASE;			
		
CASE #		@c25fortalecer_acciones,,,
		WHEN TRIM(@p25ausente_procesos)='Si' THEN
					set @c25fortalecer_acciones=(SELECT CONVERT(@c25fortalecer_acciones,SIGNED));
					
				if @c25fortalecer_acciones='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,103,@identidad);
				end if;
					
				IF @c25fortalecer_acciones=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,105,@identidad);
				end if;		
				
		WHEN TRIM(@p25ausente_procesos)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,104,@identidad);
		WHEN TRIM(@p25ausente_procesos)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,@identidad);
		END CASE;			
	
ELSEIF   @canfilas>0  and 
 EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.latitud=@latitu
	and fff.longitud=@logitud LIMIT 1) then 
#EXISTS (SELECT fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.longitud=@logitud) then
		set @string_Mensaje=concat('DATOS REPETIDOS ',@f_latitud,'-\t ',
                               @f_longitud);											 
			select 1 as codigo,@string_Mensaje mensaje;
	
															 
	#ELSEIF @canfilas>1 and @contar>1 AND NOT @f_latitud=@latitu THEN
	
else


SELECT COUNT(finca) 
    into @n_finca 
    from ihcafemonitoreo.tbl_general_finca gf
    WHERE gf.latitud<>@latitu OR gf.longitud<>@logitud  and gf.cod_identidad=@identidad
  	 LIMIT 1;
		
		INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) 
	VALUES(concat(@identidad,'-',@n_finca+1),(CONCAT(@nombre_productor,'-',@n_finca+1)),@latitu,@logitud,@identidad);
		
		#insert en vulnerabilidad ficha
		
		INSERT INTO ihcafemonitoreo.tbl_vulnerabilidades_ficha(cod_vulnerabilidad,cod_identidad,cod_municipio,
		pendiente,area_total_finca,area_total_cafe,p_promedio,edad_cafetal,cod_finca,cod_tecnico,num_meses_seco,
		fecha_visita,sitio,observacion,fecha_i) 
		VALUES(NULL,@identidad,@municipio,@pendienteDecimal,@area_total_fincaDecimal,@area_total_cafeDecimal,
	 @produccion_promedioDecimal,@edad_cafetal,(concat(@identidad,'-',@n_finca+1)),@codigoTecnico,@meses_seca,@fechavisita,
		@aldea,@observacion,@fechavisita);
		
		
		##insertado en variedades
			
	set @vueltas2=(SELECT COUNT(vvv.codigo_variedad) FROM vista_vulnerabilidad_variedades vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		#SET @i=1;
		#es el id de ficha vulnerabilidad
		set @maximo2=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
	#WHILE @i<@vueltas DO
	
	if @vueltas2=1 then
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=1 LIMIT 1;
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo2);
		
	ELSEIF @vueltas2=2 then
	
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=1 LIMIT 1;
		SELECT vvv.codigo_variedad into @cod_variedad_f2
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=2 LIMIT 1;
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo2);
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo2);
	
	 end if;
	 
		
		
  	select 1 as codigo,'nueva aldea' mensaje;
CASE#insertado en tbl_h_respuesta
		WHEN UPPER(TRIM(@p1cambios_temperatura))='SI' THEN
				SET @c1variedad_tolerante=(SELECT CONVERT(@c1variedades_tolerante,SIGNED));
			set @c1SistemaProduccion=(SELECT CONVERT(@c1sistema_produccion,SIGNED));
			set @c1ImplementarSistema=(SELECT CONVERT(@c1implementar_sistema,SIGNED));
		
			if @c1variedad_tolerante='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,1,(concat(@identidad,'-',@n_finca+1)));
			end if;	
			if @c1SistemaProduccion='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,2,(concat(@identidad,'-',@n_finca+1)));
			end if;
			if @c1ImplementarSistema='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,3,(concat(@identidad,'-',@n_finca+1)));
			end if;
			IF @c1variedad_tolerante=' ' AND @c1SistemaProduccion=' ' AND @c1ImplementarSistema=' ' THEN
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,5,(concat(@identidad,'-',@n_finca+1)));
			END IF;
			
			
		WHEN UPPER(TRIM(@p1cambios_temperatura))='NO' THEN
			#SELECT vr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vr 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on vr.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p1cambios_temperatura) and  vr.cod_pregunta=1 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,4,concat(@identidad,'-',@n_finca+1));
		WHEN UPPER(TRIM(@p1cambios_temperatura))='QUIZAS' THEN 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,concat(@identidad,'-',@n_finca+1));
		ELSE 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
CASE	#@c2cosecha_agua,@c2riesgo_adecuada,#@c2aplicacion_frecuente_foliares
	WHEN TRIM(@p2lluvias_irregulares)='Si' THEN
		
				set @c2CosechaAgua=(SELECT CONVERT(@c2cosecha_agua,SIGNED));
		set @c2RiesgoAdecuada=(SELECT CONVERT(@c2riesgo_adecuada,SIGNED));
		set @c2AplicacionFoliares=(SELECT CONVERT(@c2aplicacion_frecuente_foliares,SIGNED));
			
	
		if @c2CosechaAgua='1' then
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,6,concat(@identidad,'-',@n_finca+1));
		end if;
		if 	@c2RiesgoAdecuada='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,7,concat(@identidad,'-',@n_finca+1));
		end if;
		if @c2AplicacionFoliares='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,8,concat(@identidad,'-',@n_finca+1));
		end if;
		
		IF @c2CosechaAgua=' ' AND @c2RiesgoAdecuada=' ' AND @c2AplicacionFoliares=' ' THEN##QUE SEA POR 0 TAMBIEN. 
			##agregar en todas		
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
		END IF;
		
		
	WHEN TRIM(@p2lluvias_irregulares)='No' THEN
		#SELECT vrr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vrr 		
		#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion dd on vrr.cod_desicion=dd.cod_desicion
		#WHERE dd.desisicon=UPPER(@p2lluvias_irregulares) and  vrr.cod_pregunta=2 LIMIT 1;
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,9,concat(@identidad,'-',@n_finca+1));
	WHEN TRIM(@p2lluvias_irregulares)='Quizas' THEN
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
	ELSE
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
		
END CASE;



CASE#c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo
		 WHEN TRIM(@p3inuncaciones_derrumbe)='Si' THEN
		 set @c3ConservacionSuelo=(SELECT CONVERT(@c3conservacion_suelo,SIGNED));
			set @c3DiseñoSombra=(SELECT CONVERT(@c3diseño_sombre,SIGNED));
			set @c3EvitarCultivoRiesgo=(SELECT CONVERT(@c3evitar_cultivo_riesgo,SIGNED));
		 
		 
				if @c3ConservacionSuelo='1' then	
						#insertado en tbl_h_respuesta
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,11,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c3DiseñoSombra='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,12,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c3EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,13,concat(@identidad,'-',@n_finca+1));
				end if;		
				IF @c3ConservacionSuelo=' ' AND @c3DiseñoSombra=' ' AND @c3EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,15,concat(@identidad,'-',@n_finca+1));
				END IF;		
				
		WHEN TRIM(@p3inuncaciones_derrumbe)='No' THEN
			#SELECT r.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta r 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on r.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p3inuncaciones_derrumbe) and  cod_pregunta=3 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,14,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p3inuncaciones_derrumbe)='Quizas' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,15,concat(@identidad,'-',@n_finca+1));
	  ELSE ##agregar en todas
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,15,concat(@identidad,'-',@n_finca+1))	;
		END CASE;
		
		
case#@c4mantenerse_infomado,@c4evitar_cultivo_riesgo		
		WHEN TRIM(@p4riesgo_huracanes_tt)='Si' THEN
				set @c4MantenerInformado=(SELECT CONVERT(@c4mantenerse_infomado,SIGNED));
				set @c4EvitarCultivoRiesgo=(SELECT CONVERT(@c4evitar_cultivo_riesgo,SIGNED));
		
				if @c4MantenerInformado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,16,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c4EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,17,concat(@identidad,'-',@n_finca+1));
				end if;
				IF @c4MantenerInformado=' ' AND @c4EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,18,concat(@identidad,'-',@n_finca+1));
				END IF;		
						
		WHEN TRIM(@p4riesgo_huracanes_tt)='No' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,18,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p4riesgo_huracanes_tt)='Quizas' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,concat(@identidad,'-',@n_finca+1));
		ELSE
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,concat(@identidad,'-',@n_finca+1));
		END CASE;		
	
case#@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	WHEN TRIM(@p5disminucion_agua)='Si' THEN
		set @c5CosechaAgua=(SELECT CONVERT(@c5cosecha_agua,SIGNED));
		SET @c5ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
		SET @c5CoberturaSuelo=(SELECT convert(@c5cobertura_suelo,SIGNED));
		
		if @c5CosechaAgua='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,20,concat(@identidad,'-',@n_finca+1));
				end if;
		if @c5ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,21,concat(@identidad,'-',@n_finca+1));
				end if;
		if @c5CoberturaSuelo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,22,concat(@identidad,'-',@n_finca+1));
				end if;		
			IF @c5CosechaAgua=' ' AND @c5ManejoSombra=' '  AND @c5CoberturaSuelo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN 	TRIM(@p5disminucion_agua)='No' THEN
						
			#insertado en tbl_h_respuesta
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,23,concat(@identidad,'-',@n_finca+1));
		WHEN 	TRIM(@p5disminucion_agua)='Quizas' THEN	
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
		ELSE
		
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
		END case;

case#@c6barreras_rompe_viento,@c6manejo_sombra,
		WHEN TRIM(@p6vientos_fuerte)='Si' THEN
					set @c6BarreraRompeViento=(SELECT CONVERT(@c6barreras_rompe_viento,SIGNED));
					SET @c6ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
				if @c6BarreraRompeViento='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,25,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c6ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,26,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c6BarreraRompeViento=' ' AND @c6ManejoSombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p6vientos_fuerte)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,27,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p6vientos_fuerte)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
	
	CASE #@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
		WHEN TRIM(@p7señales_erosion)='Si' THEN
					set @c7conservacion_suelos=(SELECT CONVERT(@c7conservacion_suelos,SIGNED));
					SET @c7menejo_selectivo=(SELECT CONVERT(@c7menejo_selectivo,SIGNED));
					SET @c7manejo_sombra=(SELECT CONVERT(@c7manejo_sombra,SIGNED));
				if @c7conservacion_suelos='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,29,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c7menejo_selectivo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,30,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c7manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,31,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c7conservacion_suelos=' ' AND @c7menejo_selectivo=' '  AND @c7manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p7señales_erosion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,32,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p7señales_erosion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
		
		CASE #@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
		WHEN TRIM(@p8practica_suelo)='Si' THEN
					set @c8programa_fertilizacion=(SELECT CONVERT(@c8programa_fertilizacion,SIGNED));
					SET @c8aporte_organica=(SELECT CONVERT(@c8aporte_organica,SIGNED));
					SET @c8manejo_sombra=(SELECT CONVERT(@c8manejo_sombra,SIGNED));
				if @c8programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,34,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c8aporte_organica='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,35,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c8manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,36,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c8programa_fertilizacion=' ' AND @c8aporte_organica=' '  AND @c8manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p8practica_suelo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,37,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p8practica_suelo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
	CASE #@c9practica_conservacion,
		WHEN TRIM(@p9f_practica_conservacion)='Si' THEN
					set @c9practica_conservacion=(SELECT CONVERT(@c9practica_conservacion,SIGNED));
				
				if @c9practica_conservacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,39,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c9practica_conservacion=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p9f_practica_conservacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,40,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p9f_practica_conservacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
		CASE #@c10m_seleccion_hierva,@c10manejo_sombra,
		WHEN TRIM(@p10ausente_hierva)='Si' THEN
					set @c10m_seleccion_hierva=(SELECT CONVERT(@c10m_seleccion_hierva,SIGNED));
					SET @c10manejo_sombra=(SELECT CONVERT(@c10manejo_sombra,SIGNED));
					
				if @c10m_seleccion_hierva='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,42,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c10manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,43,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c10m_seleccion_hierva=' ' AND @c10manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p10ausente_hierva)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,44,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p10ausente_hierva)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
	
	CASE #	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
		WHEN TRIM(@p11floracion_irregular)='Si' THEN
					set @c11programa_fertilizacion=(SELECT CONVERT(@c11programa_fertilizacion,SIGNED));
					SET @c11riesgo_adecuao=(SELECT CONVERT(@c11riesgo_adecuao,SIGNED));
					SET @c11manejo_sombra=(SELECT CONVERT(@c11manejo_sombra,SIGNED));
					
				if @c11programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,46,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c11riesgo_adecuao='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,47,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c11manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,48,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c11programa_fertilizacion=' ' AND @c11riesgo_adecuao=' ' AND @c11manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p11floracion_irregular)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,49,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p11floracion_irregular)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
		
			CASE #	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
		WHEN TRIM(@p12aumento_defoliacion)='Si' THEN
					set @c12programa_fertilizacion=(SELECT CONVERT(@c12programa_fertilizacion,SIGNED));
					SET @c12riesgo_adecuado=(SELECT CONVERT(@c12riesgo_adecuado,SIGNED));
					SET @c12fuente_laguinosas=(SELECT CONVERT(@c12fuente_laguinosas,SIGNED));
					
				if @c12programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,51,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c12riesgo_adecuado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,52,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c12fuente_laguinosas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,53,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c12programa_fertilizacion=' ' AND @c12riesgo_adecuado=' ' AND @c12fuente_laguinosas=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p12aumento_defoliacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,54,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p12aumento_defoliacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
CASE #	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
		WHEN TRIM(@p13enfermedad_plantas)='Si' THEN
					set @c13diagnostico_incidencia=(SELECT CONVERT(@c13diagnostico_incidencia,SIGNED));
					SET @c13medidas_climas=(SELECT CONVERT(@c13medidas_climas,SIGNED));
					SET @c13informado_alerta=(SELECT CONVERT(@c13informado_alerta,SIGNED));
					
					set @c13manejo_cafetales=(SELECT CONVERT(@c13manejo_cafetales,SIGNED));
					SET @c13manejo_sombra=(SELECT CONVERT(@c13manejo_sombra,SIGNED));
					SET @c13combinar_lotes=(SELECT CONVERT(@c13combinar_lotes,SIGNED));
					
				if @c13diagnostico_incidencia='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,56,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c13medidas_climas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,57,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c13informado_alerta='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,58,concat(@identidad,'-',@n_finca+1));
				end if;	
					
				if @c13manejo_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,59,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c13manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,60,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c13combinar_lotes='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,61,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
	
				IF @c13diagnostico_incidencia=' ' AND @c13medidas_climas=' ' AND @c13informado_alerta=' ' and @c13manejo_cafetales=' ' AND @c13manejo_sombra=' ' 
				AND @c13combinar_lotes=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p13enfermedad_plantas)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,62,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p13enfermedad_plantas)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));
		END CASE;		
		
CASE #@c14m_sistemas_agroforestales,
		WHEN TRIM(@p14diversificacion_cafetal)='Si' THEN
					set @c14m_sistemas_agroforestales=(SELECT CONVERT(@c14m_sistemas_agroforestales,SIGNED));
	
					
				if @c14m_sistemas_agroforestales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,64,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c14m_sistemas_agroforestales=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p14diversificacion_cafetal)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,65,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p14diversificacion_cafetal)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));
		END CASE;	
				
CASE #@c15condicion_sombra
		WHEN TRIM(@p15cafetale_sol)='Si' THEN
					set @c15condicion_sombra=(SELECT CONVERT(@c15condicion_sombra,SIGNED));
	
					
				if @c15condicion_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,67,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c15condicion_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p15cafetale_sol)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,68,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p15cafetale_sol)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));
		END CASE;			

CASE #@c16programa_renovacion,
		WHEN TRIM(@p16cafetales_viejo)='Si' THEN
					set @c16programa_renovacion=(SELECT CONVERT(@c16programa_renovacion,SIGNED));
	
					
				if @c16programa_renovacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,70,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c16programa_renovacion=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p16cafetales_viejo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,71,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p16cafetales_viejo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));
		END CASE;	
		
		
CASE #@c17identificar_disponibilidad,@c17t_lotes_variedades,
		WHEN TRIM(@p17ausente_variedades)='Si' THEN
					set @c17identificar_disponibilidad=(SELECT CONVERT(@c17identificar_disponibilidad,SIGNED));
						set @c17t_lotes_variedades=(SELECT CONVERT(@c17t_lotes_variedades,SIGNED));
	
					
				if @c17identificar_disponibilidad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,73,concat(@identidad,'-',@n_finca+1));
				end if;
						
				if @c17t_lotes_variedades='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,74,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c17identificar_disponibilidad=' '  and @c17t_lotes_variedades=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));
				END IF;		
				
				
		WHEN TRIM(@p17ausente_variedades)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,75,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p17ausente_variedades)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));
		END CASE;		
		
CASE #@c18poscosecha_programa,
		WHEN TRIM(@p18ausente_practica)='Si' THEN
					set @c18poscosecha_programa=(SELECT CONVERT(@c18poscosecha_programa,SIGNED));
	
					
				if @c18poscosecha_programa='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,77,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c18poscosecha_programa=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p18ausente_practica)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,78,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p18ausente_practica)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));
		END CASE;				
			
CASE #@c19contar_resiembras,
		WHEN TRIM(@p19ausente_x_año)='Si' THEN
					set @c19contar_resiembras=(SELECT CONVERT(@c19contar_resiembras,SIGNED));
	
					
				if @c19contar_resiembras='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,80,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c19contar_resiembras=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p19ausente_x_año)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,81,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p19ausente_x_año)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));
		END CASE;			
				
CASE #@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
		WHEN TRIM(@p20produccion_bajo)='Si' THEN
					set @c20diagnosticos_cafetales=(SELECT CONVERT(@c20diagnosticos_cafetales,SIGNED));
					set @c20analisis_quimico=(SELECT CONVERT(@c20analisis_quimico,SIGNED));
					set @c20r_programa_fertilizacion=(SELECT CONVERT(@c20r_programa_fertilizacion,SIGNED));
					set @c20necesidad_sustituto=(SELECT CONVERT(@c20necesidad_sustituto,SIGNED));
	
					
				if @c20diagnosticos_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,83,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20analisis_quimico='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,84,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20r_programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,85,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20necesidad_sustituto='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,86,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c20diagnosticos_cafetales=' ' and @c20analisis_quimico=' ' and @c20r_programa_fertilizacion=' ' and @c20necesidad_sustituto=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p20produccion_bajo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,87,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p20produccion_bajo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));
		END CASE;						
						
						
CASE #@c21sustituir_o_complementar,@c21buscar_productividad,
		WHEN TRIM(@p21aplico_200kg)='Si' THEN
					set @c21sustituir_o_complementar=(SELECT CONVERT(@c21sustituir_o_complementar,SIGNED));
					set @c21buscar_productividad=(SELECT CONVERT(@c21buscar_productividad,SIGNED));
				if @c21sustituir_o_complementar='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,89,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c21buscar_productividad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,90,concat(@identidad,'-',@n_finca+1));
				end if;
				
				
				IF @c21sustituir_o_complementar=' ' and @c21buscar_productividad=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p21aplico_200kg)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,91,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p21aplico_200kg)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));
		END CASE;			
						
CASE #	@c22incorporar_abono,@c22elaborar_abono,
		WHEN TRIM(@p22ausente_abono)='Si' THEN
					set @c22incorporar_abono=(SELECT CONVERT(@c22incorporar_abono,SIGNED));
					set @c22elaborar_abono=(SELECT CONVERT(@c22elaborar_abono,SIGNED));				
				if @c22incorporar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,93,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c22elaborar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,94,concat(@identidad,'-',@n_finca+1));
				end if;			
				IF @c22incorporar_abono=' ' and @c22elaborar_abono=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p22ausente_abono)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,95,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p22ausente_abono)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));
		END CASE;	
		
		
CASE #		@c23recuperacion_cobertura,
		WHEN TRIM(@p23quebradas_sin_cobertura)='Si' THEN
					set @c23recuperacion_cobertura=(SELECT CONVERT(@c23recuperacion_cobertura,SIGNED));
					
				if @c23recuperacion_cobertura='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,97,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c23recuperacion_cobertura=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p23quebradas_sin_cobertura)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,98,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p23quebradas_sin_cobertura)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));
		END CASE;		
						
CASE #		@c24arreglos_sistema,,
		WHEN TRIM(@p24sin_socios_arboles)='Si' THEN
					set @c24arreglos_sistema=(SELECT CONVERT(@c24arreglos_sistema,SIGNED));
					
				if @c24arreglos_sistema='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,100,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c24arreglos_sistema=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p24sin_socios_arboles)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,101,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p24sin_socios_arboles)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));
		END CASE;							
						
	
CASE #		@c25fortalecer_acciones,,,
		WHEN TRIM(@p25ausente_procesos)='Si' THEN
					set @c25fortalecer_acciones=(SELECT CONVERT(@c25fortalecer_acciones,SIGNED));
					
				if @c25fortalecer_acciones='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,103,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c25fortalecer_acciones=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p25ausente_procesos)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,104,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p25ausente_procesos)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));			
		ELSE
				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));
		END CASE;								
		
	end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_asignar_codigo_variedad` ()  BEGIN
	#Routine body goes here...
	
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="1" WHERE variedades='Catimor';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="2" WHERE variedades='Catuai';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="3" WHERE variedades='Caturra';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="4" WHERE variedades='Ihcafe_90';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="5" WHERE variedades='Lempira';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="6" WHERE variedades='Pacas';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="7" WHERE variedades='Parainema';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="8" WHERE variedades='Típica';
UPDATE tbl_estructura_variedades_vulnerabilidades set codigo_variedad="11" WHERE variedades='';

#UPDATE tbl_estructura_variedades_vulnerabilidades set posicion="2"
 #WHERE 
# (SELECT sumision from tbl_estructura_variedades_vulnerabilidades GROUP BY sumision HAVING COUNT(#sumision=2) );

set @maximo=(SELECT COUNT(index1) from vista_vulnerabilidad_variedades LIMIT 1);
set @i=0;
set @ii=1;
set @iii=1;
WHILE @iii<@maximo DO 
##recorrer la tabla
SELECT index1,sumision,posicion
  into @index1,@sumision,@posicion
	from ihcafefichas.vista_vulnerabilidad_variedades vf
  WHERE index1 =(@iii+1);
	
	
	set @siguiente=(SELECT sumision from ihcafefichas.vista_vulnerabilidad_variedades vf
  WHERE index1 =@iii+2);
	if @sumision<>@siguiente then
	UPDATE tbl_estructura_variedades_vulnerabilidades set posicion=1 WHERE index1=@iii;
	#UPDATE tbl_estructura_variedades_vulnerabilidades set posicion=2 WHERE index1=@iii+1;
end if;
	#set @contar=(SELECT COUNT(sumision) from tbl_estructura_variedades_vulnerabilidades 
	#WHERE sumision=@iii LIMIT 1);

		#WHILE @ii<@contar DO 
	#if @ii=1 then
	
		#UPDATE tbl_estructura_variedades_vulnerabilidades set posicion=@ii WHERE index1=@iii;
	#elseif @ii=2 then
	#UPDATE tbl_estructura_variedades_vulnerabilidades set posicion=1 WHERE sumision=@iii;
	#UPDATE tbl_estructura_variedades_vulnerabilidades set posicion=2 WHERE sumision=@iii+1;
	#end if;
	
		#SET @ii = @ii + 1;
		#end while;

#SET @i = @i + 1;
SET @iii = @iii + 1;
END while;

 ##set @Sumision=(SELECT COUNT(sumision) from vista_vulnerabilidad_variedades GROUP BY sumision);
 

#end if;
 


end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_asignar_numeracion` ()  BEGIN
set @a=0;
ALTER TABLE tbl_estructura_vulnerabilidad DROP n;
ALTER TABLE tbl_estructura_vulnerabilidad AUTO_INCREMENT = 1;
ALTER TABLE tbl_estructura_vulnerabilidad ADD n bigint UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

#ALTER TABLE exitbl_estructura_variedades_vulnerabilidades ADD codigo_variedad varchar(45);
#ALTER TABLE tbl_estructura_variedades_vulnerabilidades ADD posicion varchar(45);





END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_asignar_numeracion_2018` ()  NO SQL
BEGIN
set @a=0;
ALTER TABLE tbl_estructura_vulnerabilidad_2018 DROP n;
ALTER TABLE tbl_estructura_vulnerabilidad_2018 AUTO_INCREMENT = 1;
ALTER TABLE tbl_estructura_vulnerabilidad_2018 ADD n bigint UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;







END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_cursor_posicion` ()  BEGIN
DECLARE ind,sumi VARCHAR(10);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_vulnerabilidad_variedades GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE 
	WHEN sumi=1 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=8 WHERE index1=ind+7;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;

		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_cursor_variedades` ()  BEGIN
DECLARE ind,sumi VARCHAR(10);
Declare exit_loop Boolean DEFAULT false;
DECLARE  prueba cursor for
			SELECT index1,COUNT(sumision) from vista_vulnerabilidad_variedades GROUP BY sumision;
DECLARE CONTINUE HANDLER for not FOUND SET exit_loop=true;
	OPEN prueba;
	m_loop: loop
		FETCH from prueba into ind,sumi ;
			
CASE #falta optimizar el codigo
	WHEN sumi=1 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
	WHEN sumi=2 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;
	WHEN sumi=3 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;
	WHEN sumi=4 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
	WHEN sumi=5 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;
	WHEN sumi=6 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=6 WHERE index1=ind+5;	
			WHEN sumi=7 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=7 WHERE index1=ind+6;		
		
			WHEN sumi=8 THEN
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=1 WHERE index1=ind;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=2 WHERE index1=ind+1;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=3 WHERE index1=ind+2;	
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=4 WHERE index1=ind+3;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=5 WHERE index1=ind+4;		
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=6 WHERE index1=ind+5;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=7 WHERE index1=ind+6;
		UPDATE tbl_estructura_variedades_vulnerabilidades SET posicion=8 WHERE index1=ind+7;
		else
		SELECT 'no aplica' as mensaje; 
END CASE;

		
		#		SELECT ind,sumi;
	
		
		
		
		
		if exit_loop then
		LEAVE m_loop;
		end if;
	#dbms_output.put_line(registro.sumision);
	end loop m_loop;
	
	CLOSE prueba;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_generalizar_Tecnico_2018` ()  BEGIN




UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='EDWIN ROLANDO BAUTISTA DEL CID' WHERE nombre_tecnico like '%Edwin Bautista%';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ARNOLD LEMUS AGUILAR' WHERE nombre_tecnico = 'Arnold Aguilar';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='BORIS FERNANDO BUEZO JUAREZ' WHERE nombre_tecnico = 'Boris Buezo';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='CARLOS ARMANDO PASCUA FERNANDEZ' WHERE nombre_tecnico = 'Carlos Armando Pascua Fernandez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='CARLOS HUMBERTO RIVERA' WHERE nombre_tecnico = 'Carlos humberto Rivera Pineda';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='CARLOS MAGDIEL ARRIAGA LOPEZ' WHERE nombre_tecnico = 'Carlos Magdiel Arriaga López';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='CESAR EMILIO BUEZO BUEZO' WHERE nombre_tecnico = 'César Emilio Buezo';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='CESAR NOE CANO CHAVER' WHERE nombre_tecnico = 'César Noé Cano';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='DANILO RIVERA' WHERE nombre_tecnico = 'Danilo Rivera';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='EBIS ESAU MEDINA' WHERE nombre_tecnico = 'Ebis Medina';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ELDYN ROEL PAZ' WHERE nombre_tecnico = 'Eldin Roel Paz';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ATILIA ELENA LANDAVERDE' WHERE nombre_tecnico = 'Elena Landaverde';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ELIEZER RIVERA VILLANUEVA' WHERE nombre_tecnico = 'Eliezer Rivera Villanueva';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ELLAN ALFREDO MONCADA CADENAS' WHERE nombre_tecnico = 'Ellan Alfredo Moncada Cadenas';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ELVIN ANTONIO HERNANDEZ' WHERE nombre_tecnico = 'Elvin Hernández';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ERICK ORLANDO GONZALEZ' WHERE nombre_tecnico = 'Erick Orlando González';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='FAVIO EDGARDO TERCERO ESPINOZA' WHERE nombre_tecnico = 'Favio Edgardo Tercero';
		UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='FRANK JOSEPH HERNANDEZ RAMOS' WHERE nombre_tecnico = 'Frank Hernández';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='FREDY ARTURO AGUIRIANO MARTINEZ' WHERE nombre_tecnico = 'Fredy Arturo Aguiriano Martinez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='HENRY ADALBERTO LOPEZ CHINCHILLA' WHERE nombre_tecnico = 'Henry Lopez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='HENRY ROBERTO RODRIGUEZ RODRIGUEZ' WHERE nombre_tecnico = 'Henry Roberto Rodríguez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='HERMES REYES INESTROZA' WHERE nombre_tecnico = 'Hermes Reyes Inestroza';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='JORGE LUIS OYUELA OLIVERA' WHERE nombre_tecnico = 'Jorge Luis Oyuela Olivera';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='JOSE ABEL HERNANDEZ ALEMAN' WHERE nombre_tecnico = 'Jose hernandez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='JUAN LUIS HERNANDEZ MENCIA' WHERE nombre_tecnico = 'Juan Luis Hernández Mencía';
		UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='JUAN MANUEL RODRIGUEZ ESCOTO' WHERE nombre_tecnico = 'Juan Manuel rodriguez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='JULIO CESAR SALGADO AGUILUZ' WHERE nombre_tecnico = 'julio salgado';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='KEILA DINORA MATUTE MATUTE' WHERE nombre_tecnico = 'Keila Dinora Matute Matute';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='LUIS ANTONIO REDONDO' WHERE nombre_tecnico = 'Luis Antonio Redondo Bonilla';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='LUIS CARLOS NAVARRO' WHERE nombre_tecnico = 'Luis Carlos Navarro';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='MARCO TULIO CARRILLO PEREZ' WHERE nombre_tecnico = 'Marco Carrillo';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='MARLON DANERY SEVILLA ALONZO' WHERE nombre_tecnico = 'Marlon Danery Sevilla Alonzo';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='CARMEN NOEL PAZ PEREZ' WHERE nombre_tecnico = 'Noel Paz';
		UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ODIR BOANERGES ROJAS SALINAS' WHERE nombre_tecnico = 'Odir Rojas Salinas';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='OLBIN ORLANDO CASTELLANOS MIRANDA' WHERE nombre_tecnico = 'Olbin castellanos';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='OLBIN ORLANDO CASTELLANOS MIRANDA' WHERE nombre_tecnico = '0lbin castellanos';
	
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='SANTOS OMAR GAMEZ GAMEZ' WHERE nombre_tecnico = 'Omar Gámez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ORLIN ALVARADO' WHERE nombre_tecnico = 'Orlin Alvarado';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='OSCAR  RENE BONILLA MATUTE' WHERE nombre_tecnico = 'Oscar Bonilla';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='RAFAEL VELASQUEZ' WHERE nombre_tecnico = 'Rafael Velásquez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='RENAN MUNGUIA' WHERE nombre_tecnico = 'Renán Munguía';
		UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='RICARDO ALONSO MACHADO' WHERE nombre_tecnico = 'Ricardo Alonso Machado Romero';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='RICARDO ANTONIO MONTOYA TOSTA' WHERE nombre_tecnico = 'Ricardo Montoya';
	
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='RICARDO ALONSO VELASQUEZ PADILLA' WHERE nombre_tecnico like '%Ricardo Velásquez%';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='RICARDO ALONSO VELASQUEZ PADILLA' WHERE nombre_tecnico = 'Ricardo Velasquez';
	
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ROGER WILMAN CABALLERO  SAGASTUME' WHERE nombre_tecnico = 'Roger Caballero';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='RUDHIS DONAY MORAN GONZALEZ' WHERE nombre_tecnico = 'Rudhis Moran';
	
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='SHEILA FRANSELIA VELASQUEZ' WHERE nombre_tecnico = 'Sheila Fraselia Velasquez';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='WILLIAM DIOMED  PADILLA SORTO' WHERE nombre_tecnico = 'William padilla';
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='WUALTER ORLANDO FUNEZ ALONZO' WHERE nombre_tecnico = 'Wualter Fúnez';
	
	
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ORLIN ALVARADO' WHERE nombre_tecnico = 'Avilio Alvarado';
	
	UPDATE tbl_estructura_vulnerabilidad_2018 SET nombre_tecnico='ORLIN ALVARADO' WHERE nombre_tecnico = 'San José de Pane';


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_ingreso_productor` ()  BEGIN
	#Routine body goes here...
	
	START TRANSACTION;
	
	SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from ihcafefichas.vista_ficha_finca limit 1);

WHILE @contar<@t_repetir DO
set @can_productor=(SELECT COUNT(p.cod_identidad) from ihcafemonitoreo.tbl_general_productor p);

  SELECT vf.numero_identidad,vf.nombre_productor,vf.clave,vf.sexo,vf.telefono,vf.municipio,vf.aldea,vf.agencia
  into @numero_identidad,@nombre_productor,@clave,@sexo,@telefono,@municipio,@aldea,@agencia
	from ihcafefichas.vista_ficha_finca vf
  WHERE n =(@contar+1) ;
  ##verificar existencia en tbl productor		
  #buscar los codigos de sexo,municipio,agencia
	
  #SELECT cod_genero into @codgenero from ihcafemonitoreo.tbl_general_genero g WHERE g.genero=@sexo
  #LIMIT 1;

	SELECT cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	WHERE gm.cod_municipio=@municipio LIMIT 1; 	
	
	#SELECT a.cod_agencia INTO @codagencia from ihcafemonitoreo.tbl_general_agencia a
	 #WHERE a.agencia=@agencia LIMIT 1;
	
		
		if not EXISTS(SELECT gp.cod_identidad 
		from ihcafemonitoreo.tbl_general_productor gp
		WHERE gp.cod_identidad=@numero_identidad) THEN
		##insertar
		INSERT into ihcafemonitoreo.tbl_general_productor
		(cod_identidad,clave,nombre,cod_genero,celular,nacimiento,cod_pais,cod_municipio,cod_agencia) 
		VALUE(@numero_identidad,@clave,@nombre_productor,@sexo,@telefono,NULL,'137',@codigoMunicipio,
		@agencia);
		
		
		elseif EXISTS(SELECT gp.cod_identidad 
		from ihcafemonitoreo.tbl_general_productor gp
		WHERE gp.cod_identidad=@numero_identidad) THEN
		SELECT 'datos repetidos' as mensaje;
	
	
end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_ingreso_productor_2018` ()  BEGIN
	#Routine body goes here...
	
	START TRANSACTION;
	
	SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from ihcafefichas.vista_ficha_finca_2018 limit 1);

WHILE @contar<@t_repetir DO
set @can_productor=(SELECT COUNT(p.cod_identidad) from ihcafemonitoreo.tbl_general_productor p);

  SELECT vf.numero_identidad,vf.nombre_productor,vf.clave,vf.sexo,vf.telefono,vf.municipio,vf.aldea,vf.agencia
  into @numero_identidad,@nombre_productor,@clave,@sexo,@telefono,@municipio,@aldea,@agencia
	from ihcafefichas.vista_ficha_finca_2018 vf
  WHERE n =(@contar+1) ;
  ##verificar existencia en tbl productor		
  #buscar los codigos de sexo,municipio,agencia
  SELECT cod_genero into @codgenero from ihcafemonitoreo.tbl_general_genero g WHERE g.abreviatura=@sexo
  LIMIT 1;

	SELECT cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	WHERE gm.municipio=@municipio LIMIT 1; 	
	
	SELECT a.cod_agencia INTO @codagencia from ihcafemonitoreo.tbl_general_agencia a
	 WHERE a.agencia2=@agencia LIMIT 1;
	
		if not EXISTS(SELECT gp.cod_identidad 
		from ihcafemonitoreo.tbl_general_productor gp
		WHERE gp.cod_identidad=@numero_identidad) THEN
		##insertar
		INSERT into ihcafemonitoreo.tbl_general_productor
		(cod_identidad,clave,nombre,cod_genero,celular,nacimiento,cod_pais,cod_municipio,cod_agencia) 
		VALUE(@numero_identidad,@clave,@nombre_productor,@codgenero,@telefono,NULL,'137',@codigoMunicipio,
		@codagencia);
		
		
		elseif EXISTS(SELECT gp.cod_identidad 
		from ihcafemonitoreo.tbl_general_productor gp
		WHERE gp.cod_identidad=@numero_identidad) THEN
		SELECT 'datos repetidos' as mensaje;
	
	
end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_insert_kb` (IN `pfecha_inicio` VARCHAR(45), IN `pfecha_end` VARCHAR(45), IN `ptoday` VARCHAR(45), IN `pusernam` VARCHAR(45), IN `psimserial` VARCHAR(45), IN `psubscriberid` VARCHAR(45), IN `pdeviceid` VARCHAR(45), IN `pfecha_visita` VARCHAR(45), IN `pdepartamento` VARCHAR(45), IN `pmunicipio` VARCHAR(45), IN `paldea` VARCHAR(50), IN `pubicacion` VARCHAR(45), IN `platitud` VARCHAR(45), IN `plongitud` VARCHAR(45), IN `pregional` VARCHAR(45), IN `pagencia` VARCHAR(45), IN `pproductor` VARCHAR(50), IN `pidentidad` VARCHAR(45), IN `pclave_productor` VARCHAR(45), IN `psexo` VARCHAR(45), IN `pedad` VARCHAR(45), IN `ptelefono` VARCHAR(45), IN `ppendiennte` VARCHAR(45), IN `ptotal_finca_area` VARCHAR(45), IN `ptotal_cafe_area` VARCHAR(45), IN `pproduccion` VARCHAR(45), IN `pedad_cafetal` VARCHAR(45), IN `pmeses_seco` VARCHAR(45), IN `pp1pcambios_tem` VARCHAR(45), IN `p1practica_medida` VARCHAR(255), IN `pp2lluvias_regulares` VARCHAR(45), IN `p2practica_medida` VARCHAR(255), IN `pp3aumento_lluvia` VARCHAR(45), IN `p3practica_medida` VARCHAR(255), IN `pp4riegos_huracanes` VARCHAR(45), IN `p4practica_medida` VARCHAR(255), IN `pp5sequia_ul_anos` VARCHAR(45), IN `p5practica_medid` VARCHAR(255), IN `pp6vientos_fuerte` VARCHAR(45), IN `p6practica_medida` VARCHAR(255), IN `pp7senales_erosion` VARCHAR(45), IN `p7practica_medida` VARCHAR(255), IN `pp8fertilidad_suelos` VARCHAR(45), IN `p8practica_medida` VARCHAR(255), IN `pp9faltan_pract_suelos` VARCHAR(45), IN `p9practica_medida` VARCHAR(255), IN `pp10ausencia_hiervas` VARCHAR(45), IN `p10practica_medida` VARCHAR(255), IN `pp11floracion_irregular` VARCHAR(45), IN `p11practica_medida` VARCHAR(255), IN `pp12incre_caida_flores` VARCHAR(45), IN `p12practica_medida` VARCHAR(255), IN `pp13incre_dano_plagas` VARCHAR(45), IN `p13practica_medida` VARCHAR(255), IN `pp14diversificacion_cafetal` VARCHAR(45), IN `p14practica_medida` VARCHAR(255), IN `pp15cafetales_pleno_sol` VARCHAR(45), IN `p15practica_medida` VARCHAR(255), IN `pp16cafetales_viejos` VARCHAR(255), IN `p16practica_medida` VARCHAR(255), IN `pp17var_existentes_resistentes` VARCHAR(45), IN `p17practica_medida` VARCHAR(255), IN `pp18practica_anula_poda` VARCHAR(45), IN `p18practica_medida` VARCHAR(255), IN `pp19resiembra_cafetos` VARCHAR(45), IN `p19practica_medida` VARCHAR(255), IN `pp20produc_bajando` VARCHAR(45), IN `p20practica_medida` VARCHAR(255), IN `pp21aplica_mas_200g` VARCHAR(45), IN `p21practica_medida` VARCHAR(255), IN `pp22ausente_abono` VARCHAR(45), IN `p22practica_medida` VARCHAR(255), IN `pp23queb_fuent_sin_cobertura` VARCHAR(45), IN `p23practica_medida` VARCHAR(255), IN `pp24sin_asocios_arboles` VARCHAR(45), IN `p24practica_medida` VARCHAR(255), IN `pp25ausente_proc_org` VARCHAR(45), IN `p25practica_medida` VARCHAR(255), IN `ptotal` VARCHAR(45), IN `ptecnicos` VARCHAR(45), IN `pobservacion` VARCHAR(255), IN `pversion1` VARCHAR(45), IN `pversion2` VARCHAR(45), IN `pversion3` VARCHAR(45), IN `pinstanceid` VARCHAR(45), IN `indexx` VARCHAR(15))  BEGIN
#extraer las recomendaciones en una variable

set @tecnicos=(REPLACE(ptecnicos,'_',' '));
CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena as (SELECT p1practica_medida as medida) ;
set @tolerante=(SELECT 1 from tmp_cadena WHERE medida like '%AM_vari_tolerantes_1%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena WHERE medida like '%AM_vari_tolerantes_1%')
			); 
 
set @siste_produccion=(SELECT 1 from tmp_cadena WHERE medida like '%M_sist_produccion_1%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena WHERE medida like '%M_sist_produccion_1%')
		);
 
set @sis_agroforesteria=(SELECT 1 from tmp_cadena WHERE medida like '%AM_sist_agroforestales_1%'
		UNION
		SELECT 0 FROM DUAL
    WHERE NOT EXISTS
    (SELECT *from tmp_cadena WHERE medida like '%AM_sist_agroforestales_1%')
		);
		
		
 set @cadena1=(SELECT CONCAT(@tolerante,@siste_produccion,@sis_agroforesteria));
IF @cadena1=000 then
set @tolerante='';
set @siste_produccion='';
set @sis_agroforesteria='';
end if;
 #SELECT @tolerante,@siste_produccion,@sis_agroforesteria;
		
 DROP TABLE tmp_cadena;
#----------------------------------------------------------------------------------------------------

CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_lluvias_ir as (SELECT p2practica_medida as medida);
#A_cosecha_agua_2 A_riego_adecuado_2 A_aplic_foliares_2
set @c2cosecha_agua=(SELECT 1 from tmp_cadena_lluvias_ir WHERE medida like '%A_cosecha_agua_2%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_lluvias_ir WHERE medida like '%A_cosecha_agua_2%')
			); 
 
set @c2riesgo_adecuado=(SELECT 1 from tmp_cadena_lluvias_ir WHERE medida like '%A_riego_adecuado_2%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_lluvias_ir WHERE medida like '%A_riego_adecuado_2%')
		);
 
set @c2aplicion_foliares=(SELECT 1 from tmp_cadena_lluvias_ir WHERE medida like '%A_aplic_foliares_2%'
		UNION
		SELECT 0 FROM DUAL
    WHERE NOT EXISTS
    (SELECT *from tmp_cadena_lluvias_ir WHERE medida like '%A_aplic_foliares_2%')
		);

 set @cadena2=(SELECT CONCAT(@c2cosecha_agua,@c2riesgo_adecuado,@c2aplicion_foliares));
IF @cadena2=000 then
set @c2cosecha_agua='';
set @c2riesgo_adecuado='';
set @c2aplicion_foliares='';
end if;
 #SELECT @tolerante,@siste_produccion,@sis_agroforesteria;

 DROP TABLE tmp_cadena_lluvias_ir;
#-----------------------------------------------------------------------------------------------------

CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_inundacion as (SELECT p3practica_medida as medida);
#AM_pract_conser_suelo_3 AM_manj_sombra_3 AM_evit_area_riesgo_3
set @c3conser_suelo=(SELECT 1 from tmp_cadena_inundacion WHERE medida like '%AM_pract_conser_suelo_3%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_inundacion WHERE medida like '%AM_pract_conser_suelo_3%')
			); 
 
set @c3manejo_sombra=(SELECT 1 from tmp_cadena_inundacion WHERE medida like '%AM_manj_sombra_3%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_inundacion WHERE medida like '%AM_manj_sombra_3%')
		);
 
set @c3area_riesgo=(SELECT 1 from tmp_cadena_inundacion WHERE medida like '%AM_evit_area_riesgo_3%'
		UNION
		SELECT 0 FROM DUAL
    WHERE NOT EXISTS
    (SELECT *from tmp_cadena_inundacion WHERE medida like '%AM_evit_area_riesgo_3%')
		);

 set @cadena3=(SELECT CONCAT(@c3conser_suelo,@c3manejo_sombra,@c3area_riesgo));
IF @cadena3=000 then
set @c3conser_suelo='';
set @c3manejo_sombra='';
set @c3area_riesgo='';
end if;
 DROP TABLE tmp_cadena_inundacion;
#-----------------------------------------------------------------------------------------------------
CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_huracanes as (SELECT p4practica_medida as medida);
#A_mant_info_sat_4 AM_evit_area_riesgo_4
set @c4mantener_info=(SELECT 1 from tmp_cadena_huracanes WHERE medida like '%A_mant_info_sat_4%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_huracanes WHERE medida like '%A_mant_info_sat_4%')
			); 
 
set @c4evitar_riesgo=(SELECT 1 from tmp_cadena_huracanes WHERE medida like '%AM_evit_area_riesgo_4%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_huracanes WHERE medida like '%AM_evit_area_riesgo_4%')
		);
		set @cadena4=(SELECT CONCAT(@c4mantener_info,@c4evitar_riesgo));
IF @cadena4=000 then
set @c4mantener_info='';
set @c4evitar_riesgo='';

end if;
 
 DROP TABLE tmp_cadena_huracanes;
#-----------------------------------------------------------------------------------------------------
CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_sombra as (SELECT p5practica_medid as medida);
#A_cosecha_agua_5 AM_manej_sombra_5 AM_cobert_suelo_5
set @c5cosecha_agua=(SELECT 1 from tmp_cadena_sombra WHERE medida like '%A_cosecha_agua_5 %'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_sombra WHERE medida like '%A_cosecha_agua_5 %')
			); 
 
set @c5manejo_sombra=(SELECT 1 from tmp_cadena_sombra WHERE medida like '%AM_manej_sombra_5%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_sombra WHERE medida like '%AM_manej_sombra_5%')
		);
 
set @c5cobertura_suelo=(SELECT 1 from tmp_cadena_sombra WHERE medida like '%AM_cobert_suelo_5%'
		UNION
		SELECT 0 FROM DUAL
    WHERE NOT EXISTS
    (SELECT *from tmp_cadena_sombra WHERE medida like '%AM_cobert_suelo_5%')
		);
		
		set @cadena5=(SELECT CONCAT(@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo));
IF @cadena5=000 then
set @c5cosecha_agua='';
set @c5manejo_sombra='';
set @c5cobertura_suelo='';

end if;
		
 DROP TABLE tmp_cadena_sombra;
#-----------------------------------------------------------------------------------------------------

CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_viento as (SELECT p6practica_medida as medida);
#AM_bar_rompe_viento_6 AM_manj_sombra_6
set @c6var_rompemuro=(SELECT 1 from tmp_cadena_viento WHERE medida like '%AM_bar_rompe_viento_6%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_viento WHERE medida like '%AM_bar_rompe_viento_6%')
			); 
 
set @c6manej_sombra =(SELECT 1 from tmp_cadena_viento WHERE medida like '%AM_manj_sombra_6%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_viento WHERE medida like '%AM_manj_sombra_6%')
		);
 set @cadena6=(SELECT CONCAT(@c6var_rompemuro,@c6manej_sombra));
IF @cadena6=000 then
set @c6var_rompemuro='';
set @c6manej_sombra='';

end if;

 DROP TABLE tmp_cadena_viento;

#-----------------------------------------------------------------------------------------------------

CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_erosion as (SELECT p7practica_medida as medida);
#AM_pract_conser_suelo_7 AM_suelo_manejo_7 AM_manj_sombra_7
set @c7conservar_suelo=(SELECT 1 from tmp_cadena_erosion WHERE medida like '%AM_pract_conser_suelo_7 %'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_erosion WHERE medida like '%AM_pract_conser_suelo_7 %')
			); 
 
set @c7suelo_manejo=(SELECT 1 from tmp_cadena_erosion WHERE medida like '%AM_suelo_manejo_7%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_erosion WHERE medida like '%AM_suelo_manejo_7%')
		);
 
set @c7manejo_sombra=(SELECT 1 from tmp_cadena_erosion WHERE medida like '%AM_manj_sombra_7%'
		UNION
		SELECT 0 FROM DUAL
    WHERE NOT EXISTS
    (SELECT *from tmp_cadena_erosion WHERE medida like '%AM_manj_sombra_7%')
		);
		
	set @cadena7=(SELECT CONCAT(@c7conservar_suelo,@c7suelo_manejo,@c7manejo_sombra));
IF @cadena7=000 then
set @c7conservar_suelo='';
set @c7suelo_manejo='';
set @c7manejo_sombra='';

end if;	
 DROP TABLE tmp_cadena_erosion;
 #--------------------------------------------------------------------------------------------------


CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_suelo as (SELECT p8practica_medida as medida);
#A_prog_fertilizacion_8 AM_mat_organica_8 AM_manj_sombra_8
set @c8programa_fertilizacion=(SELECT 1 from tmp_cadena_suelo WHERE medida like '%A_prog_fertilizacion_8%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_suelo WHERE medida like '%A_prog_fertilizacion_8%')
			); 
 
set @c8materio_organica=(SELECT 1 from tmp_cadena_suelo WHERE medida like '%AM_mat_organica_8%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_suelo WHERE medida like '%AM_mat_organica_8%')
		);
 
set @c8manejo_sombra=(SELECT 1 from tmp_cadena_suelo WHERE medida like '%AM_manj_sombra_8%'
		UNION
		SELECT 0 FROM DUAL
    WHERE NOT EXISTS
    (SELECT *from tmp_cadena_suelo WHERE medida like '%AM_manj_sombra_8%')
		);
	set @cadena8=(SELECT CONCAT(@c8programa_fertilizacion,@c8materio_organica,@c8manejo_sombra));
IF @cadena8=000 then
set @c8programa_fertilizacion='';
set @c8materio_organica='';
set @c8manejo_sombra='';

end if;	
		
 DROP TABLE tmp_cadena_suelo;
 #--------------------------------------------------------------------------------------------------
 CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_conservacion as (SELECT p9practica_medida as medida);
#AM_pract_conser_suelo_9
set @c9practica_conservacion=(SELECT 1 from tmp_cadena_conservacion WHERE medida like '%AM_pract_conser_suelo_9%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_conservacion WHERE medida like '%AM_pract_conser_suelo_9%')
			); 
set @cadena9=(SELECT CONCAT(@c9practica_conservacion));
IF @cadena9=000 then
set @c4evitar_riesgo='';

end if; 

 DROP TABLE tmp_cadena_conservacion;
	#----------------------------------------------------------------------------------
	
CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_hiervas as (SELECT p10practica_medida as medida);
#AM_manejo_hierbas_10 AM_manj_sombra_10
set @c10manejo_hierva=(SELECT 1 from tmp_cadena_hiervas WHERE medida like '%AM_manejo_hierbas_10%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_hiervas WHERE medida like '%AM_manejo_hierbas_10%')
			); 
 
set @c10manejo_sombra=(SELECT 1 from tmp_cadena_hiervas WHERE medida like '%AM_manj_sombra_10%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_hiervas WHERE medida like '%AM_manj_sombra_10%')
		);
set @cadena10=(SELECT CONCAT(@c10manejo_hierva,@c10manejo_sombra));
IF @cadena10=000 then
set @c10manejo_hierva='';
set @c10manejo_sombra='';
end if; 

 DROP TABLE tmp_cadena_hiervas;
 #--------------------------------------------------------------------------------------------------	
 
 CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_floracion as (SELECT p11practica_medida as medida);
#AM_prog_fertilizacion_11 A_riego_adecuado_11 AM_manj_sombra_11
set @c11prog_fertilizacion=(SELECT 1 from tmp_cadena_floracion WHERE medida like '%AM_prog_fertilizacion_11%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_floracion WHERE medida like '%AM_prog_fertilizacion_11%')
			); 
 
set @c11riego_adecuado=(SELECT 1 from tmp_cadena_floracion WHERE medida like '%A_riego_adecuado_11%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_floracion WHERE medida like '%A_riego_adecuado_11%')
		);
set @c11manejo_sombra=(SELECT 1 from tmp_cadena_floracion WHERE medida like '%AM_manj_sombra_11%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_floracion WHERE medida like '%AM_manj_sombra_11%')
		);	
set @cadena11=(SELECT CONCAT(@c11prog_fertilizacion,@c11riego_adecuado,@c11manejo_sombra));
IF @cadena11=000 then
set @c11prog_fertilizacion='';
set @c11riego_adecuado='';
set @c11manejo_sombra='';
end if;			
 
 DROP TABLE tmp_cadena_floracion;
 #--------------------------------------------------------------------------------------------------	
  CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_defoliacion as (SELECT p12practica_medida as medida);
#AM_prog_fertilizacion_12 A_riego_adecuado_12 AM_manj_sombra_12"
set @c12progra_fertilizacion=(SELECT 1 from tmp_cadena_defoliacion WHERE medida like '%AM_prog_fertilizacion_12%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_defoliacion WHERE medida like '%AM_prog_fertilizacion_12%')
			); 
 
set @c12rego_adecuado=(SELECT 1 from tmp_cadena_defoliacion WHERE medida like '%A_riego_adecuado_12%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_defoliacion WHERE medida like '%A_riego_adecuado_12%')
		);
set @c12manejo_sombra=(SELECT 1 from tmp_cadena_defoliacion WHERE medida like '%AM_manj_sombra_12%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_defoliacion WHERE medida like '%AM_manj_sombra_12%')
		);	
set @cadena12=(SELECT CONCAT(@c12progra_fertilizacion,@c12rego_adecuado,@c12manejo_sombra));
IF @cadena12=000 then
set @c12progra_fertilizacion='';
set @c12rego_adecuado='';
set @c12manejo_sombra='';

end if;			
 
 DROP TABLE tmp_cadena_defoliacion;
 #--------------------------------------------------------------------------------------------------	
 
CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_enfermedad as (SELECT p13practica_medida as medida);
#AM_diagnosticos_opor_13 AM_medidas_control_13 A_mant_informado_13 AM_manejo_integral_13 AM_manj_sombra_13 AM_comb_lotes
set @c13dianosticos=(SELECT 1 from tmp_cadena_enfermedad WHERE medida like '%AM_diagnosticos_opor_13%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_enfermedad WHERE medida like '%AM_diagnosticos_opor_13%')
			); 
 
set @c13medidas_control=(SELECT 1 from tmp_cadena_enfermedad WHERE medida like '%AM_medidas_control_13%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_enfermedad WHERE medida like '%AM_medidas_control_13%')
		);
set @c13mantener_informado=(SELECT 1 from tmp_cadena_enfermedad WHERE medida like '%A_mant_informado_13%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_enfermedad WHERE medida like '%A_mant_informado_13%')
		);		
 set @c13manejo_integral=(SELECT 1 from tmp_cadena_enfermedad WHERE medida like '%AM_manejo_integral_13%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_enfermedad WHERE medida like '%AM_manejo_integral_13%')
			); 
 
set @c13manejo_sombra=(SELECT 1 from tmp_cadena_enfermedad WHERE medida like '%AM_manj_sombra_13%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_enfermedad WHERE medida like '%AM_manj_sombra_13%')
		);
set @c13comb_lotes=(SELECT 1 from tmp_cadena_enfermedad WHERE medida like '%AM_comb_lotes%' 
		UNION
		SELECT 0 FROM DUAL
		WHERE NOT EXISTS
		(SELECT *from tmp_cadena_enfermedad WHERE medida like '%AM_comb_lotes%')
		);		
set @cadena13=(SELECT CONCAT(@c13dianosticos,@c13medidas_control,@c13mantener_informado,@c13manejo_integral,@c13manejo_sombra,@c13comb_lotes));
IF @cadena13=000 then
set @c13dianosticos='';
set @c13medidas_control='';
set @c13mantener_informado='';

set @c13manejo_integral='';
set @c13manejo_sombra='';
set @c13comb_lotes='';

end if;		
		
 DROP TABLE tmp_cadena_enfermedad;
 #--------------------------------------------------------------------------------------------------	
 CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_diversificacion as (SELECT p14practica_medida as medida);
#AM_manej_agrofores_14
set @c14diversificacion=(SELECT 1 from tmp_cadena_diversificacion WHERE medida like '%AM_manej_agrofores_14%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_diversificacion WHERE medida like '%AM_manej_agrofores_14%')
			); 
 
	set @cadena14=(SELECT CONCAT(@c14diversificacion));
IF @cadena14=000 then
set @c14diversificacion='';
end if;
 DROP TABLE tmp_cadena_diversificacion;
 #--------------------------------------------------------------------------------------------------	
 
  CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_cafetales as (SELECT p15practica_medida as medida);
#AM_sist_agrofores_15
set @c15sistema_agroforestales=(SELECT 1 from tmp_cadena_cafetales WHERE medida like '%AM_sist_agrofores_15%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_cafetales WHERE medida like '%AM_sist_agrofores_15%')
			); 
 
	set @cadena15=(SELECT CONCAT(@c15sistema_agroforestales));
IF @cadena15=000 then
set @c15sistema_agroforestales='';
end if;
 
 DROP TABLE tmp_cadena_cafetales;
 #--------------------------------------------------------------------------------------------------	
 
   CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_cviejos as (SELECT p16practica_medida as medida);
#A_renov_acordes_16
set @c16renovar=(SELECT 1 from tmp_cadena_cviejos WHERE medida like '%A_renov_acordes_16%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_cviejos WHERE medida like '%A_renov_acordes_16%')
			); 
 
set @cadena16=(SELECT CONCAT(@c16renovar));
IF @cadena16=000 then
set @c16renovar='';
end if;	
 DROP TABLE tmp_cadena_cviejos;
 #--------------------------------------------------------------------------------------------------	
   CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_au_variedades as (SELECT p17practica_medida as medida);
#AM_variedades_autori_17 AM_lotes_variedades_17
set @c17variedades_autori=(SELECT 1 from tmp_cadena_au_variedades WHERE medida like '%AM_variedades_autori_17%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_au_variedades WHERE medida like '%AM_variedades_autori_17%')
			); 
 set @c17lotes_variedades=(SELECT 1 from tmp_cadena_au_variedades WHERE medida like '%AM_lotes_variedades_17%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_au_variedades WHERE medida like '%AM_lotes_variedades_17%')
			); 
 set @cadena17=(SELECT CONCAT(@c17variedades_autori,@c17lotes_variedades));
IF @cadena17=000 then
set @c17variedades_autori='';
set @c17lotes_variedades='';

end if;
	
 DROP TABLE tmp_cadena_au_variedades;
 #--------------------------------------------------------------------------------------------------	
   CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_ausente_p as (SELECT p18practica_medida as medida);
#A_prog_podas_18
set @c18programa_podas=(SELECT 1 from tmp_cadena_ausente_p WHERE medida like '%A_prog_podas_18%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_ausente_p WHERE medida like '%A_prog_podas_18%')
			); 

	set @cadena18=(SELECT CONCAT(@c18programa_podas));
IF @cadena18=000 then
set @c18programa_podas='';


end if;
 DROP TABLE tmp_cadena_ausente_p;
 #--------------------------------------------------------------------------------------------------	
    CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_ausente_p as (SELECT p19practica_medida as medida);
#A_resiembras_anuales_19
set @c19resiembra=(SELECT 1 from tmp_cadena_ausente_p WHERE medida like '%A_resiembras_anuales_19%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_ausente_p WHERE medida like '%A_resiembras_anuales_19%')
			); 
	set @cadena19=(SELECT CONCAT(@c19resiembra));
IF @cadena19=000 then
set @c19resiembra='';


end if;
	
 DROP TABLE tmp_cadena_ausente_p;
 #--------------------------------------------------------------------------------------------------	
   CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_p_baja as (SELECT p20practica_medida as medida);
#AM_diag_integral_20 AM_anal_quimico_20 A_prog_fertilizacion_20 AM_nec_sustituir_20
set @c20diag_integral=(SELECT 1 from tmp_cadena_p_baja WHERE medida like '%AM_diag_integral_20%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_p_baja WHERE medida like '%AM_diag_integral_20%')
			); 
set @c20anal_quimico=(SELECT 1 from tmp_cadena_p_baja WHERE medida like '%AM_anal_quimico_20%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_p_baja WHERE medida like '%AM_anal_quimico_20%')
			); 			
set @c20progra_fertilizacion=(SELECT 1 from tmp_cadena_p_baja WHERE medida like '%A_prog_fertilizacion_20%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_p_baja WHERE medida like '%A_prog_fertilizacion_20%')
			); 
set @c20nec_sustituir=(SELECT 1 from tmp_cadena_p_baja WHERE medida like '%AM_nec_sustituir_20%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_p_baja WHERE medida like '%AM_nec_sustituir_20%')
			); 			

	set @cadena20=(SELECT CONCAT(@c20diag_integral,@c20anal_quimico,@c20progra_fertilizacion,@c20nec_sustituir));
IF @cadena20=000 then
set @c20diag_integral='';
set @c20anal_quimico='';

set @c20progra_fertilizacion='';
set @c20nec_sustituir='';

end if;
 DROP TABLE tmp_cadena_p_baja;
 #--------------------------------------------------------------------------------------------------	
	 CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_200kg as (SELECT p21practica_medida as medida);
#AM_sust_adecudamente_21 AM_busc_niveles_22
set @c21sust_adecuadamente=(SELECT 1 from tmp_cadena_200kg WHERE medida like '%AM_sust_adecudamente_21%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_200kg WHERE medida like '%AM_sust_adecudamente_21%')
			); 
set @c21busc_niveles=(SELECT 1 from tmp_cadena_200kg WHERE medida like '%AM_busc_niveles_22%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_200kg WHERE medida like '%AM_busc_niveles_22%')
			); 
	set @cadena21=(SELECT CONCAT(@c21sust_adecuadamente,@c21busc_niveles));
IF @cadena21=000 then
set @c21sust_adecuadamente='';
set @c21busc_niveles='';

end if;
 DROP TABLE tmp_cadena_200kg;
 #--------------------------------------------------------------------------------------------------	
 
 	 CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_abono as (SELECT p22practica_medida as medida);
#AM_abono_org_22 AM_fincas_abono_org_22
set @c22abono_org=(SELECT 1 from tmp_cadena_abono WHERE medida like '%AM_abono_org_22%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_abono WHERE medida like '%AM_abono_org_22%')
			); 
set @c22fincas_abono=(SELECT 1 from tmp_cadena_abono WHERE medida like '%AM_fincas_abono_org_22%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_abono WHERE medida like '%AM_fincas_abono_org_22%')
			); 
	set @cadena22=(SELECT CONCAT(@c22abono_org,@c22fincas_abono));
IF @cadena22=000 then
set @c22abono_org='';
set @c22fincas_abono='';

end if;
 DROP TABLE tmp_cadena_abono;
 #--------------------------------------------------------------------------------------------------	
 
 CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_quebradas as (SELECT p23practica_medida as medida);
#AM_recup_cobertura_23
set @c23abono_org=(SELECT 1 from tmp_cadena_quebradas WHERE medida like '%AM_recup_cobertura_23%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_quebradas WHERE medida like '%AM_recup_cobertura_23%')
			); 
set @cadena23=(SELECT CONCAT(@c23abono_org));
IF @cadena23=000 then
set @c23abono_org='';


end if;
 DROP TABLE tmp_cadena_quebradas;
 #--------------------------------------------------------------------------------------------------	
 
  CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_socios as (SELECT p24practica_medida as medida);
#AM_arreg_sist_agro_24
set @c24sistem_agro=(SELECT 1 from tmp_cadena_socios WHERE medida like '%AM_arreg_sist_agro_24%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_socios WHERE medida like '%AM_arreg_sist_agro_24%')
			); 
set @cadena24=(SELECT CONCAT(@c24sistem_agro));
IF @cadena24=000 then
set @c24sistem_agro='';

end if;
 DROP TABLE tmp_cadena_socios;
 #--------------------------------------------------------------------------------------------------	
 
   CREATE TEMPORARY TABLE IF NOT EXISTS tmp_cadena_au_procesos as (SELECT p25practica_medida as medida);
#AM_forta_acc_org_25
set @c25sistem_agro=(SELECT 1 from tmp_cadena_au_procesos WHERE medida like '%AM_forta_acc_org_25%'
			UNION
			SELECT 0 FROM DUAL
     WHERE NOT EXISTS
     (SELECT *from tmp_cadena_au_procesos WHERE medida like '%AM_forta_acc_org_25%')
			); 
set @cadena25=(SELECT CONCAT(@c25sistem_agro));
IF @cadena25=000 then
set @c25sistem_agro='';

end if;
 DROP TABLE tmp_cadena_au_procesos;
 #--------------------------------------------------------------------------------------------------	
	INSERT INTO tbl_estructura_vulnerabilidad 
	#40
	VALUES(null,pfecha_inicio,pfecha_end,ptoday,pusernam,psimserial,psubscriberid,pdeviceid,pfecha_visita,pdepartamento,pmunicipio,paldea,pubicacion,platitud,plongitud,0,0,
pregional,pagencia,0,pproductor,pidentidad,pclave_productor,psexo,pedad,ptelefono,
0,ppendiennte,ptotal_finca_area,ptotal_cafe_area,pproduccion,pedad_cafetal,pmeses_seco,0,0,    
pp1pcambios_tem,p1practica_medida,@tolerante,@siste_produccion,@sis_agroforesteria,
#71
pp2lluvias_regulares,p2practica_medida,@c2cosecha_agua,@c2riesgo_adecuado,@c2aplicion_foliares,

pp3aumento_lluvia,p3practica_medida,@c3conser_suelo,@c3manejo_sombra,@c3area_riesgo,

pp4riegos_huracanes,p4practica_medida,@c4mantener_info,@c4evitar_riesgo, 
pp5sequia_ul_anos,p5practica_medid,@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
pp6vientos_fuerte,p6practica_medida,@c6var_rompemuro,@c6manej_sombra,
pp7senales_erosion,p7practica_medida,@c7conservar_suelo,@c7suelo_manejo,@c7manejo_sombra,
pp8fertilidad_suelos,p8practica_medida,@c8programa_fertilizacion,@c8materio_organica,@c8manejo_sombra,

pp9faltan_pract_suelos,p9practica_medida,@c9practica_conservacion,

pp10ausencia_hiervas,p10practica_medida,@c10manejo_hierva,@c10manejo_sombra,
pp11floracion_irregular,p11practica_medida,@c11prog_fertilizacion,@c11riego_adecuado,@c11manejo_sombra,
pp12incre_caida_flores,p12practica_medida,@c12progra_fertilizacion,@c12rego_adecuado,@c12manejo_sombra,
pp13incre_dano_plagas,p13practica_medida,@c13dianosticos,@c13medidas_control,@c13mantener_informado,@c13comb_lotes,@c13manejo_sombra,@c13manejo_integral,
pp14diversificacion_cafetal,p14practica_medida,@c14diversificacion,
pp15cafetales_pleno_sol,p15practica_medida,@c15sistema_agroforestales,
 pp16cafetales_viejos,p16practica_medida,@c16renovar,
 pp17var_existentes_resistentes,p17practica_medida,@c17variedades_autori,@c17lotes_variedades,
 pp18practica_anula_poda,p18practica_medida,@c18programa_podas,
 pp19resiembra_cafetos,p19practica_medida,@c19resiembra,
 pp20produc_bajando,p20practica_medida,@c20diag_integral,@c20anal_quimico,@c20progra_fertilizacion,@c20nec_sustituir,
pp21aplica_mas_200g,p21practica_medida,@c21sust_adecuadamente,@c21busc_niveles,
pp22ausente_abono,p22practica_medida,@c22abono_org,@c22fincas_abono,
 pp23queb_fuent_sin_cobertura,p23practica_medida,@c23abono_org,
 pp24sin_asocios_arboles,p24practica_medida,@c24sistem_agro,
 pp25ausente_proc_org,p25practica_medida,@c25sistem_agro,
 
 ptotal,0,0,@tecnicos,pobservacion,pversion1,@tecnicos,pversion2,pversion3,pinstanceid,
 0,indexx

	);


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_insert_variedades_kb` (IN `pvariedad` VARCHAR(50), IN `ptabla` VARCHAR(80), IN `psumision` VARCHAR(80), IN `psumision2` VARCHAR(80), IN `psumision3` VARCHAR(80), IN `pfecha` VARCHAR(80), IN `pstatus` VARCHAR(80))  BEGIN
	#Routine body goes here...
	
INSERT INTO tbl_estructura_variedades_vulnerabilidades(index1,variedades,tabla,sumision,sumision2,sumision3,fecha,status_1,codigo_variedad,posicion) VALUES(NULL,pvariedad,ptabla,psumision,psumision2,psumision3,pfecha,pstatus,'','');

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_normalizar` ()  NO SQL
BEGIN
#IMPORTANTE: la validacion de repetidos solo se aplica cuando ya existan por lo menos un registro en tbl_general_finca

START TRANSACTION;
SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from vista_ficha_finca);

WHILE @contar<@t_repetir DO
#recorrer la vista y mapear Select v.fechavisita,DATE(STR_TO_DATE(v.fechavisita,'%d/%m/%Y')) DATE(STR_TO_DATE(fechavisita,'%d/%m/%Y')), el cast para 


	select numero_identidad,nombre_productor,latitu,logitud,municipio,aldea,pendiente,area_total_finca,
	area_total_cafe,produccion_promedio,edad_cafetal,meses_seco,observacion,fechavisita,nombre_tecnico,
	
	p1cambios_temperatura,c1practica_instruccion,p2lluvias_irregulares,c2practica_instruccion,
	p3inuncaciones_derrumbe,c3practica_instruccion,p4riesgo_huracanes_tt,c4practica_instruccion,
	p5disminucion_agua,c5practica_instruccion,p6vientos_fuerte,c6practica_instruccion,
	p7señales_erosion,c7practica_instruccion,p8practica_suelo,c8practica_instruccion,
	p9f_practica_conservacion,c9practica_instruccion,p10ausente_hierva,c10practica_instruccion,
	p11floracion_irregular,c11practica_instruccion,p12aumento_defoliacion,c12practica_instruccion,
	p13enfermedad_plantas,c13practica_instrucciones,p14diversificacion_cafetal,c14practica_instruccion,
	p15cafetale_sol,c15practica_instruccion,p16cafetales_viejo,c16practica_instruccion,
	p17ausente_variedades,c17practica_instruccion,p18ausente_practica,c18practica_instruccion,p19ausente_x_año,c19practica_instruccion,p20produccion_bajo,c20practica_instruccion,p21aplico_200kg,c21practica_instruccion,
	p22ausente_abono,c22practica_instruccion,p23quebradas_sin_cobertura,c23practica_instruccion,
	p24sin_socios_arboles,c24practica_instruccion,p25ausente_procesos,c25practica_instrucciones,
	
	c1variedades_tolerante,c1sistema_produccion,c1implementar_sistema,c2cosecha_agua,c2riesgo_adecuada,			 c2aplicacion_frecuente_foliares,c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo,
	c4mantenerse_infomado,c4evitar_cultivo_riesgo,
	
	c5cosecha_agua,c5manejo_sombra,c5cobertura_suelo,
	c6barreras_rompe_viento,c6manejo_sombra,
	c7conservacion_suelos,c7menejo_selectivo,c7manejo_sombra,
	c8programa_fertilizacion,c8aporte_organica,c8manejo_sombra,
	c9practica_conservacion,
	c10m_seleccion_hierva,c10manejo_sombra,
	c11programa_fertilizacion,c11riesgo_adecuao,c11manejo_sombra,
	c12programa_fertilizacion,c12riesgo_adecuado,c12fuente_laguinosas,
	c13diagnostico_incidencia,c13medidas_climas,c13informado_alerta,c13manejo_cafetales,c13manejo_sombra,c13combinar_lotes,
	c14m_sistemas_agroforestales,
	c15condicion_sombra,
	c16programa_renovacion,
	c17identificar_disponibilidad,c17t_lotes_variedades,
	c18poscosecha_programa,
	c19contar_resiembras,
	c20diagnosticos_cafetales,c20analisis_quimico,c20r_programa_fertilizacion,c20necesidad_sustituto,
	c21sustituir_o_complementar,c21buscar_productividad,
	c22incorporar_abono,c22elaborar_abono,
	c23recuperacion_cobertura,
	c24arreglos_sistema,
	c25fortalecer_acciones,
	indexxx,
	departamento
	
	
	
	
	
	INTO @identidad,@nombre_productor,@latitu,@logitud,@municipio,@aldea,
	@pendiente,@area_total_finca,
	@area_total_cafe,@produccion_promedio,@edad_cafetal,@meses_seco,@observacion,@fechavisita,@nombre_tecnico,
	
	@p1cambios_temperatura,@c1practica_instruccion,@p2lluvias_irregulares,@c2practica_instruccion,
	@p3inuncaciones_derrumbe,@c3practica_instruccion,@p4riesgo_huracanes_tt,@c4practica_instruccion,
	@p5disminucion_agua,@c5practica_instruccion,@p6vientos_fuerte,@c6practica_instruccion,
	@p7señales_erosion,@c7practica_instruccion,@p8practica_suelo,@c8practica_instruccion,
	@p9f_practica_conservacion,@c9practica_instruccion,@p10ausente_hierva,@c10practica_instruccion,
	@p11floracion_irregular,@c11practica_instruccion,@p12aumento_defoliacion,@c12practica_instruccion,
	@p13enfermedad_plantas,@c13practica_instrucciones,@p14diversificacion_cafetal,@c14practica_instruccion,
	@p15cafetale_sol,@c15practica_instruccion,@p16cafetales_viejo,@c16practica_instruccion,
	@p17ausente_variedades,@c17practica_instruccion,@p18ausente_practica,@c18practica_instruccion,@p19ausente_x_año,  
	@c19practica_instruccion,@p20produccion_bajo,@c20practica_instruccion,@p21aplico_200kg,@c21practica_instruccion,
	@p22ausente_abono,@c22practica_instruccion,@p23quebradas_sin_cobertura,@c23practica_instruccion,
	@p24sin_socios_arboles,@c24practica_instruccion,@p25ausente_procesos,@c25practica_instrucciones,
	
	@c1variedades_tolerante,@c1sistema_produccion,@c1implementar_sistema,@c2cosecha_agua,@c2riesgo_adecuada,
	@c2aplicacion_frecuente_foliares,@c3conservacion_suelo,@c3diseño_sombre,@c3evitar_cultivo_riesgo,
	@c4mantenerse_infomado,@c4evitar_cultivo_riesgo,
	
	
	@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	@c6barreras_rompe_viento,@c6manejo_sombra,
	@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
	@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
	@c9practica_conservacion,
	@c10m_seleccion_hierva,@c10manejo_sombra,
	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
	@c14m_sistemas_agroforestales,
	@c15condicion_sombra,
	@c16programa_renovacion,
	@c17identificar_disponibilidad,@c17t_lotes_variedades,
	@c18poscosecha_programa,
	@c19contar_resiembras,
	@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
	@c21sustituir_o_complementar,@c21buscar_productividad,
	@c22incorporar_abono,@c22elaborar_abono,
	@c23recuperacion_cobertura,
	@c24arreglos_sistema,
	@c25fortalecer_acciones,
	@indexxx,@departamento
 
		from vista_ficha_finca 
    WHERE n =(@contar+1) ;
		#convertir strin a decimal
		   
	set @pendienteDecimal=(SELECT CAST(@pendiente as Decimal(10,2)));
			set @area_total_fincaDecimal=(SELECT CAST(@area_total_finca as DECIMAL(10,2)));
			SET @area_total_cafeDecimal =(SELECT CAST(@area_total_cafe as DECIMAL(10,2)));
			set @produccion_promedioDecimal=(SELECT CAST(@produccion_promedio as DECIMAL(10,2)));
		
		
	#buscar en ihcafemonitoreo si existe y mapear en variables
		SELECT latitud,longitud,cod_finca,cod_identidad
    into @f_latitud,@f_longitud,@f_cod_finca,@f_cod_identidad
    from ihcafemonitoreo.tbl_general_finca gf
    WHERE gf.latitud=@latitu AND gf.longitud=@logitud  and gf.cod_identidad=@identidad
  	order by gf.cod_identidad DESC LIMIT 1;
  #numero de fila que hay 
 	 SELECT COUNT(*) into @canfilas FROM ihcafemonitoreo.tbl_general_finca mf
     WHERE mf.cod_identidad=@identidad ;
		 
		 # para extraer el codigo de las tablas  municipio y tecnicos y preguntas
	#SELECT gm.cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	#INNER JOIN ihcafemonitoreo.tbl_general_departamento gd on gm.cod_depart=gd.cod_depart
	#WHERE gd.departamento=@departamento and gm.municipio=@municipio LIMIT 1;
	
	##SELECT T.cod_tecnico into @nombre_tecnico from ihcafemonitoreo.tbl_general_tecnico t 
	#WHERE t.nombre= @nombre_tecnico LIMIT 1;
	
	if  @canfilas=0 and not EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.latitud=@latitu and fff.longitud=@logitud LIMIT 1) then
	 
	INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) 
	VALUES(@identidad,@nombre_productor,@latitu,@logitud,@identidad);
	select 1 as codigo, 'Se inserto Correctamente' as mensaje;
	
	#insertado en vulnerabilidadficha
			
	INSERT INTO ihcafemonitoreo.tbl_vulnerabilidades_ficha(cod_vulnerabilidad,cod_identidad,cod_municipio,pendiente,
	area_total_finca,area_total_cafe,p_promedio,edad_cafetal,cod_finca,cod_tecnico,num_meses_seco,fecha_visita,sitio,
	observacion,fecha_i,fecha_sistema)
	 VALUES(NULL,@identidad,@municipio,@pendienteDecimal,@area_total_fincaDecimal,@area_total_cafeDecimal,
	 @produccion_promedioDecimal,@edad_cafetal,@identidad,@nombre_tecnico,@meses_seco,@fechavisita,@aldea,@observacion,
	 @fechavisita,NOW());	
	 
	 #set @maximo=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
	# set @vueltas=(SELECT COUNT(vvv.codigo_variedad) FROM vista_vulnerabilidad_variedades vvv 
	 #WHERE vvv.sumision=@indexxx LIMIT 1);
		#if @vueltas=1 THEN
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=1 ;
	 #elseif @vueltas=2 then
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=1 ;
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=2 ;
	 #end if;
	 
	 
	 
	 
#insertado en variedades solo esta para dos
set @vueltas=(SELECT COUNT(vvv.codigo_variedad) FROM vista_vulnerabilidad_variedades vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @i=0;
		#es el id de ficha vulnerabilidad
		set @maximo=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
	#WHILE @i<@vueltas DO
	

		#es el id de ficha vulnerabilidad
		
WHILE @i<@vueltas DO
	
	
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@i+1 LIMIT 1;
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo);
		


	
	set @i=@i+1;
end while;	
	 
	 
		
 ##SET @i = @i + 1;
#END WHILE;

	
			
			
#@c1variedades_tolerante,@c1sistema_produccion,@c1implementar_sistema,
CASE#insertado en tbl_h_respuesta
		WHEN UPPER(TRIM(@p1cambios_temperatura))='SI' THEN
			
			SET @c1variedad_tolerante=(SELECT CONVERT(@c1variedades_tolerante,SIGNED));
			set @c1SistemaProduccion=(SELECT CONVERT(@c1sistema_produccion,SIGNED));
			set @c1ImplementarSistema=(SELECT CONVERT(@c1implementar_sistema,SIGNED));
			
			if @c1variedad_tolerante='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,1,@identidad);
			end if;	
			if @c1SistemaProduccion='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,2,@identidad);
			end if;
			if @c1ImplementarSistema='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,3,@identidad);
			end if;
			IF @c1variedad_tolerante=" " AND @c1SistemaProduccion=" " AND @c1ImplementarSistema=" " THEN
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,5,@identidad);
			END IF;
				
			
		WHEN UPPER(TRIM(@p1cambios_temperatura))='NO' THEN
			#SELECT vr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vr 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on vr.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p1cambios_temperatura) and  vr.cod_pregunta=1 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,4,@identidad);
		WHEN UPPER(TRIM(@p1cambios_temperatura))='QUIZAS' THEN 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,@identidad);
		ELSE 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,@identidad);
		END CASE;
CASE	#@c2cosecha_agua,@c2riesgo_adecuada,#@c2aplicacion_frecuente_foliares
	WHEN TRIM(@p2lluvias_irregulares)='Si' THEN
	
				set @c2CosechaAgua=(SELECT CONVERT(@c2cosecha_agua,SIGNED));
		set @c2RiesgoAdecuada=(SELECT CONVERT(@c2riesgo_adecuada,SIGNED));
		set @c2AplicacionFoliares=(SELECT CONVERT(@c2aplicacion_frecuente_foliares,SIGNED));
			
		
		if @c2CosechaAgua='1' then
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,6,@identidad);
		end if;
		if 	@c2riesgo_adecuada='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,7,@identidad);
		end if;
		if @c2AplicacionFoliares='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,8,@identidad);
		end if;
		
		IF @c2CosechaAgua=' ' AND @c2RiesgoAdecuada=' ' AND @c2AplicacionFoliares=' ' THEN##QUE SEA POR 0 TAMBIEN. 
			##agregar en todas		
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,10,@identidad);
		END IF;
		
		
	WHEN TRIM(@p2lluvias_irregulares)='No' THEN
		#SELECT vrr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vrr 		
		#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion dd on vrr.cod_desicion=dd.cod_desicion
		#WHERE dd.desisicon=UPPER(@p2lluvias_irregulares) and  vrr.cod_pregunta=2 LIMIT 1;
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,9,@identidad);
	WHEN TRIM(@p2lluvias_irregulares)='Quizas' THEN
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,@identidad);
	ELSE
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,@identidad);
		
END CASE;		



CASE#c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo
		 WHEN TRIM(@p3inuncaciones_derrumbe)='Si' THEN
			set @c3ConservacionSuelo=(SELECT CONVERT(@c3conservacion_suelo,SIGNED));
			set @c3DiseñoSombra=(SELECT CONVERT(@c3diseño_sombre,SIGNED));
			set @c3EvitarCultivoRiesgo=(SELECT CONVERT(@c3evitar_cultivo_riesgo,SIGNED));
		 
				if @c3ConservacionSuelo='1' then	
						#insertado en tbl_h_respuesta
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,11,@identidad);
				end if;
				if @c3DiseñoSombra='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,12,@identidad);
				end if;
				if @c3EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,13,@identidad);
				end if;		
				IF @c3ConservacionSuelo=' ' AND @c3DiseñoSombra=' ' AND @c3EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,15,@identidad);
				END IF;		
				
		WHEN TRIM(@p3inuncaciones_derrumbe)='No' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,14,@identidad);
		WHEN TRIM(@p3inuncaciones_derrumbe)='Quizas' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,15,@identidad);
	  ELSE ##agregar en todas
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,15,@identidad)	;
		END CASE;


		
case#@c4mantenerse_infomado,@c4evitar_cultivo_riesgo		
		WHEN TRIM(@p4riesgo_huracanes_tt)='Si' THEN
				set @c4MantenerInformado=(SELECT CONVERT(@c4mantenerse_infomado,SIGNED));
				set @c4EvitarCultivoRiesgo=(SELECT CONVERT(@c4evitar_cultivo_riesgo,SIGNED));
							
				if @c4MantenerInformado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,16,@identidad);
				end if;
				if @c4EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,17,@identidad);
				end if;
				IF @c4MantenerInformado=' ' AND @c4EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,19,@identidad);
				END IF;		
						
		WHEN TRIM(@p4riesgo_huracanes_tt)='No' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,18,@identidad);
		WHEN TRIM(@p4riesgo_huracanes_tt)='Quizas' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,@identidad);
		ELSE
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,@identidad);
		END CASE;

case#@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	WHEN TRIM(@p5disminucion_agua)='Si' THEN
		set @c5CosechaAgua=(SELECT CONVERT(@c5cosecha_agua,SIGNED));
		SET @c5ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
		SET @c5CoberturaSuelo=(SELECT convert(@c5cobertura_suelo,SIGNED));
		
		if @c5CosechaAgua='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,20,@identidad);
				end if;
		if @c5ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,21,@identidad);
				end if;
		if @c5CoberturaSuelo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,22,@identidad);
				end if;		
			IF @c5CosechaAgua=' ' AND @c5ManejoSombra=' '  AND @c5CoberturaSuelo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,24,@identidad);
				END IF;		
		WHEN 	TRIM(@p5disminucion_agua)='No' THEN
						
			#insertado en tbl_h_respuesta
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,23,@identidad);
		WHEN 	TRIM(@p5disminucion_agua)='Quizas' THEN	
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,24,@identidad);
		ELSE
		
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,24,@identidad);
		END case;

case#@c6barreras_rompe_viento,@c6manejo_sombra,
		WHEN TRIM(@p6vientos_fuerte)='Si' THEN
					set @c6BarreraRompeViento=(SELECT CONVERT(@c6barreras_rompe_viento,SIGNED));
					SET @c6ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
				if @c6BarreraRompeViento='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,25,@identidad);
				end if;
				if @c6ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,26,@identidad);
				end if;	
				IF @c6BarreraRompeViento=' ' AND @c6ManejoSombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,28,@identidad);
				END IF;		
		WHEN TRIM(@p6vientos_fuerte)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,27,@identidad);
		WHEN TRIM(@p6vientos_fuerte)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,@identidad);
		END CASE;
		
		
		
		
CASE #@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
		WHEN TRIM(@p7señales_erosion)='Si' THEN
					set @c7conservacion_suelos=(SELECT CONVERT(@c7conservacion_suelos,SIGNED));
					SET @c7menejo_selectivo=(SELECT CONVERT(@c7menejo_selectivo,SIGNED));
					SET @c7manejo_sombra=(SELECT CONVERT(@c7manejo_sombra,SIGNED));
				if @c7conservacion_suelos='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,29,@identidad);
				end if;
				if @c7menejo_selectivo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,30,@identidad);
				end if;	
				if @c7manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,31,@identidad);
				end if;	
				IF @c7conservacion_suelos=' ' AND @c7menejo_selectivo=' '  AND @c7manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,33,@identidad);
				END IF;		
		WHEN TRIM(@p7señales_erosion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,32,@identidad);
		WHEN TRIM(@p7señales_erosion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,@identidad);
		END CASE;
		
		

		CASE #@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
		WHEN TRIM(@p8practica_suelo)='Si' THEN
					set @c8programa_fertilizacion=(SELECT CONVERT(@c8programa_fertilizacion,SIGNED));
					SET @c8aporte_organica=(SELECT CONVERT(@c8aporte_organica,SIGNED));
					SET @c8manejo_sombra=(SELECT CONVERT(@c8manejo_sombra,SIGNED));
				if @c8programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,34,@identidad);
				end if;
				if @c8aporte_organica='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,35,@identidad);
				end if;	
				if @c8manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,36,@identidad);
				end if;	
				IF @c8programa_fertilizacion=' ' AND @c8aporte_organica=' '  AND @c8manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,38,@identidad);
				END IF;		
		WHEN TRIM(@p8practica_suelo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,37,@identidad);
		WHEN TRIM(@p8practica_suelo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,@identidad);
		END CASE;
		
			
		CASE #@c9practica_conservacion,
		WHEN TRIM(@p9f_practica_conservacion)='Si' THEN
					set @c9practica_conservacion=(SELECT CONVERT(@c9practica_conservacion,SIGNED));
				
				if @c9practica_conservacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,39,@identidad);
				end if;
				
				IF @c9practica_conservacion=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,41,@identidad);
				END IF;		
		WHEN TRIM(@p9f_practica_conservacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,40,@identidad);
		WHEN TRIM(@p9f_practica_conservacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,@identidad);
		END CASE;
		
		
		CASE #@c10m_seleccion_hierva,@c10manejo_sombra,
		WHEN TRIM(@p10ausente_hierva)='Si' THEN
					set @c10m_seleccion_hierva=(SELECT CONVERT(@c10m_seleccion_hierva,SIGNED));
					SET @c10manejo_sombra=(SELECT CONVERT(@c10manejo_sombra,SIGNED));
					
				if @c10m_seleccion_hierva='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,42,@identidad);
				end if;
				if @c10manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,43,@identidad);
				end if;	
	
	
				IF @c10m_seleccion_hierva=' ' AND @c10manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,45,@identidad);
				END IF;		
		WHEN TRIM(@p10ausente_hierva)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,44,@identidad);
		WHEN TRIM(@p10ausente_hierva)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,@identidad);
		END CASE;
	
		

	CASE #	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
		WHEN TRIM(@p11floracion_irregular)='Si' THEN
					set @c11programa_fertilizacion=(SELECT CONVERT(@c11programa_fertilizacion,SIGNED));
					SET @c11riesgo_adecuao=(SELECT CONVERT(@c11riesgo_adecuao,SIGNED));
					SET @c11manejo_sombra=(SELECT CONVERT(@c11manejo_sombra,SIGNED));
					
				if @c11programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,46,@identidad);
				end if;
				if @c11riesgo_adecuao='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,47,@identidad);
				end if;	
				if @c11manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,48,@identidad);
				end if;	
	
	
				IF @c11programa_fertilizacion=' ' AND @c11riesgo_adecuao=' ' AND @c11manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,50,@identidad);
				END IF;		
		WHEN TRIM(@p11floracion_irregular)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,49,@identidad);
		WHEN TRIM(@p11floracion_irregular)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,@identidad);
		END CASE;
		
		CASE #	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
		WHEN TRIM(@p12aumento_defoliacion)='Si' THEN
					set @c12programa_fertilizacion=(SELECT CONVERT(@c12programa_fertilizacion,SIGNED));
					SET @c12riesgo_adecuado=(SELECT CONVERT(@c12riesgo_adecuado,SIGNED));
					SET @c12fuente_laguinosas=(SELECT CONVERT(@c12fuente_laguinosas,SIGNED));
					
				if @c12programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,51,@identidad);
				end if;
				if @c12riesgo_adecuado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,52,@identidad);
				end if;	
				if @c12fuente_laguinosas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,53,@identidad);
				end if;	
	
	
				IF @c12programa_fertilizacion=' ' AND @c12riesgo_adecuado=' ' AND @c12fuente_laguinosas=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,55,@identidad);
				END IF;		
		WHEN TRIM(@p12aumento_defoliacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,54,@identidad);
		WHEN TRIM(@p12aumento_defoliacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,@identidad);
		END CASE;
		
CASE #	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
		WHEN TRIM(@p13enfermedad_plantas)='Si' THEN
					set @c13diagnostico_incidencia=(SELECT CONVERT(@c13diagnostico_incidencia,SIGNED));
					SET @c13medidas_climas=(SELECT CONVERT(@c13medidas_climas,SIGNED));
					SET @c13informado_alerta=(SELECT CONVERT(@c13informado_alerta,SIGNED));
					
					set @c13manejo_cafetales=(SELECT CONVERT(@c13manejo_cafetales,SIGNED));
					SET @c13manejo_sombra=(SELECT CONVERT(@c13manejo_sombra,SIGNED));
					SET @c13combinar_lotes=(SELECT CONVERT(@c13combinar_lotes,SIGNED));
					
				if @c13diagnostico_incidencia='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 

					VALUE(NULL,56,@identidad);
				end if;
				if @c13medidas_climas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,57,@identidad);
				end if;	
				if @c13informado_alerta='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,58,@identidad);
				end if;	
					
				if @c13manejo_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,59,@identidad);
				end if;
				if @c13manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,60,@identidad);
				end if;	
				if @c13combinar_lotes='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,61,@identidad);
				end if;	
	
	
	
				IF @c13diagnostico_incidencia=' ' AND @c13medidas_climas=' ' AND @c13informado_alerta=' ' and @c13manejo_cafetales=' ' AND @c13manejo_sombra=' ' 
				AND @c13combinar_lotes=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,63,@identidad);
				END IF;		
		WHEN TRIM(@p13enfermedad_plantas)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,62,@identidad);
		WHEN TRIM(@p13enfermedad_plantas)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,@identidad);
		END CASE;			
	
CASE #@c14m_sistemas_agroforestales,
		WHEN TRIM(@p14diversificacion_cafetal)='Si' THEN
					set @c14m_sistemas_agroforestales=(SELECT CONVERT(@c14m_sistemas_agroforestales,SIGNED));
	
					
				if @c14m_sistemas_agroforestales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,64,@identidad);
				end if;
				
				IF @c14m_sistemas_agroforestales=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,66,@identidad);
				END IF;		
		WHEN TRIM(@p14diversificacion_cafetal)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,65,@identidad);
		WHEN TRIM(@p14diversificacion_cafetal)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,@identidad);
		END CASE;	

CASE #@c15condicion_sombra
		WHEN TRIM(@p15cafetale_sol)='Si' THEN
					set @c15condicion_sombra=(SELECT CONVERT(@c15condicion_sombra,SIGNED));
	
					
				if @c15condicion_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,67,@identidad);
				end if;
				
				IF @c15condicion_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,69,@identidad);
				END IF;		
		WHEN TRIM(@p15cafetale_sol)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,68,@identidad);
		WHEN TRIM(@p15cafetale_sol)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,@identidad);
		END CASE;			
		
CASE #@c16programa_renovacion,
		WHEN TRIM(@p16cafetales_viejo)='Si' THEN
					set @c16programa_renovacion=(SELECT CONVERT(@c16programa_renovacion,SIGNED));
	
					
				if @c16programa_renovacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,70,@identidad);
				end if;
				
				IF @c16programa_renovacion=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,72,@identidad);
				END IF;		
		WHEN TRIM(@p16cafetales_viejo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,71,@identidad);
		WHEN TRIM(@p16cafetales_viejo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,@identidad);
		END CASE;			
		
CASE #@c17identificar_disponibilidad,@c17t_lotes_variedades,
		WHEN TRIM(@p17ausente_variedades)='Si' THEN
					set @c17identificar_disponibilidad=(SELECT CONVERT(@c17identificar_disponibilidad,SIGNED));
						set @c17t_lotes_variedades=(SELECT CONVERT(@c17t_lotes_variedades,SIGNED));
	
					
				if @c17identificar_disponibilidad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,73,@identidad);
				end if;
						
				if @c17t_lotes_variedades='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,74,@identidad);
				end if;
				
				IF @c17identificar_disponibilidad=' '  and @c17t_lotes_variedades=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,76,@identidad);
				END IF;		
				
				
		WHEN TRIM(@p17ausente_variedades)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,75,@identidad);
		WHEN TRIM(@p17ausente_variedades)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,@identidad);
		END CASE;			
		
		
CASE #@c18poscosecha_programa,
		WHEN TRIM(@p18ausente_practica)='Si' THEN
					set @c18poscosecha_programa=(SELECT CONVERT(@c18poscosecha_programa,SIGNED));
	
					
				if @c18poscosecha_programa='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,77,@identidad);
				end if;
				
				IF @c18poscosecha_programa=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,79,@identidad);
				END IF;		
		WHEN TRIM(@p18ausente_practica)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,78,@identidad);
		WHEN TRIM(@p18ausente_practica)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,@identidad);
		END CASE;				
		
CASE #@c19contar_resiembras,
		WHEN TRIM(@p19ausente_x_año)='Si' THEN
					set @c19contar_resiembras=(SELECT CONVERT(@c19contar_resiembras,SIGNED));
	
					
				if @c19contar_resiembras='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,80,@identidad);
				end if;
				
				IF @c19contar_resiembras=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,82,@identidad);
				END IF;		
		WHEN TRIM(@p19ausente_x_año)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,81,@identidad);
		WHEN TRIM(@p19ausente_x_año)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,@identidad);
		END CASE;				
		
CASE #@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
		WHEN TRIM(@p20produccion_bajo)='Si' THEN
					set @c20diagnosticos_cafetales=(SELECT CONVERT(@c20diagnosticos_cafetales,SIGNED));
					set @c20analisis_quimico=(SELECT CONVERT(@c20analisis_quimico,SIGNED));
					set @c20r_programa_fertilizacion=(SELECT CONVERT(@c20r_programa_fertilizacion,SIGNED));
					set @c20necesidad_sustituto=(SELECT CONVERT(@c20necesidad_sustituto,SIGNED));
	
					
				if @c20diagnosticos_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,83,@identidad);
				end if;
				if @c20analisis_quimico='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,84,@identidad);
				end if;
				if @c20r_programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,85,@identidad);
				end if;
				if @c20necesidad_sustituto='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,86,@identidad);
				end if;
				
				IF @c20diagnosticos_cafetales=' ' and @c20analisis_quimico=' ' and @c20r_programa_fertilizacion=' ' and @c20necesidad_sustituto=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,88,@identidad);
				end if;		
				
		WHEN TRIM(@p20produccion_bajo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,87,@identidad);
		WHEN TRIM(@p20produccion_bajo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,@identidad);
		END CASE;		
		
		
CASE #@c21sustituir_o_complementar,@c21buscar_productividad,
		WHEN TRIM(@p21aplico_200kg)='Si' THEN
					set @c21sustituir_o_complementar=(SELECT CONVERT(@c21sustituir_o_complementar,SIGNED));
					set @c21buscar_productividad=(SELECT CONVERT(@c21buscar_productividad,SIGNED));
					
	
					
				if @c21sustituir_o_complementar='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,89,@identidad);
				end if;
				if @c21buscar_productividad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,90,@identidad);
				end if;
				
				
				IF @c21sustituir_o_complementar=' ' and @c21buscar_productividad=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,92,@identidad);
				end if;		
				
		WHEN TRIM(@p21aplico_200kg)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,91,@identidad);
		WHEN TRIM(@p21aplico_200kg)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,@identidad);
		END CASE;		


CASE #	@c22incorporar_abono,@c22elaborar_abono,
		WHEN TRIM(@p22ausente_abono)='Si' THEN
					set @c22incorporar_abono=(SELECT CONVERT(@c22incorporar_abono,SIGNED));
					set @c22elaborar_abono=(SELECT CONVERT(@c22elaborar_abono,SIGNED));				
				if @c22incorporar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,93,@identidad);
				end if;
				if @c22elaborar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,94,@identidad);
				end if;			
				IF @c22incorporar_abono=' ' and @c22elaborar_abono=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,96,@identidad);
				end if;		
				
		WHEN TRIM(@p22ausente_abono)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,95,@identidad);
		WHEN TRIM(@p22ausente_abono)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,@identidad);
		END CASE;	
		
		

CASE #		@c23recuperacion_cobertura,
		WHEN TRIM(@p23quebradas_sin_cobertura)='Si' THEN
					set @c23recuperacion_cobertura=(SELECT CONVERT(@c23recuperacion_cobertura,SIGNED));
					
				if @c23recuperacion_cobertura='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,97,@identidad);
				end if;
					
				IF @c23recuperacion_cobertura=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,99,@identidad);
				end if;		
				
		WHEN TRIM(@p23quebradas_sin_cobertura)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,98,@identidad);
		WHEN TRIM(@p23quebradas_sin_cobertura)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,@identidad);
		END CASE;		
		
CASE #		@c24arreglos_sistema,,
		WHEN TRIM(@p24sin_socios_arboles)='Si' THEN
					set @c24arreglos_sistema=(SELECT CONVERT(@c24arreglos_sistema,SIGNED));
					
				if @c24arreglos_sistema='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,100,@identidad);
				end if;
					
				IF @c24arreglos_sistema=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,102,@identidad);
				end if;		
				
		WHEN TRIM(@p24sin_socios_arboles)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,101,@identidad);
		WHEN TRIM(@p24sin_socios_arboles)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,@identidad);
		END CASE;			
		
CASE #		@c25fortalecer_acciones,,,
		WHEN TRIM(@p25ausente_procesos)='Si' THEN
					set @c25fortalecer_acciones=(SELECT CONVERT(@c25fortalecer_acciones,SIGNED));
					
				if @c25fortalecer_acciones='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,103,@identidad);
				end if;
					
				IF @c25fortalecer_acciones=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,105,@identidad);
				end if;		
				
		WHEN TRIM(@p25ausente_procesos)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,104,@identidad);
		WHEN TRIM(@p25ausente_procesos)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,@identidad);
		END CASE;			
	
ELSEIF   @canfilas>0  and 
 EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.latitud=@latitu
	and fff.longitud=@logitud LIMIT 1) then 
#EXISTS (SELECT fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.longitud=@logitud) then
		set @string_Mensaje=concat('DATOS REPETIDOS ',@f_latitud,'-\t ',
                               @f_longitud);											 
			select 1 as codigo,@string_Mensaje mensaje;
	
															 
	#ELSEIF @canfilas>1 and @contar>1 AND NOT @f_latitud=@latitu THEN
	
else


SELECT COUNT(finca) 
    into @n_finca 
    from ihcafemonitoreo.tbl_general_finca gf
    WHERE gf.latitud<>@latitu OR gf.longitud<>@logitud  and gf.cod_identidad=@identidad
  	 LIMIT 1;
		
		INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) 
	VALUES(concat(@identidad,'-',@n_finca+1),(CONCAT(@nombre_productor,'-',@n_finca+1)),@latitu,@logitud,@identidad);
		
		#insert en vulnerabilidad ficha
		
		INSERT INTO ihcafemonitoreo.tbl_vulnerabilidades_ficha(cod_vulnerabilidad,cod_identidad,cod_municipio,
		pendiente,area_total_finca,area_total_cafe,p_promedio,edad_cafetal,cod_finca,cod_tecnico,num_meses_seco,
		fecha_visita,sitio,observacion,fecha_i,fecha_sistema) 
		VALUES(NULL,@identidad,@municipio,@pendienteDecimal,@area_total_fincaDecimal,@area_total_cafeDecimal,
	 @produccion_promedioDecimal,@edad_cafetal,(concat(@identidad,'-',@n_finca+1)),@nombre_tecnico,@meses_seca,@fechavisita,
		@aldea,@observacion,@fechavisita,NOW());
		
		
		##insertado en variedades
			
	set @vueltas2=(SELECT COUNT(vvv.codigo_variedad) FROM vista_vulnerabilidad_variedades vvv 
		WHERE vvv.sumision=@indexxx LIMIT 1);		
		SET @ii=0;
		#es el id de ficha vulnerabilidad
		set @maximo2=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
WHILE @ii<@vueltas2 DO
	
	
		SELECT vvv.codigo_variedad into @cod_variedad_f
		FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		vvv.posicion=@ii+1 LIMIT 1;
		INSERT INTO 
		ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		VALUES(NULL,@cod_variedad_f,@maximo2);
		set @ii=@ii+1;

	
	 
end while;	 
		
		
  	select 1 as codigo,'nueva aldea' mensaje;
CASE#insertado en tbl_h_respuesta
		WHEN UPPER(TRIM(@p1cambios_temperatura))='SI' THEN
				SET @c1variedad_tolerante=(SELECT CONVERT(@c1variedades_tolerante,SIGNED));
			set @c1SistemaProduccion=(SELECT CONVERT(@c1sistema_produccion,SIGNED));
			set @c1ImplementarSistema=(SELECT CONVERT(@c1implementar_sistema,SIGNED));
		
			if @c1variedad_tolerante='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,1,(concat(@identidad,'-',@n_finca+1)));
			end if;	
			if @c1SistemaProduccion='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,2,(concat(@identidad,'-',@n_finca+1)));
			end if;
			if @c1ImplementarSistema='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,3,(concat(@identidad,'-',@n_finca+1)));
			end if;
			IF @c1variedad_tolerante=' ' AND @c1SistemaProduccion=' ' AND @c1ImplementarSistema=' ' THEN
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,5,(concat(@identidad,'-',@n_finca+1)));
			END IF;
			
			
		WHEN UPPER(TRIM(@p1cambios_temperatura))='NO' THEN
			#SELECT vr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vr 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on vr.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p1cambios_temperatura) and  vr.cod_pregunta=1 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,4,concat(@identidad,'-',@n_finca+1));
		WHEN UPPER(TRIM(@p1cambios_temperatura))='QUIZAS' THEN 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,concat(@identidad,'-',@n_finca+1));
		ELSE 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
CASE	#@c2cosecha_agua,@c2riesgo_adecuada,#@c2aplicacion_frecuente_foliares
	WHEN TRIM(@p2lluvias_irregulares)='Si' THEN
		
				set @c2CosechaAgua=(SELECT CONVERT(@c2cosecha_agua,SIGNED));
		set @c2RiesgoAdecuada=(SELECT CONVERT(@c2riesgo_adecuada,SIGNED));
		set @c2AplicacionFoliares=(SELECT CONVERT(@c2aplicacion_frecuente_foliares,SIGNED));
			
	
		if @c2CosechaAgua='1' then
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,6,concat(@identidad,'-',@n_finca+1));
		end if;
		if 	@c2RiesgoAdecuada='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,7,concat(@identidad,'-',@n_finca+1));
		end if;
		if @c2AplicacionFoliares='1' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,8,concat(@identidad,'-',@n_finca+1));
		end if;
		
		IF @c2CosechaAgua=' ' AND @c2RiesgoAdecuada=' ' AND @c2AplicacionFoliares=' ' THEN##QUE SEA POR 0 TAMBIEN. 
			##agregar en todas		
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
		END IF;
		
		
	WHEN TRIM(@p2lluvias_irregulares)='No' THEN
		#SELECT vrr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vrr 		
		#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion dd on vrr.cod_desicion=dd.cod_desicion
		#WHERE dd.desisicon=UPPER(@p2lluvias_irregulares) and  vrr.cod_pregunta=2 LIMIT 1;
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,9,concat(@identidad,'-',@n_finca+1));
	WHEN TRIM(@p2lluvias_irregulares)='Quizas' THEN
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
	ELSE
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
		
END CASE;



CASE#c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo
		 WHEN TRIM(@p3inuncaciones_derrumbe)='Si' THEN
		 set @c3ConservacionSuelo=(SELECT CONVERT(@c3conservacion_suelo,SIGNED));
			set @c3DiseñoSombra=(SELECT CONVERT(@c3diseño_sombre,SIGNED));
			set @c3EvitarCultivoRiesgo=(SELECT CONVERT(@c3evitar_cultivo_riesgo,SIGNED));
		 
		 
				if @c3ConservacionSuelo='1' then	
						#insertado en tbl_h_respuesta
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,11,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c3DiseñoSombra='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,12,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c3EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,13,concat(@identidad,'-',@n_finca+1));
				end if;		
				IF @c3ConservacionSuelo=' ' AND @c3DiseñoSombra=' ' AND @c3EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,15,concat(@identidad,'-',@n_finca+1));
				END IF;		
				
		WHEN TRIM(@p3inuncaciones_derrumbe)='No' THEN
			#SELECT r.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta r 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on r.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p3inuncaciones_derrumbe) and  cod_pregunta=3 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,14,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p3inuncaciones_derrumbe)='Quizas' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,15,concat(@identidad,'-',@n_finca+1));
	  ELSE ##agregar en todas
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,15,concat(@identidad,'-',@n_finca+1))	;
		END CASE;
		
		
case#@c4mantenerse_infomado,@c4evitar_cultivo_riesgo		
		WHEN TRIM(@p4riesgo_huracanes_tt)='Si' THEN
				set @c4MantenerInformado=(SELECT CONVERT(@c4mantenerse_infomado,SIGNED));
				set @c4EvitarCultivoRiesgo=(SELECT CONVERT(@c4evitar_cultivo_riesgo,SIGNED));
		
				if @c4MantenerInformado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,16,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c4EvitarCultivoRiesgo='1' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,17,concat(@identidad,'-',@n_finca+1));
				end if;
				IF @c4MantenerInformado=' ' AND @c4EvitarCultivoRiesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,18,concat(@identidad,'-',@n_finca+1));
				END IF;		
						
		WHEN TRIM(@p4riesgo_huracanes_tt)='No' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,18,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p4riesgo_huracanes_tt)='Quizas' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,concat(@identidad,'-',@n_finca+1));
		ELSE
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,concat(@identidad,'-',@n_finca+1));
		END CASE;		
	
case#@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	WHEN TRIM(@p5disminucion_agua)='Si' THEN
		set @c5CosechaAgua=(SELECT CONVERT(@c5cosecha_agua,SIGNED));
		SET @c5ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
		SET @c5CoberturaSuelo=(SELECT convert(@c5cobertura_suelo,SIGNED));
		
		if @c5CosechaAgua='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,20,concat(@identidad,'-',@n_finca+1));
				end if;
		if @c5ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,21,concat(@identidad,'-',@n_finca+1));
				end if;
		if @c5CoberturaSuelo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,22,concat(@identidad,'-',@n_finca+1));
				end if;		
			IF @c5CosechaAgua=' ' AND @c5ManejoSombra=' '  AND @c5CoberturaSuelo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN 	TRIM(@p5disminucion_agua)='No' THEN
						
			#insertado en tbl_h_respuesta
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,23,concat(@identidad,'-',@n_finca+1));
		WHEN 	TRIM(@p5disminucion_agua)='Quizas' THEN	
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
		ELSE
		
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
		END case;

case#@c6barreras_rompe_viento,@c6manejo_sombra,
		WHEN TRIM(@p6vientos_fuerte)='Si' THEN
					set @c6BarreraRompeViento=(SELECT CONVERT(@c6barreras_rompe_viento,SIGNED));
					SET @c6ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
				if @c6BarreraRompeViento='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,25,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c6ManejoSombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,26,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c6BarreraRompeViento=' ' AND @c6ManejoSombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p6vientos_fuerte)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,27,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p6vientos_fuerte)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
	
	CASE #@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
		WHEN TRIM(@p7señales_erosion)='Si' THEN
					set @c7conservacion_suelos=(SELECT CONVERT(@c7conservacion_suelos,SIGNED));
					SET @c7menejo_selectivo=(SELECT CONVERT(@c7menejo_selectivo,SIGNED));
					SET @c7manejo_sombra=(SELECT CONVERT(@c7manejo_sombra,SIGNED));
				if @c7conservacion_suelos='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,29,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c7menejo_selectivo='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,30,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c7manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,31,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c7conservacion_suelos=' ' AND @c7menejo_selectivo=' '  AND @c7manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p7señales_erosion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,32,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p7señales_erosion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
		
		CASE #@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
		WHEN TRIM(@p8practica_suelo)='Si' THEN
					set @c8programa_fertilizacion=(SELECT CONVERT(@c8programa_fertilizacion,SIGNED));
					SET @c8aporte_organica=(SELECT CONVERT(@c8aporte_organica,SIGNED));
					SET @c8manejo_sombra=(SELECT CONVERT(@c8manejo_sombra,SIGNED));
				if @c8programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,34,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c8aporte_organica='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,35,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c8manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,36,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c8programa_fertilizacion=' ' AND @c8aporte_organica=' '  AND @c8manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p8practica_suelo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,37,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p8practica_suelo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
	CASE #@c9practica_conservacion,
		WHEN TRIM(@p9f_practica_conservacion)='Si' THEN
					set @c9practica_conservacion=(SELECT CONVERT(@c9practica_conservacion,SIGNED));
				
				if @c9practica_conservacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,39,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c9practica_conservacion=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p9f_practica_conservacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,40,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p9f_practica_conservacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
		CASE #@c10m_seleccion_hierva,@c10manejo_sombra,
		WHEN TRIM(@p10ausente_hierva)='Si' THEN
					set @c10m_seleccion_hierva=(SELECT CONVERT(@c10m_seleccion_hierva,SIGNED));
					SET @c10manejo_sombra=(SELECT CONVERT(@c10manejo_sombra,SIGNED));
					
				if @c10m_seleccion_hierva='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,42,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c10manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,43,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c10m_seleccion_hierva=' ' AND @c10manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p10ausente_hierva)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,44,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p10ausente_hierva)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
	
	CASE #	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
		WHEN TRIM(@p11floracion_irregular)='Si' THEN
					set @c11programa_fertilizacion=(SELECT CONVERT(@c11programa_fertilizacion,SIGNED));
					SET @c11riesgo_adecuao=(SELECT CONVERT(@c11riesgo_adecuao,SIGNED));
					SET @c11manejo_sombra=(SELECT CONVERT(@c11manejo_sombra,SIGNED));
					
				if @c11programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,46,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c11riesgo_adecuao='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,47,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c11manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,48,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c11programa_fertilizacion=' ' AND @c11riesgo_adecuao=' ' AND @c11manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p11floracion_irregular)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,49,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p11floracion_irregular)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
		
			CASE #	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
		WHEN TRIM(@p12aumento_defoliacion)='Si' THEN
					set @c12programa_fertilizacion=(SELECT CONVERT(@c12programa_fertilizacion,SIGNED));
					SET @c12riesgo_adecuado=(SELECT CONVERT(@c12riesgo_adecuado,SIGNED));
					SET @c12fuente_laguinosas=(SELECT CONVERT(@c12fuente_laguinosas,SIGNED));
					
				if @c12programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,51,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c12riesgo_adecuado='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,52,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c12fuente_laguinosas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,53,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c12programa_fertilizacion=' ' AND @c12riesgo_adecuado=' ' AND @c12fuente_laguinosas=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p12aumento_defoliacion)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,54,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p12aumento_defoliacion)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
CASE #	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
		WHEN TRIM(@p13enfermedad_plantas)='Si' THEN
					set @c13diagnostico_incidencia=(SELECT CONVERT(@c13diagnostico_incidencia,SIGNED));
					SET @c13medidas_climas=(SELECT CONVERT(@c13medidas_climas,SIGNED));
					SET @c13informado_alerta=(SELECT CONVERT(@c13informado_alerta,SIGNED));
					
					set @c13manejo_cafetales=(SELECT CONVERT(@c13manejo_cafetales,SIGNED));
					SET @c13manejo_sombra=(SELECT CONVERT(@c13manejo_sombra,SIGNED));
					SET @c13combinar_lotes=(SELECT CONVERT(@c13combinar_lotes,SIGNED));
					
				if @c13diagnostico_incidencia='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,56,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c13medidas_climas='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,57,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c13informado_alerta='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,58,concat(@identidad,'-',@n_finca+1));
				end if;	
					
				if @c13manejo_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,59,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c13manejo_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,60,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c13combinar_lotes='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,61,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
	
				IF @c13diagnostico_incidencia=' ' AND @c13medidas_climas=' ' AND @c13informado_alerta=' ' and @c13manejo_cafetales=' ' AND @c13manejo_sombra=' ' 
				AND @c13combinar_lotes=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p13enfermedad_plantas)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,62,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p13enfermedad_plantas)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));
		END CASE;		
		
CASE #@c14m_sistemas_agroforestales,
		WHEN TRIM(@p14diversificacion_cafetal)='Si' THEN
					set @c14m_sistemas_agroforestales=(SELECT CONVERT(@c14m_sistemas_agroforestales,SIGNED));
	
					
				if @c14m_sistemas_agroforestales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,64,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c14m_sistemas_agroforestales=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p14diversificacion_cafetal)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,65,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p14diversificacion_cafetal)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));
		END CASE;	
				
CASE #@c15condicion_sombra
		WHEN TRIM(@p15cafetale_sol)='Si' THEN
					set @c15condicion_sombra=(SELECT CONVERT(@c15condicion_sombra,SIGNED));
	
					
				if @c15condicion_sombra='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,67,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c15condicion_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p15cafetale_sol)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,68,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p15cafetale_sol)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));
		END CASE;			

CASE #@c16programa_renovacion,
		WHEN TRIM(@p16cafetales_viejo)='Si' THEN
					set @c16programa_renovacion=(SELECT CONVERT(@c16programa_renovacion,SIGNED));
	
					
				if @c16programa_renovacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,70,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c16programa_renovacion=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p16cafetales_viejo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,71,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p16cafetales_viejo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));
		END CASE;	
		
		
CASE #@c17identificar_disponibilidad,@c17t_lotes_variedades,
		WHEN TRIM(@p17ausente_variedades)='Si' THEN
					set @c17identificar_disponibilidad=(SELECT CONVERT(@c17identificar_disponibilidad,SIGNED));
						set @c17t_lotes_variedades=(SELECT CONVERT(@c17t_lotes_variedades,SIGNED));
	
					
				if @c17identificar_disponibilidad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,73,concat(@identidad,'-',@n_finca+1));
				end if;
						
				if @c17t_lotes_variedades='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,74,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c17identificar_disponibilidad=' '  and @c17t_lotes_variedades=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));
				END IF;		
				
				
		WHEN TRIM(@p17ausente_variedades)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,75,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p17ausente_variedades)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));
		END CASE;		
		
CASE #@c18poscosecha_programa,
		WHEN TRIM(@p18ausente_practica)='Si' THEN
					set @c18poscosecha_programa=(SELECT CONVERT(@c18poscosecha_programa,SIGNED));
	
					
				if @c18poscosecha_programa='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,77,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c18poscosecha_programa=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p18ausente_practica)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,78,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p18ausente_practica)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));
		END CASE;				
			
CASE #@c19contar_resiembras,
		WHEN TRIM(@p19ausente_x_año)='Si' THEN
					set @c19contar_resiembras=(SELECT CONVERT(@c19contar_resiembras,SIGNED));
	
					
				if @c19contar_resiembras='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,80,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c19contar_resiembras=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p19ausente_x_año)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,81,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p19ausente_x_año)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));
		END CASE;			
				
CASE #@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
		WHEN TRIM(@p20produccion_bajo)='Si' THEN
					set @c20diagnosticos_cafetales=(SELECT CONVERT(@c20diagnosticos_cafetales,SIGNED));
					set @c20analisis_quimico=(SELECT CONVERT(@c20analisis_quimico,SIGNED));
					set @c20r_programa_fertilizacion=(SELECT CONVERT(@c20r_programa_fertilizacion,SIGNED));
					set @c20necesidad_sustituto=(SELECT CONVERT(@c20necesidad_sustituto,SIGNED));
	
					
				if @c20diagnosticos_cafetales='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,83,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20analisis_quimico='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,84,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20r_programa_fertilizacion='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,85,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20necesidad_sustituto='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,86,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c20diagnosticos_cafetales=' ' and @c20analisis_quimico=' ' and @c20r_programa_fertilizacion=' ' and @c20necesidad_sustituto=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p20produccion_bajo)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,87,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p20produccion_bajo)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));
		END CASE;						
						
						
CASE #@c21sustituir_o_complementar,@c21buscar_productividad,
		WHEN TRIM(@p21aplico_200kg)='Si' THEN
					set @c21sustituir_o_complementar=(SELECT CONVERT(@c21sustituir_o_complementar,SIGNED));
					set @c21buscar_productividad=(SELECT CONVERT(@c21buscar_productividad,SIGNED));
				if @c21sustituir_o_complementar='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,89,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c21buscar_productividad='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,90,concat(@identidad,'-',@n_finca+1));
				end if;
				
				
				IF @c21sustituir_o_complementar=' ' and @c21buscar_productividad=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p21aplico_200kg)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,91,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p21aplico_200kg)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));
		END CASE;			
						
CASE #	@c22incorporar_abono,@c22elaborar_abono,
		WHEN TRIM(@p22ausente_abono)='Si' THEN
					set @c22incorporar_abono=(SELECT CONVERT(@c22incorporar_abono,SIGNED));
					set @c22elaborar_abono=(SELECT CONVERT(@c22elaborar_abono,SIGNED));				
				if @c22incorporar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,93,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c22elaborar_abono='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,94,concat(@identidad,'-',@n_finca+1));
				end if;			
				IF @c22incorporar_abono=' ' and @c22elaborar_abono=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p22ausente_abono)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,95,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p22ausente_abono)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));
		END CASE;	
		
		
CASE #		@c23recuperacion_cobertura,
		WHEN TRIM(@p23quebradas_sin_cobertura)='Si' THEN
					set @c23recuperacion_cobertura=(SELECT CONVERT(@c23recuperacion_cobertura,SIGNED));
					
				if @c23recuperacion_cobertura='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,97,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c23recuperacion_cobertura=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p23quebradas_sin_cobertura)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,98,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p23quebradas_sin_cobertura)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));
		END CASE;		
						
CASE #		@c24arreglos_sistema,,
		WHEN TRIM(@p24sin_socios_arboles)='Si' THEN
					set @c24arreglos_sistema=(SELECT CONVERT(@c24arreglos_sistema,SIGNED));
					
				if @c24arreglos_sistema='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,100,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c24arreglos_sistema=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p24sin_socios_arboles)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,101,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p24sin_socios_arboles)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));
		END CASE;							
						
	
CASE #		@c25fortalecer_acciones,,,
		WHEN TRIM(@p25ausente_procesos)='Si' THEN
					set @c25fortalecer_acciones=(SELECT CONVERT(@c25fortalecer_acciones,SIGNED));
					
				if @c25fortalecer_acciones='1' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,103,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c25fortalecer_acciones=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p25ausente_procesos)='No' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,104,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p25ausente_procesos)='Quizas' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));			
		ELSE
				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));
		END CASE;								
		
	end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_normalizar_2018` ()  NO SQL
BEGIN

START TRANSACTION;
SET @a=0;
SET @contar=0;
set @t_repetir=(SELECT COUNT(n) from vista_ficha_finca_2018);

WHILE @contar<@t_repetir DO
#recorrer la vista y mapear Select v.fechavisita,DATE(STR_TO_DATE(v.fechavisita,'%d/%m/%Y')) DATE(STR_TO_DATE(fechavisita,'%d/%m/%Y')), el cast para 


	select numero_identidad,nombre_productor,latitu,logitud,municipio,aldea,pendiente,area_total_finca,
	area_total_cafe,produccion_promedio,edad_cafetal,meses_seco,observacion,fechavisita,nombre_tecnico,
	
	p1cambios_temperatura,c1practica_instruccion,p2lluvias_irregulares,c2practica_instruccion,
	p3inuncaciones_derrumbe,c3practica_instruccion,p4riesgo_huracanes_tt,c4practica_instruccion,
	p5disminucion_agua,c5practica_instruccion,p6vientos_fuerte,c6practica_instruccion,
	p7señales_erosion,c7practica_instruccion,p8practica_suelo,c8practica_instruccion,
	p9f_practica_conservacion,c9practica_instruccion,p10ausente_hierva,c10practica_instruccion,
	p11floracion_irregular,c11practica_instruccion,p12aumento_defoliacion,c12practica_instruccion,
	p13enfermedad_plantas,c13practica_instrucciones,p14diversificacion_cafetal,c14practica_instruccion,
	p15cafetale_sol,c15practica_instruccion,p16cafetales_viejo,c16practica_instruccion,
	p17ausente_variedades,c17practica_instruccion,p18ausente_practica,c18practica_instruccion,p19ausente_x_año,c19practica_instruccion,p20produccion_bajo,c20practica_instruccion,p21aplico_200kg,c21practica_instruccion,
	p22ausente_abono,c22practica_instruccion,p23quebradas_sin_cobertura,c23practica_instruccion,
	p24sin_socios_arboles,c24practica_instruccion,p25ausente_procesos,c25practica_instrucciones,
	
	c1variedades_tolerante,c1sistema_produccion,c1implementar_sistema,c2cosecha_agua,c2riesgo_adecuada,			 c2aplicacion_frecuente_foliares,c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo,
	c4mantenerse_infomado,c4evitar_cultivo_riesgo,
	
	c5cosecha_agua,c5manejo_sombra,c5cobertura_suelo,
	c6barreras_rompe_viento,c6manejo_sombra,
	c7conservacion_suelos,c7menejo_selectivo,c7manejo_sombra,
	c8programa_fertilizacion,c8aporte_organica,c8manejo_sombra,
	c9practica_conservacion,
	c10m_seleccion_hierva,c10manejo_sombra,
	c11programa_fertilizacion,c11riesgo_adecuao,c11manejo_sombra,
	c12programa_fertilizacion,c12riesgo_adecuado,c12fuente_laguinosas,
	c13diagnostico_incidencia,c13medidas_climas,c13informado_alerta,c13manejo_cafetales,c13manejo_sombra,c13combinar_lotes,
	c14m_sistemas_agroforestales,
	c15condicion_sombra,
	c16programa_renovacion,
	c17identificar_disponibilidad,c17t_lotes_variedades,
	c18poscosecha_programa,
	c19contar_resiembras,
	c20diagnosticos_cafetales,c20analisis_quimico,c20r_programa_fertilizacion,c20necesidad_sustituto,
	c21sustituir_o_complementar,c21buscar_productividad,
	c22incorporar_abono,c22elaborar_abono,
	c23recuperacion_cobertura,
	c24arreglos_sistema,
	c25fortalecer_acciones,
	indexxx,
	departamento
	
	
	
	
	
	INTO @identidad,@nombre_productor,@latitu,@logitud,@municipio,@aldea,
	@pendiente,@area_total_finca,
	@area_total_cafe,@produccion_promedio,@edad_cafetal,@meses_seco,@observacion,@fechavisita,@nombre_tecnico,
	
	@p1cambios_temperatura,@c1practica_instruccion,@p2lluvias_irregulares,@c2practica_instruccion,
	@p3inuncaciones_derrumbe,@c3practica_instruccion,@p4riesgo_huracanes_tt,@c4practica_instruccion,
	@p5disminucion_agua,@c5practica_instruccion,@p6vientos_fuerte,@c6practica_instruccion,
	@p7señales_erosion,@c7practica_instruccion,@p8practica_suelo,@c8practica_instruccion,
	@p9f_practica_conservacion,@c9practica_instruccion,@p10ausente_hierva,@c10practica_instruccion,
	@p11floracion_irregular,@c11practica_instruccion,@p12aumento_defoliacion,@c12practica_instruccion,
	@p13enfermedad_plantas,@c13practica_instrucciones,@p14diversificacion_cafetal,@c14practica_instruccion,
	@p15cafetale_sol,@c15practica_instruccion,@p16cafetales_viejo,@c16practica_instruccion,
	@p17ausente_variedades,@c17practica_instruccion,@p18ausente_practica,@c18practica_instruccion,@p19ausente_x_año,  
	@c19practica_instruccion,@p20produccion_bajo,@c20practica_instruccion,@p21aplico_200kg,@c21practica_instruccion,
	@p22ausente_abono,@c22practica_instruccion,@p23quebradas_sin_cobertura,@c23practica_instruccion,
	@p24sin_socios_arboles,@c24practica_instruccion,@p25ausente_procesos,@c25practica_instrucciones,
	
	@c1variedades_tolerante,@c1sistema_produccion,@c1implementar_sistema,@c2cosecha_agua,@c2riesgo_adecuada,
	@c2aplicacion_frecuente_foliares,@c3conservacion_suelo,@c3diseño_sombre,@c3evitar_cultivo_riesgo,
	@c4mantenerse_infomado,@c4evitar_cultivo_riesgo,
	
	
	@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	@c6barreras_rompe_viento,@c6manejo_sombra,
	@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
	@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
	@c9practica_conservacion,
	@c10m_seleccion_hierva,@c10manejo_sombra,
	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
	@c14m_sistemas_agroforestales,
	@c15condicion_sombra,
	@c16programa_renovacion,
	@c17identificar_disponibilidad,@c17t_lotes_variedades,
	@c18poscosecha_programa,
	@c19contar_resiembras,
	@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
	@c21sustituir_o_complementar,@c21buscar_productividad,
	@c22incorporar_abono,@c22elaborar_abono,
	@c23recuperacion_cobertura,
	@c24arreglos_sistema,
	@c25fortalecer_acciones,
	@indexxx,@departamento
 
		from vista_ficha_finca_2018 
    WHERE n =(@contar+1) ;
		#convertir strin a decimal
		   
	set @pendienteDecimal=(SELECT CAST(@pendiente as Decimal(10,2)));
			set @area_total_fincaDecimal=(SELECT CAST(@area_total_finca as DECIMAL(10,2)));
			SET @area_total_cafeDecimal =(SELECT CAST(@area_total_cafe as DECIMAL(10,2)));
			set @produccion_promedioDecimal=(SELECT CAST(@produccion_promedio as DECIMAL(10,2)));
		
		
	#buscar en ihcafemonitoreo si existe y mapear en variables
		SELECT latitud,longitud,cod_finca,cod_identidad
    into @f_latitud,@f_longitud,@f_cod_finca,@f_cod_identidad
    from ihcafemonitoreo.tbl_general_finca gf
    WHERE gf.latitud=@latitu AND gf.longitud=@logitud  and gf.cod_identidad=@identidad
  	order by gf.cod_identidad DESC LIMIT 1;
  #numero de fila que hay 
 	 SELECT COUNT(*) into @canfilas FROM ihcafemonitoreo.tbl_general_finca mf
     WHERE mf.cod_identidad=@identidad ;
		 
		 # para extraer el codigo de las tablas  municipio y tecnicos y preguntas
	SELECT gm.cod_municipio into @codigoMunicipio from ihcafemonitoreo.tbl_general_municipio gm
	INNER JOIN ihcafemonitoreo.tbl_general_departamento gd on gm.cod_depart=gd.cod_depart
	WHERE gd.departamento=@departamento and gm.municipio=@municipio LIMIT 1;
	
	SELECT T.cod_tecnico into @codigoTecnico from ihcafemonitoreo.tbl_general_tecnico t 
	WHERE t.nombre= @nombre_tecnico LIMIT 1;
	
	if  @canfilas=0 and not EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.latitud=@latitu and fff.longitud=@logitud LIMIT 1) then
	 
	INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) 
	VALUES(@identidad,@nombre_productor,@latitu,@logitud,@identidad);
	select 1 as codigo, 'Se inserto Correctamente' as mensaje;
	
	#insertado en vulnerabilidadficha
			
	INSERT INTO ihcafemonitoreo.tbl_vulnerabilidades_ficha(cod_vulnerabilidad,cod_identidad,cod_municipio,pendiente,
	area_total_finca,area_total_cafe,p_promedio,edad_cafetal,cod_finca,cod_tecnico,num_meses_seco,fecha_visita,sitio,
	observacion,fecha_i,fecha_sistema)
	 VALUES(NULL,@identidad,@codigoMunicipio,@pendienteDecimal,@area_total_fincaDecimal,@area_total_cafeDecimal,
	 @produccion_promedioDecimal,@edad_cafetal,@identidad,@codigoTecnico,@meses_seco,@fechavisita,@aldea,@observacion,
	 @fechavisita,NOW());	
	 
	 #set @maximo=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
	# set @vueltas=(SELECT COUNT(vvv.codigo_variedad) FROM vista_vulnerabilidad_variedades vvv 
	 #WHERE vvv.sumision=@indexxx LIMIT 1);
		#if @vueltas=1 THEN
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=1 ;
	 #elseif @vueltas=2 then
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=1 ;
	 #INSERT INTO ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_variedad,cod_vulnerabilidad) SELECT codigo_variedad,@maximo FROM ihcafefichas.vista_vulnerabilidad_variedades WHERE index1=@contar and posicion=2 ;
	 #end if;
	 
	 
	 
	 
	 #insertado en variedades solo esta para dos
	 #set @vueltas=(SELECT COUNT(vvv.codigo_variedad) 
		#FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx LIMIT 1);		
		#SET @i=1;
		#es el id de ficha vulnerabilidad
	#	set @maximo=(SELECT MAX(gnf.cod_vulnerabilidad) from ihcafemonitoreo.tbl_vulnerabilidades_ficha gnf);
	#WHILE @i<@vueltas DO
	
#	if @vueltas=1 then
	
		#SELECT vvv.codigo_variedad into @cod_variedad_f
		#FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		#vvv.posicion=1 LIMIT 1;
		#INSERT INTO 
		#ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
	#	VALUES(NULL,@cod_variedad_f,@maximo);
		
#	ELSEIF @vueltas=2 then
	
		#SELECT vvv.codigo_variedad into @cod_variedad_f
		#FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		#vvv.posicion=1 LIMIT 1;
		#SELECT vvv.codigo_variedad into @cod_variedad_f2
		#FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		#vvv.posicion=2 LIMIT 1;
		#INSERT INTO 
		#ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		#VALUES(NULL,@cod_variedad_f,@maximo);
		#INSERT INTO 
		#ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		#VALUES(NULL,@cod_variedad_f2,@maximo);
	
	
	
	# end if;
	 
	 
		
 ##SET @i = @i + 1;
#END WHILE;

	
			
			
#@c1variedades_tolerante,@c1sistema_produccion,@c1implementar_sistema,
CASE#insertado en tbl_h_respuesta
		WHEN UPPER(TRIM(@p1cambios_temperatura))=-1 THEN
			
	
			
			if @c1variedades_tolerante='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,1,@identidad);
			end if;	
			if @c1sistema_produccion='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,2,@identidad);
			end if;
			if @c1implementar_sistema='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,3,@identidad);
			end if;
			IF @c1variedades_tolerante='' AND @c1sistema_produccion='' AND @c1implementar_sistema='' THEN
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,5,@identidad);
			END IF;
				
			
		WHEN UPPER(TRIM(@p1cambios_temperatura))=1 THEN
			#SELECT vr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vr 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on vr.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p1cambios_temperatura) and  vr.cod_pregunta=1 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,4,@identidad);
		WHEN UPPER(TRIM(@p1cambios_temperatura))=0.5 THEN 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,@identidad);
		ELSE 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,@identidad);
		END CASE;
		
		
CASE	#@c2cosecha_agua,@c2riesgo_adecuada,#@c2aplicacion_frecuente_foliares
	WHEN TRIM(@p2lluvias_irregulares)='-1' THEN
	
		
			
		
		if @c2cosecha_agua='VE' then
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,6,@identidad);
		end if;
		if 	@c2riesgo_adecuada='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,7,@identidad);
		end if;
		if @c2aplicacion_frecuente_foliares='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,8,@identidad);
		end if;
		
		IF @c2cosecha_agua=' ' AND @c2riesgo_adecuada=' ' AND @c2aplicacion_frecuente_foliares=' ' THEN##QUE SEA POR 0 TAMBIEN. 
			##agregar en todas		
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,10,@identidad);
		END IF;
		
		
	WHEN TRIM(@p2lluvias_irregulares)='1' THEN
		#SELECT vrr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vrr 		
		#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion dd on vrr.cod_desicion=dd.cod_desicion
		#WHERE dd.desisicon=UPPER(@p2lluvias_irregulares) and  vrr.cod_pregunta=2 LIMIT 1;
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,9,@identidad);
	WHEN TRIM(@p2lluvias_irregulares)='0.5' THEN
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,@identidad);
	ELSE
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,@identidad);
		
END CASE;			

CASE#c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo
		 WHEN TRIM(@p3inuncaciones_derrumbe)='-1' THEN

		 
				if @c3conservacion_suelo='VE' then	
						#insertado en tbl_h_respuesta
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,11,@identidad);
				end if;
				if @c3diseño_sombre='VE' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,12,@identidad);
				end if;
				if @c3evitar_cultivo_riesgo='VE' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,13,@identidad);
				end if;		
				IF @c3conservacion_suelo=' ' AND @c3diseño_sombre=' ' AND @c3evitar_cultivo_riesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,15,@identidad);
				END IF;		
				
		WHEN TRIM(@p3inuncaciones_derrumbe)='1' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,14,@identidad);
		WHEN TRIM(@p3inuncaciones_derrumbe)='0.5' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,15,@identidad);
	  ELSE ##agregar en todas
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,15,@identidad)	;
		END CASE;
		
case#@c4mantenerse_infomado,@c4evitar_cultivo_riesgo		
		WHEN TRIM(@p4riesgo_huracanes_tt)='-1' THEN
				
							
				if @c4mantenerse_infomado='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,16,@identidad);
				end if;
				if @c4evitar_cultivo_riesgo='VE' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,17,@identidad);
				end if;
				IF @c4mantenerse_infomado=' ' AND @c4evitar_cultivo_riesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,19,@identidad);
				END IF;		
						
		WHEN TRIM(@p4riesgo_huracanes_tt)='1' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,18,@identidad);
		WHEN TRIM(@p4riesgo_huracanes_tt)='0.5' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,@identidad);
		ELSE
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,@identidad);
		END CASE;		

case#@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	WHEN TRIM(@p5disminucion_agua)='-1' THEN
		set @c5CosechaAgua=(SELECT CONVERT(@c5cosecha_agua,SIGNED));
		SET @c5ManejoSombra=(SELECT CONVERT(@c5manejo_sombra,SIGNED));
		SET @c5CoberturaSuelo=(SELECT convert(@c5cobertura_suelo,SIGNED));
		
		if @c5cosecha_agua='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,20,@identidad);
				end if;
		if @c5manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,21,@identidad);
				end if;
		if @c5cobertura_suelo='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,22,@identidad);
				end if;		
			IF @c5cosecha_agua=' ' AND @c5manejo_sombra=' '  AND @c5cobertura_suelo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,24,@identidad);
				END IF;		
		WHEN 	TRIM(@p5disminucion_agua)='1' THEN
						
			#insertado en tbl_h_respuesta
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,23,@identidad);
		WHEN 	TRIM(@p5disminucion_agua)='0.5' THEN	
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,24,@identidad);
		ELSE
		
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,24,@identidad);
		END case;
		
		
case#@c6barreras_rompe_viento,@c6manejo_sombra,
		WHEN TRIM(@p6vientos_fuerte)='-1' THEN
	
				if @c6barreras_rompe_viento='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,25,@identidad);
				end if;
				if @c6manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,26,@identidad);
				end if;	
				IF @c6barreras_rompe_viento=' ' AND @c6manejo_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,28,@identidad);
				END IF;		
		WHEN TRIM(@p6vientos_fuerte)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,27,@identidad);
		WHEN TRIM(@p6vientos_fuerte)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,@identidad);
		END CASE;
		
CASE #@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
		WHEN TRIM(@p7señales_erosion)='-1' THEN
	
				if @c7conservacion_suelos='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,29,@identidad);
				end if;
				if @c7menejo_selectivo='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,30,@identidad);
				end if;	
				if @c7manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,31,@identidad);
				end if;	
				IF @c7conservacion_suelos=' ' AND @c7menejo_selectivo=' '  AND @c7manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,33,@identidad);
				END IF;		
		WHEN TRIM(@p7señales_erosion)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,32,@identidad);
		WHEN TRIM(@p7señales_erosion)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,@identidad);
		END CASE;		
		
		


		CASE #@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
		WHEN TRIM(@p8practica_suelo)='-1' THEN
				
				if @c8programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,34,@identidad);
				end if;
				if @c8aporte_organica='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,35,@identidad);
				end if;	
				if @c8manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,36,@identidad);
				end if;	
				IF @c8programa_fertilizacion=' ' AND @c8aporte_organica=' '  AND @c8manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,38,@identidad);
				END IF;	
				
			
		WHEN TRIM(@p8practica_suelo)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,37,@identidad);
		WHEN TRIM(@p8practica_suelo)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,@identidad);
		END CASE;
		#_ - - - - - - - - - - - - - - - - - - - - - -
		CASE #@c9practica_conservacion,
		WHEN TRIM(@p9f_practica_conservacion)='-1' THEN
					
				
				if @c9practica_conservacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,39,@identidad);
				end if;
				
				IF @c9practica_conservacion=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,41,@identidad);
				END IF;		
		WHEN TRIM(@p9f_practica_conservacion)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,40,@identidad);
		WHEN TRIM(@p9f_practica_conservacion)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,@identidad);
		END CASE;
		
		
		CASE #@c10m_seleccion_hierva,@c10manejo_sombra,
		WHEN TRIM(@p10ausente_hierva)='-1' THEN
					
					
				if @c10m_seleccion_hierva='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,42,@identidad);
				end if;
				if @c10manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,43,@identidad);
				end if;	
	
	
				IF @c10m_seleccion_hierva=' ' AND @c10manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,45,@identidad);
				END IF;		
		WHEN TRIM(@p10ausente_hierva)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,44,@identidad);
		WHEN TRIM(@p10ausente_hierva)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,@identidad);
		END CASE;
	
		

	CASE #	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
		WHEN TRIM(@p11floracion_irregular)='-1' THEN
				
					
				if @c11programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,46,@identidad);
				end if;
				if @c11riesgo_adecuao='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,47,@identidad);
				end if;	
				if @c11manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,48,@identidad);
				end if;	
	
	
				IF @c11programa_fertilizacion=' ' AND @c11riesgo_adecuao=' ' AND @c11manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,50,@identidad);
				END IF;		
		WHEN TRIM(@p11floracion_irregular)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,49,@identidad);
		WHEN TRIM(@p11floracion_irregular)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,@identidad);
		END CASE;
		
		CASE #	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
		WHEN TRIM(@p12aumento_defoliacion)='-1' THEN
					
					
				if @c12programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,51,@identidad);
				end if;
				if @c12riesgo_adecuado='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,52,@identidad);
				end if;	
				if @c12fuente_laguinosas='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,53,@identidad);
				end if;	
	
	
				IF @c12programa_fertilizacion=' ' AND @c12riesgo_adecuado=' ' AND @c12fuente_laguinosas=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,55,@identidad);
				END IF;		
		WHEN TRIM(@p12aumento_defoliacion)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,54,@identidad);
		WHEN TRIM(@p12aumento_defoliacion)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,@identidad);
		END CASE;
		
CASE #	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
		WHEN TRIM(@p13enfermedad_plantas)='-1' THEN
		
					
				if @c13diagnostico_incidencia='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,56,@identidad);
				end if;
				if @c13medidas_climas='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,57,@identidad);
				end if;	
				if @c13informado_alerta='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,58,@identidad);
				end if;	
					
				if @c13manejo_cafetales='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,59,@identidad);
				end if;
				if @c13manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,60,@identidad);
				end if;	
				if @c13combinar_lotes='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,61,@identidad);
				end if;	
	
	
	
				IF @c13diagnostico_incidencia=' ' AND @c13medidas_climas=' ' AND @c13informado_alerta=' ' and @c13manejo_cafetales=' ' AND @c13manejo_sombra=' ' 
				AND @c13combinar_lotes=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,63,@identidad);
				END IF;		
		WHEN TRIM(@p13enfermedad_plantas)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,62,@identidad);
		WHEN TRIM(@p13enfermedad_plantas)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,@identidad);
		END CASE;			
	
CASE #@c14m_sistemas_agroforestales,
		WHEN TRIM(@p14diversificacion_cafetal)='-1' THEN
					
	
					
				if @c14m_sistemas_agroforestales='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,64,@identidad);
				end if;
				
				IF @c14m_sistemas_agroforestales=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,66,@identidad);
				END IF;		
		WHEN TRIM(@p14diversificacion_cafetal)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,65,@identidad);
		WHEN TRIM(@p14diversificacion_cafetal)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,@identidad);
		END CASE;	

CASE #@c15condicion_sombra
		WHEN TRIM(@p15cafetale_sol)='-1' THEN
					
	
					
				if @c15condicion_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,67,@identidad);
				end if;
				
				IF @c15condicion_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,69,@identidad);
				END IF;		
		WHEN TRIM(@p15cafetale_sol)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,68,@identidad);
		WHEN TRIM(@p15cafetale_sol)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,@identidad);
		END CASE;			
		
CASE #@c16programa_renovacion,
		WHEN TRIM(@p16cafetales_viejo)='-1' THEN
	
					
				if @c16programa_renovacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,70,@identidad);
				end if;
				
				IF @c16programa_renovacion=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,72,@identidad);
				END IF;		
		WHEN TRIM(@p16cafetales_viejo)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,71,@identidad);
		WHEN TRIM(@p16cafetales_viejo)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,@identidad);
		END CASE;			
		
CASE #@c17identificar_disponibilidad,@c17t_lotes_variedades,
		WHEN TRIM(@p17ausente_variedades)='-1' THEN
					
					
				if @c17identificar_disponibilidad='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,73,@identidad);
				end if;
						
				if @c17t_lotes_variedades='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,74,@identidad);
				end if;
				
				IF @c17identificar_disponibilidad=' '  and @c17t_lotes_variedades=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,76,@identidad);
				END IF;		
				
				
		WHEN TRIM(@p17ausente_variedades)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,75,@identidad);
		WHEN TRIM(@p17ausente_variedades)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,@identidad);
		END CASE;			
		
		
CASE #@c18poscosecha_programa,
		WHEN TRIM(@p18ausente_practica)='-1' THEN
					
	
					
				if @c18poscosecha_programa='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,77,@identidad);
				end if;
				
				IF @c18poscosecha_programa=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,79,@identidad);
				END IF;		
		WHEN TRIM(@p18ausente_practica)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,78,@identidad);
		WHEN TRIM(@p18ausente_practica)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,@identidad);
		END CASE;				
		
CASE #@c19contar_resiembras,
		WHEN TRIM(@p19ausente_x_año)='-1' THEN
				
	
					
				if @c19contar_resiembras='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,80,@identidad);
				end if;
				
				IF @c19contar_resiembras=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,82,@identidad);
				END IF;		
		WHEN TRIM(@p19ausente_x_año)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,81,@identidad);
		WHEN TRIM(@p19ausente_x_año)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,@identidad);
		END CASE;				
		
CASE #@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
		WHEN TRIM(@p20produccion_bajo)='-1' THEN
					
	
					
				if @c20diagnosticos_cafetales='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,83,@identidad);
				end if;
				if @c20analisis_quimico='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,84,@identidad);
				end if;
				if @c20r_programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,85,@identidad);
				end if;
				if @c20necesidad_sustituto='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,86,@identidad);
				end if;
				
				IF @c20diagnosticos_cafetales=' ' and @c20analisis_quimico=' ' and @c20r_programa_fertilizacion=' ' and @c20necesidad_sustituto=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,88,@identidad);
				end if;		
				
		WHEN TRIM(@p20produccion_bajo)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,87,@identidad);
		WHEN TRIM(@p20produccion_bajo)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,@identidad);
		END CASE;		
		
		
CASE #@c21sustituir_o_complementar,@c21buscar_productividad,
		WHEN TRIM(@p21aplico_200kg)='-1' THEN
	
					
				if @c21sustituir_o_complementar='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,89,@identidad);
				end if;
				if @c21buscar_productividad='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,90,@identidad);
				end if;
				
				
				IF @c21sustituir_o_complementar=' ' and @c21buscar_productividad=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,92,@identidad);
				end if;		
				
		WHEN TRIM(@p21aplico_200kg)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,91,@identidad);
		WHEN TRIM(@p21aplico_200kg)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,@identidad);
		END CASE;		


CASE #	@c22incorporar_abono,@c22elaborar_abono,
		WHEN TRIM(@p22ausente_abono)='-1' THEN
						
				if @c22incorporar_abono='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,93,@identidad);
				end if;
				if @c22elaborar_abono='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,94,@identidad);
				end if;			
				IF @c22incorporar_abono=' ' and @c22elaborar_abono=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,96,@identidad);
				end if;		
				

		WHEN TRIM(@p22ausente_abono)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,95,@identidad);
		WHEN TRIM(@p22ausente_abono)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,@identidad);
		END CASE;	
		
		

CASE #		@c23recuperacion_cobertura,
		WHEN TRIM(@p23quebradas_sin_cobertura)='-1' THEN
					
					
				if @c23recuperacion_cobertura='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,97,@identidad);
				end if;
					
				IF @c23recuperacion_cobertura=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,99,@identidad);
				end if;		
				
		WHEN TRIM(@p23quebradas_sin_cobertura)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,98,@identidad);
		WHEN TRIM(@p23quebradas_sin_cobertura)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,@identidad);
		END CASE;		
		
CASE #		@c24arreglos_sistema,,
		WHEN TRIM(@p24sin_socios_arboles)='-1' THEN
					
				if @c24arreglos_sistema='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,100,@identidad);
				end if;
					
				IF @c24arreglos_sistema=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,102,@identidad);
				end if;		
				
		WHEN TRIM(@p24sin_socios_arboles)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,101,@identidad);
		WHEN TRIM(@p24sin_socios_arboles)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,@identidad);
		END CASE;			
		
CASE #		@c25fortalecer_acciones,,,
		WHEN TRIM(@p25ausente_procesos)='-1' THEN
					
				if @c25fortalecer_acciones='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,103,@identidad);
				end if;
					
				IF @c25fortalecer_acciones=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,105,@identidad);
				end if;		
				
		WHEN TRIM(@p25ausente_procesos)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,104,@identidad);
		WHEN TRIM(@p25ausente_procesos)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,@identidad);			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,@identidad);
		END CASE;	

		
				
		
	
ELSEIF   @canfilas>0  and 
 EXISTS (SELECT fff.latitud,fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.latitud=@latitu
	and fff.longitud=@logitud LIMIT 1) then 
#EXISTS (SELECT fff.longitud FROM ihcafemonitoreo.tbl_general_finca fff WHERE fff.longitud=@logitud) then
		set @string_Mensaje=concat('DATOS REPETIDOS ',@f_latitud,'-\t ',
                               @f_longitud);											 
			select 1 as codigo,@string_Mensaje mensaje;
	
															 
	#ELSEIF @canfilas>1 and @contar>1 AND NOT @f_latitud=@latitu THEN
	
else


SELECT COUNT(finca) 
    into @n_finca 
    from ihcafemonitoreo.tbl_general_finca gf
    WHERE gf.latitud<>@latitu OR gf.longitud<>@logitud  and gf.cod_identidad=@identidad
  	 LIMIT 1;
		
		INSERT INTO ihcafemonitoreo.tbl_general_finca(cod_finca,finca,latitud,longitud,cod_identidad) 
	VALUES(concat(@identidad,'-',@n_finca+1),(CONCAT(@nombre_productor,'-',@n_finca+1)),@latitu,@logitud,@identidad);
		
		#insert en vulnerabilidad ficha
		
		INSERT INTO ihcafemonitoreo.tbl_vulnerabilidades_ficha(cod_vulnerabilidad,cod_identidad,cod_municipio,
		pendiente,area_total_finca,area_total_cafe,p_promedio,edad_cafetal,cod_finca,cod_tecnico,num_meses_seco,
		fecha_visita,sitio,observacion,fecha_i,fecha_sistema) 
		VALUES(NULL,@identidad,@codigoMunicipio,@pendienteDecimal,@area_total_fincaDecimal,@area_total_cafeDecimal,
	 @produccion_promedioDecimal,@edad_cafetal,(concat(@identidad,'-',@n_finca+1)),@codigoTecnico,@meses_seca,@fechavisita,
		@aldea,@observacion,@fechavisita,NOW());
		
		
		##insertado en variedades
			
	#if @vueltas=1 then
	
		#SELECT vvv.codigo_variedad into @cod_variedad_f
		#FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		#vvv.posicion=1 LIMIT 1;
		#INSERT INTO 
		#ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		#VALUES(NULL,@cod_variedad_f,@maximo);
	#ELSEIF @vueltas=2 then
	
		#SELECT vvv.codigo_variedad into @cod_variedad_f
		#FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		#vvv.posicion=1 LIMIT 1;
		#SELECT vvv.codigo_variedad into @cod_variedad_f2
		#FROM vista_vulnerabilidad_variedades vvv WHERE vvv.sumision=@indexxx and
		#vvv.posicion=2 LIMIT 1;
		#INSERT INTO 
		#ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		#VALUES(NULL,@cod_variedad_f,@maximo);
		#INSERT INTO 
		#ihcafemonitoreo.tbl_vulnerabilidad_h_variedad(cod_h_variedad,cod_variedad,cod_vulnerabilidad)
		#VALUES(NULL,@cod_variedad_f2,@maximo);
	
	
	
	# end if;
		
		
		
  	select 1 as codigo,'nueva aldea' mensaje;
CASE#insertado en tbl_h_respuesta
		WHEN UPPER(TRIM(@p1cambios_temperatura))=-1 THEN
				#SET @c1variedad_tolerante=(SELECT CONVERT(@c1variedades_tolerante,SIGNED));
			#set @c1SistemaProduccion=(SELECT CONVERT(@c1sistema_produccion,SIGNED));
			#set @c1ImplementarSistema=(SELECT CONVERT(@c1implementar_sistema,SIGNED));
		
			if @c1variedades_tolerante='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,1,(concat(@identidad,'-',@n_finca+1)));
			end if;	
			if @c1sistema_produccion='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,2,(concat(@identidad,'-',@n_finca+1)));
			end if;
			if @c1implementar_sistema='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,3,(concat(@identidad,'-',@n_finca+1)));
			end if;
			IF @c1variedades_tolerante='' AND @c1sistema_produccion='' AND @c1implementar_sistema='' THEN
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,5,(concat(@identidad,'-',@n_finca+1)));
			END IF;
			
			
		WHEN UPPER(TRIM(@p1cambios_temperatura))=1 THEN
			#SELECT vr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vr 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on vr.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p1cambios_temperatura) and  vr.cod_pregunta=1 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,4,concat(@identidad,'-',@n_finca+1));
		WHEN UPPER(TRIM(@p1cambios_temperatura))=0.5 THEN 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,concat(@identidad,'-',@n_finca+1));
		ELSE 
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,5,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
CASE	#@c2cosecha_agua,@c2riesgo_adecuada,#@c2aplicacion_frecuente_foliares
	WHEN TRIM(@p2lluvias_irregulares)='-1' THEN
		
		
			
	
		if @c2cosecha_agua='VE' then
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,6,concat(@identidad,'-',@n_finca+1));
		end if;
		if 	@c2riesgo_adecuada='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,7,concat(@identidad,'-',@n_finca+1));
		end if;
		if @c2aplicacion_frecuente_foliares='VE' then
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,8,concat(@identidad,'-',@n_finca+1));
		end if;
		
		IF @c2cosecha_agua=' ' AND @c2riesgo_adecuada=' ' AND @c2aplicacion_frecuente_foliares=' ' THEN##QUE SEA POR 0 TAMBIEN. 
			##agregar en todas		
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
		END IF;
		
		
	WHEN TRIM(@p2lluvias_irregulares)='1' THEN
		#SELECT vrr.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta vrr 		
		#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion dd on vrr.cod_desicion=dd.cod_desicion
		#WHERE dd.desisicon=UPPER(@p2lluvias_irregulares) and  vrr.cod_pregunta=2 LIMIT 1;
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,9,concat(@identidad,'-',@n_finca+1));
	WHEN TRIM(@p2lluvias_irregulares)='0.5' THEN
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
	ELSE
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,10,concat(@identidad,'-',@n_finca+1));
		
END CASE;		
		
CASE#c3conservacion_suelo,c3diseño_sombre,c3evitar_cultivo_riesgo
		 WHEN TRIM(@p3inuncaciones_derrumbe)='-1' THEN
	
		 
		 
				if @c3conservacion_suelo='VE' then	
						#insertado en tbl_h_respuesta
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,11,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c3diseño_sombre='VE' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,12,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c3evitar_cultivo_riesgo='VE' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,13,concat(@identidad,'-',@n_finca+1));
				end if;		
				IF @c3conservacion_suelo=' ' AND @c3diseño_sombre=' ' AND @c3evitar_cultivo_riesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,15,concat(@identidad,'-',@n_finca+1));
				END IF;		
				
		WHEN TRIM(@p3inuncaciones_derrumbe)='1' THEN
			#SELECT r.cod_respuesta into @codigoRespuesta FROM ihcafemonitoreo.tbl_vulnerabilidad_respuesta r 
			#INNER JOIN ihcafemonitoreo.tbl_vulnerabilidad_desicion d on r.cod_desicion=d.cod_desicion
			#WHERE d.desisicon=UPPER(@p3inuncaciones_derrumbe) and  cod_pregunta=3 LIMIT 1;
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,14,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p3inuncaciones_derrumbe)='0.5' THEN
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,15,concat(@identidad,'-',@n_finca+1));
	  ELSE ##agregar en todas
				INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
				VALUE(NULL,15,concat(@identidad,'-',@n_finca+1))	;
		END CASE;		
		

case#@c4mantenerse_infomado,@c4evitar_cultivo_riesgo		
		WHEN TRIM(@p4riesgo_huracanes_tt)='-1' THEN
			
		
				if @c4mantenerse_infomado='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,16,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c4evitar_cultivo_riesgo='VE' then
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,17,concat(@identidad,'-',@n_finca+1));
				end if;
				IF @c4mantenerse_infomado=' ' AND @c4evitar_cultivo_riesgo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,18,concat(@identidad,'-',@n_finca+1));
				END IF;		
						
		WHEN TRIM(@p4riesgo_huracanes_tt)='1' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,18,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p4riesgo_huracanes_tt)='0.5' THEN				
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,concat(@identidad,'-',@n_finca+1));
		ELSE
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,19,concat(@identidad,'-',@n_finca+1));
		END CASE;			
		
case#@c5cosecha_agua,@c5manejo_sombra,@c5cobertura_suelo,
	WHEN TRIM(@p5disminucion_agua)='-1' THEN
		
		
		if @c5cosecha_agua='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,20,concat(@identidad,'-',@n_finca+1));
				end if;
		if @c5manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,21,concat(@identidad,'-',@n_finca+1));
				end if;
		if @c5cobertura_suelo='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,22,concat(@identidad,'-',@n_finca+1));
				end if;		
			IF @c5cosecha_agua=' ' AND @c5manejo_sombra=' '  AND @c5cobertura_suelo=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN 	TRIM(@p5disminucion_agua)='1' THEN
						
			#insertado en tbl_h_respuesta
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,23,concat(@identidad,'-',@n_finca+1));
		WHEN 	TRIM(@p5disminucion_agua)='0.5' THEN	
			INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
			VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
		ELSE
		
		INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
		VALUE(NULL,24,concat(@identidad,'-',@n_finca+1));
		END case;
		
case#@c6barreras_rompe_viento,@c6manejo_sombra,
		WHEN TRIM(@p6vientos_fuerte)='-1' THEN
				
				if @c6barreras_rompe_viento='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,25,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c6manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,26,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c6barreras_rompe_viento=' ' AND @c6manejo_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p6vientos_fuerte)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,27,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p6vientos_fuerte)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,28,concat(@identidad,'-',@n_finca+1));
		END CASE;
		

	CASE #@c7conservacion_suelos,@c7menejo_selectivo,@c7manejo_sombra,
		WHEN TRIM(@p7señales_erosion)='-1' THEN
			
				if @c7conservacion_suelos='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,29,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c7menejo_selectivo='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,30,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c7manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,31,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c7conservacion_suelos=' ' AND @c7menejo_selectivo=' '  AND @c7manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p7señales_erosion)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,32,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p7señales_erosion)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,33,concat(@identidad,'-',@n_finca+1));
		END CASE;		
						
						
						

		
		CASE #@c8programa_fertilizacion,@c8aporte_organica,@c8manejo_sombra,
		WHEN TRIM(@p8practica_suelo)='-1' THEN
	
				if @c8programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,34,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c8aporte_organica='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,35,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c8manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,36,concat(@identidad,'-',@n_finca+1));
				end if;	
				IF @c8programa_fertilizacion=' ' AND @c8aporte_organica=' '  AND @c8manejo_sombra=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p8practica_suelo)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,37,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p8practica_suelo)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,38,concat(@identidad,'-',@n_finca+1));
		END CASE;	
		
		
		#- - - - - - - - -  - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - 
			
	CASE #@c9practica_conservacion,
		WHEN TRIM(@p9f_practica_conservacion)='-1' THEN
					
				
				if @c9practica_conservacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,39,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c9practica_conservacion=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p9f_practica_conservacion)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,40,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p9f_practica_conservacion)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,41,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
		CASE #@c10m_seleccion_hierva,@c10manejo_sombra,
		WHEN TRIM(@p10ausente_hierva)='-1' THEN
				
					
				if @c10m_seleccion_hierva='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,42,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c10manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,43,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c10m_seleccion_hierva=' ' AND @c10manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p10ausente_hierva)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,44,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p10ausente_hierva)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,45,concat(@identidad,'-',@n_finca+1));
		END CASE;
	
	
	CASE #	@c11programa_fertilizacion,@c11riesgo_adecuao,@c11manejo_sombra,
		WHEN TRIM(@p11floracion_irregular)='-1' THEN
			
				if @c11programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,46,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c11riesgo_adecuao='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,47,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c11manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,48,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c11programa_fertilizacion=' ' AND @c11riesgo_adecuao=' ' AND @c11manejo_sombra=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p11floracion_irregular)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,49,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p11floracion_irregular)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,50,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
		
			CASE #	@c12programa_fertilizacion,@c12riesgo_adecuado,@c12fuente_laguinosas,
		WHEN TRIM(@p12aumento_defoliacion)='-1' THEN
				
					
				if @c12programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,51,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c12riesgo_adecuado='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,52,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c12fuente_laguinosas='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,53,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
				IF @c12programa_fertilizacion=' ' AND @c12riesgo_adecuado=' ' AND @c12fuente_laguinosas=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p12aumento_defoliacion)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,54,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p12aumento_defoliacion)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,55,concat(@identidad,'-',@n_finca+1));
		END CASE;
		
CASE #	@c13diagnostico_incidencia,@c13medidas_climas,@c13informado_alerta,@c13manejo_cafetales,@c13manejo_sombra,@c13combinar_lotes,
		WHEN TRIM(@p13enfermedad_plantas)='-1' THEN
					
					
				if @c13diagnostico_incidencia='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,56,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c13medidas_climas='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,57,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c13informado_alerta='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,58,concat(@identidad,'-',@n_finca+1));
				end if;	
					
				if @c13manejo_cafetales='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,59,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c13manejo_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,60,concat(@identidad,'-',@n_finca+1));
				end if;	
				if @c13combinar_lotes='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,61,concat(@identidad,'-',@n_finca+1));
				end if;	
	
	
	
				IF @c13diagnostico_incidencia=' ' AND @c13medidas_climas=' ' AND @c13informado_alerta=' ' and @c13manejo_cafetales=' ' AND @c13manejo_sombra=' ' 
				AND @c13combinar_lotes=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p13enfermedad_plantas)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,62,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p13enfermedad_plantas)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,63,concat(@identidad,'-',@n_finca+1));
		END CASE;		
		
CASE #@c14m_sistemas_agroforestales,
		WHEN TRIM(@p14diversificacion_cafetal)='-1' THEN
				
	
					
				if @c14m_sistemas_agroforestales='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,64,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c14m_sistemas_agroforestales=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p14diversificacion_cafetal)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,65,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p14diversificacion_cafetal)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,66,concat(@identidad,'-',@n_finca+1));
		END CASE;	
				
CASE #@c15condicion_sombra
		WHEN TRIM(@p15cafetale_sol)='-1' THEN
					
				if @c15condicion_sombra='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,67,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c15condicion_sombra=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p15cafetale_sol)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,68,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p15cafetale_sol)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,69,concat(@identidad,'-',@n_finca+1));
		END CASE;			

CASE #@c16programa_renovacion,
		WHEN TRIM(@p16cafetales_viejo)='-1' THEN
				
	
					
				if @c16programa_renovacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,70,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c16programa_renovacion=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p16cafetales_viejo)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,71,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p16cafetales_viejo)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,72,concat(@identidad,'-',@n_finca+1));
		END CASE;	
		
		
CASE #@c17identificar_disponibilidad,@c17t_lotes_variedades,
		WHEN TRIM(@p17ausente_variedades)='-1' THEN
					
	
					
				if @c17identificar_disponibilidad='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,73,concat(@identidad,'-',@n_finca+1));
				end if;
						
				if @c17t_lotes_variedades='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,74,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c17identificar_disponibilidad=' '  and @c17t_lotes_variedades=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));
				END IF;		
				
				
		WHEN TRIM(@p17ausente_variedades)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,75,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p17ausente_variedades)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,76,concat(@identidad,'-',@n_finca+1));
		END CASE;		
		
CASE #@c18poscosecha_programa,
		WHEN TRIM(@p18ausente_practica)='-1' THEN					
					
				if @c18poscosecha_programa='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,77,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c18poscosecha_programa=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p18ausente_practica)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,78,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p18ausente_practica)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,79,concat(@identidad,'-',@n_finca+1));
		END CASE;				
			
CASE #@c19contar_resiembras,
		WHEN TRIM(@p19ausente_x_año)='-1' THEN					
					
				if @c19contar_resiembras='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,80,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c19contar_resiembras=' '   THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));
				END IF;		
		WHEN TRIM(@p19ausente_x_año)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,81,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p19ausente_x_año)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,82,concat(@identidad,'-',@n_finca+1));
		END CASE;			
				
CASE #@c20diagnosticos_cafetales,@c20analisis_quimico,@c20r_programa_fertilizacion,@c20necesidad_sustituto,
		WHEN TRIM(@p20produccion_bajo)='-1' THEN
				
					
				if @c20diagnosticos_cafetales='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,83,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20analisis_quimico='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,84,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20r_programa_fertilizacion='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,85,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c20necesidad_sustituto='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,86,concat(@identidad,'-',@n_finca+1));
				end if;
				
				IF @c20diagnosticos_cafetales=' ' and @c20analisis_quimico=' ' and @c20r_programa_fertilizacion=' ' and @c20necesidad_sustituto=' '  THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p20produccion_bajo)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,87,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p20produccion_bajo)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,88,concat(@identidad,'-',@n_finca+1));
		END CASE;						
						
						
CASE #@c21sustituir_o_complementar,@c21buscar_productividad,
		WHEN TRIM(@p21aplico_200kg)='-1' THEN

				if @c21sustituir_o_complementar='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,89,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c21buscar_productividad='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,90,concat(@identidad,'-',@n_finca+1));
				end if;
				
				
				IF @c21sustituir_o_complementar=' ' and @c21buscar_productividad=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p21aplico_200kg)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,91,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p21aplico_200kg)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,92,concat(@identidad,'-',@n_finca+1));
		END CASE;			
						
CASE #	@c22incorporar_abono,@c22elaborar_abono,
		WHEN TRIM(@p22ausente_abono)='-1' THEN
						
				if @c22incorporar_abono='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,93,concat(@identidad,'-',@n_finca+1));
				end if;
				if @c22elaborar_abono='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,94,concat(@identidad,'-',@n_finca+1));
				end if;			
				IF @c22incorporar_abono=' ' and @c22elaborar_abono=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p22ausente_abono)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,95,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p22ausente_abono)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,96,concat(@identidad,'-',@n_finca+1));
		END CASE;	
		
		
CASE #		@c23recuperacion_cobertura,
		WHEN TRIM(@p23quebradas_sin_cobertura)='-1' THEN
					
					
				if @c23recuperacion_cobertura='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,97,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c23recuperacion_cobertura=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p23quebradas_sin_cobertura)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,98,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p23quebradas_sin_cobertura)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,99,concat(@identidad,'-',@n_finca+1));
		END CASE;		
						
CASE #		@c24arreglos_sistema,,
		WHEN TRIM(@p24sin_socios_arboles)='-1' THEN
					
					
				if @c24arreglos_sistema='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,100,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c24arreglos_sistema=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p24sin_socios_arboles)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,101,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p24sin_socios_arboles)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,102,concat(@identidad,'-',@n_finca+1));
		END CASE;							
						
	
CASE #		@c25fortalecer_acciones,,,
		WHEN TRIM(@p25ausente_procesos)='-1' THEN
				
					
				if @c25fortalecer_acciones='VE' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,103,concat(@identidad,'-',@n_finca+1));
				end if;
					
				IF @c25fortalecer_acciones=' ' THEN
						INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
						VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));
				end if;		
				
		WHEN TRIM(@p25ausente_procesos)='1' THEN
		
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,104,concat(@identidad,'-',@n_finca+1));
		WHEN TRIM(@p25ausente_procesos)='0.5' THEN
					#insertado en tbl_h_respuesta
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));			
		ELSE
		
					INSERT INTO ihcafemonitoreo.tbl_h_respuestas(cod_h_respuesta,cod_respuesta,cod_finca) 
					VALUE(NULL,105,concat(@identidad,'-',@n_finca+1));
		END CASE;					
		
	end if;
SET @contar=@contar+1;
END WHILE;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vulnerabilidad_todos` ()  BEGIN
	#Routine body goes here...
    #borrar null
    DELETE from `tbl_estructura_vulnerabilidad` WHERE numero_identidad="";
    #asignar numeracion
call vulnerabilidad_asignar_numeracion;
call vulnerabilidad_cursor_posicion;
call vulnerabilidad_asignar_codigo_variedad;
call vulnerabilidad_normalizar;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bene_actividad_productiva`
--

CREATE TABLE `tbl_bene_actividad_productiva` (
  `index1` bigint(20) NOT NULL,
  `Actividad_Productiva` varchar(30) NOT NULL,
  `sumision` varchar(15) NOT NULL,
  `parent_index` varchar(20) NOT NULL,
  `submission__id` varchar(20) NOT NULL,
  `codigo_actividad` varchar(15) NOT NULL,
  `posicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bene_diversificacion_rubro`
--

CREATE TABLE `tbl_bene_diversificacion_rubro` (
  `index1` bigint(20) NOT NULL,
  `rubros_que_posee` varchar(35) NOT NULL,
  `sumision` varchar(50) NOT NULL,
  `parent_index` varchar(20) NOT NULL,
  `submission__id` varchar(20) NOT NULL,
  `codigo_rubro` varchar(20) NOT NULL,
  `posicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bene_ficha_productores`
--

CREATE TABLE `tbl_bene_ficha_productores` (
  `n` bigint(20) NOT NULL,
  `start` varchar(30) NOT NULL,
  `end` varchar(30) NOT NULL,
  `today` varchar(3) NOT NULL,
  `sim_serial` varchar(20) NOT NULL,
  `device_id` varchar(40) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `Fecha_Entrevista` varchar(20) NOT NULL,
  `Fecha_envío` varchar(20) NOT NULL,
  `Departamento` varchar(35) NOT NULL,
  `Municipio` varchar(20) NOT NULL,
  `Aldea_Comunidad` varchar(35) NOT NULL,
  `Ubi_eve` varchar(35) NOT NULL,
  `Ubi_eve_lat` varchar(10) NOT NULL,
  `Ubi_eve_long` varchar(10) NOT NULL,
  `Ubi_eve_alti` varchar(10) NOT NULL,
  `Ubi_eve_pre` varchar(10) NOT NULL,
  `Regional` varchar(50) NOT NULL,
  `Agencia` varchar(50) NOT NULL,
  `Name_productor` varchar(50) NOT NULL,
  `Celular` varchar(10) NOT NULL,
  `Num_Identidad` varchar(15) NOT NULL,
  `Clave_productor` varchar(20) NOT NULL,
  `Genero` varchar(1) NOT NULL,
  `Edad_productor` varchar(2) NOT NULL,
  `Est_civil` varchar(10) NOT NULL,
  `Escolaridad` varchar(5) NOT NULL,
  `Num_miembros_familia` varchar(11) NOT NULL,
  `Num_RTN` varchar(20) NOT NULL,
  `Id_etnica` varchar(15) NOT NULL,
  `Grupo_comunitario` varchar(50) NOT NULL,
  `caja_rural` varchar(20) NOT NULL,
  `coop_cafetalera` varchar(20) NOT NULL,
  `Asoc_productores` varchar(25) NOT NULL,
  `empresaServicio` varchar(40) NOT NULL,
  `junta_agua` varchar(25) NOT NULL,
  `Org_cafetalera` varchar(25) NOT NULL,
  `act_productivas` varchar(50) NOT NULL,
  `Tipo_vivienda` varchar(20) NOT NULL,
  `tipo_doc` varchar(20) NOT NULL,
  `tipo_pared` varchar(25) NOT NULL,
  `tipo_techo` varchar(20) NOT NULL,
  `tipo_piso` varchar(20) NOT NULL,
  `tipo_estufa` varchar(3) NOT NULL,
  `servicios_publicos` varchar(3) NOT NULL,
  `Ubi_finca` varchar(50) NOT NULL,
  `Fuente_agua` varchar(2) NOT NULL,
  `Nombre_Fuente_agua` varchar(40) NOT NULL,
  `Porc_sombra_finca` varchar(3) NOT NULL,
  `Area_total` varchar(5) NOT NULL,
  `area_cafe` varchar(5) NOT NULL,
  `num_plantas_cafe` varchar(5) NOT NULL,
  `prod_uva` varchar(5) NOT NULL,
  `prod_oro` varchar(5) NOT NULL,
  `Edad_finca` varchar(3) NOT NULL,
  `Tenencia_tierra` varchar(40) NOT NULL,
  `variedades_finca` varchar(50) NOT NULL,
  `diversificacion_finca` varchar(50) NOT NULL,
  `Foto_productor` varchar(25) NOT NULL,
  `Foto_vivienda` varchar(25) NOT NULL,
  `Foto_finca` varchar(25) NOT NULL,
  `Scanner_Id` varchar(25) NOT NULL,
  `Proyecto_beneficia` varchar(40) NOT NULL,
  `Tec_responsable` varchar(50) NOT NULL,
  `Version` varchar(30) NOT NULL,
  `id` varchar(15) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `submission_time` varchar(30) NOT NULL,
  `validation_status` varchar(30) NOT NULL,
  `notes` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `submitted_by` varchar(15) NOT NULL,
  `tags` varchar(15) NOT NULL,
  `_index` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bene_servicios_publicos`
--

CREATE TABLE `tbl_bene_servicios_publicos` (
  `index1` bigint(20) NOT NULL,
  `Servicios_publicos` varchar(30) NOT NULL,
  `sumision` varchar(15) NOT NULL,
  `parent_index` varchar(20) NOT NULL,
  `submission__id` varchar(20) NOT NULL,
  `codigo_servicio` varchar(20) NOT NULL,
  `posicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bene_tipos_de_estufa`
--

CREATE TABLE `tbl_bene_tipos_de_estufa` (
  `index1` bigint(20) NOT NULL,
  `Tipo_estufa` varchar(30) NOT NULL,
  `sumision` varchar(15) NOT NULL,
  `parent_index` varchar(20) NOT NULL,
  `submission__id` varchar(20) NOT NULL,
  `codigo_estufa` varchar(20) NOT NULL,
  `posicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bene_tipo_apoyo`
--

CREATE TABLE `tbl_bene_tipo_apoyo` (
  `index1` bigint(20) NOT NULL,
  `Tipo_de_apoyo_que_requiere` varchar(35) NOT NULL,
  `sumision` varchar(15) NOT NULL,
  `Especifique_otros` varchar(20) NOT NULL,
  `parent_index` varchar(20) NOT NULL,
  `codigo_apoyo` varchar(15) NOT NULL,
  `posicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bene_variedades`
--

CREATE TABLE `tbl_bene_variedades` (
  `index1` bigint(20) NOT NULL,
  `Variedades_Presentes` varchar(40) NOT NULL,
  `sumision` varchar(50) NOT NULL,
  `parent_index` varchar(20) NOT NULL,
  `submission__id` varchar(20) NOT NULL,
  `codigo_variedad` varchar(15) NOT NULL,
  `posicion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_div_ficha_productor`
--

CREATE TABLE `tbl_div_ficha_productor` (
  `n` bigint(20) NOT NULL,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `simserial` varchar(30) NOT NULL,
  `subscriberid` varchar(30) NOT NULL,
  `deviceid` varchar(30) NOT NULL,
  `Fecha_visita` varchar(20) NOT NULL,
  `Depto` varchar(30) NOT NULL,
  `Municipio` varchar(50) NOT NULL,
  `Aldea` varchar(50) NOT NULL,
  `UbicacionGPS` varchar(40) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `altitude` varchar(20) NOT NULL,
  `precision1` varchar(20) NOT NULL,
  `Regional` varchar(30) NOT NULL,
  `Agencia` varchar(30) NOT NULL,
  `Nombre_productor` varchar(40) NOT NULL,
  `id_productor` varchar(20) NOT NULL,
  `Sexo` varchar(7) NOT NULL,
  `reg_incafe` varchar(2) NOT NULL,
  `parentesco_per_reg` varchar(15) NOT NULL,
  `id_parentesco_per_reg` varchar(16) NOT NULL,
  `Clave_productor` varchar(20) NOT NULL,
  `area_finca` varchar(20) NOT NULL,
  `Disp_tiempo_Cap` varchar(10) NOT NULL,
  `impleentar_proyecto` varchar(30) NOT NULL,
  `miembros_grupo` varchar(5) NOT NULL,
  `meses_lluviosos` varchar(30) NOT NULL,
  `Profundidad_suelo` varchar(5) NOT NULL,
  `porc_mat_org_suelo` varchar(15) NOT NULL,
  `tipo_suelo` varchar(50) NOT NULL,
  `rubro_implementar` varchar(15) NOT NULL,
  `linea_cafe` varchar(2) NOT NULL,
  `linea_cafe2` varchar(2) NOT NULL,
  `Tipo_frutales` varchar(20) NOT NULL,
  `tipo_frutales_mel` varchar(5) NOT NULL,
  `tipo_frutales_gua` varchar(5) NOT NULL,
  `tipo_frutales_ram` varchar(5) NOT NULL,
  `tipo_frutales_citri` varchar(5) NOT NULL,
  `tipo_frutales_lic` varchar(5) NOT NULL,
  `proyecto_beneficia` varchar(20) NOT NULL,
  `tecnico_responsable` varchar(50) NOT NULL,
  `indexxx` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_div_fuentes_ingreso`
--

CREATE TABLE `tbl_div_fuentes_ingreso` (
  `index1` bigint(20) NOT NULL,
  `fuentes_ingresos` varchar(70) NOT NULL,
  `sumision` varchar(50) NOT NULL,
  `parent_index` varchar(3) NOT NULL,
  `submission_id` varchar(20) NOT NULL,
  `codigo_ingreso` varchar(25) NOT NULL,
  `posicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_div_meses_flacos`
--

CREATE TABLE `tbl_div_meses_flacos` (
  `meses_flacos` varchar(50) NOT NULL,
  `index1` bigint(20) NOT NULL,
  `sumision` varchar(50) NOT NULL,
  `parent_index` varchar(3) NOT NULL,
  `submission_id` varchar(20) NOT NULL,
  `codigo_mes` varchar(25) NOT NULL,
  `posicion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_div_meses_lluviosos`
--

CREATE TABLE `tbl_div_meses_lluviosos` (
  `meses_mas_lluviosos` varchar(50) NOT NULL,
  `index1` bigint(20) NOT NULL,
  `sumision` varchar(50) NOT NULL,
  `parent_index` varchar(3) NOT NULL,
  `submission_id` varchar(20) NOT NULL,
  `codigo_mes` varchar(25) NOT NULL,
  `posicion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estructura_variedades_vulnerabilidades`
--

CREATE TABLE `tbl_estructura_variedades_vulnerabilidades` (
  `index1` bigint(20) NOT NULL,
  `variedades` varchar(60) DEFAULT NULL,
  `tabla` varchar(60) DEFAULT NULL,
  `sumision` varchar(100) DEFAULT NULL,
  `sumision2` varchar(100) DEFAULT NULL,
  `sumision3` varchar(100) DEFAULT NULL,
  `fecha` varchar(20) NOT NULL,
  `status_1` varchar(20) NOT NULL,
  `codigo_variedad` varchar(45) DEFAULT NULL,
  `posicion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estructura_vulnerabilidad`
--

CREATE TABLE `tbl_estructura_vulnerabilidad` (
  `n` bigint(20) UNSIGNED NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL,
  `today` varchar(50) NOT NULL,
  `usernam` varchar(50) NOT NULL,
  `simserial` varchar(50) NOT NULL,
  `subscriberid` varchar(50) NOT NULL,
  `deviceid` varchar(50) NOT NULL,
  `fechavisita` varchar(45) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `aldea` varchar(50) NOT NULL,
  `ubicacionevento` varchar(50) NOT NULL,
  `latitu` varchar(55) NOT NULL,
  `logitud` varchar(50) NOT NULL,
  `altitud` varchar(50) NOT NULL,
  `precisionn` varchar(50) NOT NULL,
  `regional` varchar(50) NOT NULL,
  `agencia` varchar(50) NOT NULL,
  `descripcionseccion` varchar(50) NOT NULL,
  `nombre_productor` varchar(50) NOT NULL,
  `numero_identidad` varchar(20) NOT NULL,
  `clave` varchar(15) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `edad` int(3) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `instrucciones` varchar(255) NOT NULL,
  `pendiente` varchar(8) NOT NULL,
  `area_total_finca` varchar(10) NOT NULL,
  `area_total_cafe` varchar(20) NOT NULL,
  `produccion_promedio` varchar(20) NOT NULL,
  `edad_cafetal` int(11) NOT NULL,
  `meses_seco` int(11) NOT NULL,
  `instrucciones1_variedades` varchar(255) NOT NULL,
  `instrucciones_consejo` varchar(255) NOT NULL,
  `p1cambios_temperatura` varchar(6) NOT NULL,
  `c1practica_instruccion` varchar(255) NOT NULL,
  `c1variedades_tolerante` varchar(255) NOT NULL,
  `c1sistema_produccion` varchar(255) NOT NULL,
  `c1implementar_sistema` varchar(255) NOT NULL,
  `p2lluvias_irregulares` varchar(6) NOT NULL,
  `c2practica_instruccion` varchar(255) NOT NULL,
  `c2cosecha_agua` varchar(2) NOT NULL,
  `c2riesgo_adecuada` varchar(2) NOT NULL,
  `c2aplicacion_frecuente_foliares` varchar(2) NOT NULL,
  `p3inuncaciones_derrumbe` varchar(6) NOT NULL,
  `c3practica_instruccion` varchar(255) NOT NULL,
  `c3conservacion_suelo` varchar(2) NOT NULL,
  `c3diseño_sombre` varchar(2) NOT NULL,
  `c3evitar_cultivo_riesgo` varchar(2) NOT NULL,
  `p4riesgo_huracanes_tt` varchar(6) NOT NULL,
  `c4practica_instruccion` varchar(255) NOT NULL,
  `c4mantenerse_infomado` varchar(2) NOT NULL,
  `c4evitar_cultivo_riesgo` varchar(2) NOT NULL,
  `p5disminucion_agua` varchar(6) NOT NULL,
  `c5practica_instruccion` varchar(255) NOT NULL,
  `c5cosecha_agua` varchar(2) NOT NULL,
  `c5manejo_sombra` varchar(2) NOT NULL,
  `c5cobertura_suelo` varchar(2) NOT NULL,
  `p6vientos_fuerte` varchar(6) NOT NULL,
  `c6practica_instruccion` varchar(255) NOT NULL,
  `c6barreras_rompe_viento` varchar(2) NOT NULL,
  `c6manejo_sombra` varchar(2) NOT NULL,
  `p7señales_erosion` varchar(6) NOT NULL,
  `c7practica_instruccion` varchar(255) NOT NULL,
  `c7conservacion_suelos` varchar(2) NOT NULL,
  `c7menejo_selectivo` varchar(2) NOT NULL,
  `c7manejo_sombra` varchar(2) NOT NULL,
  `p8practica_suelo` varchar(6) NOT NULL,
  `c8practica_instruccion` varchar(255) NOT NULL,
  `c8programa_fertilizacion` varchar(2) NOT NULL,
  `c8aporte_organica` varchar(2) NOT NULL,
  `c8manejo_sombra` varchar(2) NOT NULL,
  `p9f_practica_conservacion` varchar(6) NOT NULL,
  `c9practica_instruccion` varchar(255) NOT NULL,
  `c9practica_conservacion` varchar(2) NOT NULL,
  `p10ausente_hierva` varchar(6) NOT NULL,
  `c10practica_instruccion` varchar(255) NOT NULL,
  `c10m_seleccion_hierva` varchar(2) NOT NULL,
  `c10manejo_sombra` varchar(2) NOT NULL,
  `p11floracion_irregular` varchar(6) NOT NULL,
  `c11practica_instruccion` varchar(255) NOT NULL,
  `c11programa_fertilizacion` varchar(2) NOT NULL,
  `c11riesgo_adecuao` varchar(2) NOT NULL,
  `c11manejo_sombra` varchar(2) NOT NULL,
  `p12aumento_defoliacion` varchar(6) NOT NULL,
  `c12practica_instruccion` varchar(255) NOT NULL,
  `c12programa_fertilizacion` varchar(2) NOT NULL,
  `c12riesgo_adecuado` varchar(2) NOT NULL,
  `c12fuente_laguinosas` varchar(2) NOT NULL,
  `p13enfermedad_plantas` varchar(6) NOT NULL,
  `c13practica_instrucciones` varchar(255) NOT NULL,
  `c13diagnostico_incidencia` varchar(2) NOT NULL,
  `c13medidas_climas` varchar(2) NOT NULL,
  `c13informado_alerta` varchar(2) NOT NULL,
  `c13manejo_cafetales` varchar(2) NOT NULL,
  `c13manejo_sombra` varchar(2) NOT NULL,
  `c13combinar_lotes` varchar(2) NOT NULL,
  `p14diversificacion_cafetal` varchar(6) NOT NULL,
  `c14practica_instruccion` varchar(255) NOT NULL,
  `c14m_sistemas_agroforestales` varchar(2) NOT NULL,
  `p15cafetale_sol` varchar(6) NOT NULL,
  `c15practica_instruccion` varchar(255) NOT NULL,
  `c15condicion_sombra` varchar(2) NOT NULL,
  `p16cafetales_viejo` varchar(6) NOT NULL,
  `c16practica_instruccion` varchar(255) NOT NULL,
  `c16programa_renovacion` varchar(2) NOT NULL,
  `p17ausente_variedades` varchar(6) NOT NULL,
  `c17practica_instruccion` varchar(255) NOT NULL,
  `c17identificar_disponibilidad` varchar(2) NOT NULL,
  `c17t_lotes_variedades` varchar(2) NOT NULL,
  `p18ausente_practica` varchar(6) NOT NULL,
  `c18practica_instruccion` varchar(255) NOT NULL,
  `c18poscosecha_programa` varchar(2) NOT NULL,
  `p19ausente_x_año` varchar(6) NOT NULL,
  `c19practica_instruccion` varchar(255) NOT NULL,
  `c19contar_resiembras` varchar(2) NOT NULL,
  `p20produccion_bajo` varchar(6) NOT NULL,
  `c20practica_instruccion` varchar(255) NOT NULL,
  `c20diagnosticos_cafetales` varchar(2) NOT NULL,
  `c20analisis_quimico` varchar(2) NOT NULL,
  `c20r_programa_fertilizacion` varchar(2) NOT NULL,
  `c20necesidad_sustituto` varchar(2) NOT NULL,
  `p21aplico_200kg` varchar(6) NOT NULL,
  `c21practica_instruccion` varchar(255) NOT NULL,
  `c21sustituir_o_complementar` varchar(2) NOT NULL,
  `c21buscar_productividad` varchar(2) NOT NULL,
  `p22ausente_abono` varchar(6) NOT NULL,
  `c22practica_instruccion` varchar(255) NOT NULL,
  `c22incorporar_abono` varchar(2) NOT NULL,
  `c22elaborar_abono` varchar(2) NOT NULL,
  `p23quebradas_sin_cobertura` varchar(6) NOT NULL,
  `c23practica_instruccion` varchar(255) NOT NULL,
  `c23recuperacion_cobertura` varchar(2) NOT NULL,
  `p24sin_socios_arboles` varchar(6) NOT NULL,
  `c24practica_instruccion` varchar(255) NOT NULL,
  `c24arreglos_sistema` varchar(2) NOT NULL,
  `p25ausente_procesos` varchar(6) NOT NULL,
  `c25practica_instrucciones` varchar(255) NOT NULL,
  `c25fortalecer_acciones` varchar(2) NOT NULL,
  `total` varchar(20) NOT NULL,
  `total_vulnerabilidad` varchar(20) NOT NULL,
  `instruccion_tecnico` varchar(255) NOT NULL,
  `tecnico_responsable` varchar(50) NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `nombre_tecnico` varchar(50) NOT NULL,
  `id` bigint(15) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `submisiontime` varchar(30) NOT NULL,
  `validation` varchar(15) NOT NULL,
  `indexxx` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estructura_vulnerabilidad_2018`
--

CREATE TABLE `tbl_estructura_vulnerabilidad_2018` (
  `n` bigint(20) UNSIGNED NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL,
  `today` varchar(50) NOT NULL,
  `deviceid` varchar(50) NOT NULL,
  `usernam` varchar(50) NOT NULL,
  `simserial` varchar(50) NOT NULL,
  `subscriberid` varchar(50) NOT NULL,
  `fechavisita` varchar(45) NOT NULL,
  `regional` varchar(50) NOT NULL,
  `agencia` varchar(50) NOT NULL,
  `nombre_tecnico` varchar(50) NOT NULL,
  `nombre_productor` varchar(50) NOT NULL,
  `numero_identidad` varchar(20) NOT NULL,
  `clave` varchar(15) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `aldea` varchar(50) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `edad` int(3) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `altura` varchar(50) NOT NULL,
  `pendiente` varchar(8) NOT NULL,
  `area_total_finca` varchar(10) NOT NULL,
  `area_total_cafe` varchar(20) NOT NULL,
  `produccion_promedio` varchar(20) NOT NULL,
  `edad_cafetal` int(11) NOT NULL,
  `instrucciones_consejo` varchar(255) NOT NULL,
  `v_tipica` varchar(2) NOT NULL,
  `v_pacas` varchar(2) NOT NULL,
  `v_caturra` varchar(2) NOT NULL,
  `v_ihcafe90` varchar(2) NOT NULL,
  `v_parainema` varchar(2) NOT NULL,
  `v_lempira` varchar(2) NOT NULL,
  `v_catuai` varchar(2) NOT NULL,
  `v_catimor` varchar(2) NOT NULL,
  `other` varchar(2) NOT NULL,
  `variedad_other` varchar(255) NOT NULL,
  `meses_seco` int(11) NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `p1cambios_temperatura` varchar(6) NOT NULL,
  `c1practica_instruccion` varchar(255) NOT NULL,
  `c1variedades_tolerante` varchar(2) NOT NULL,
  `c1sistema_produccion` varchar(2) NOT NULL,
  `c1implementar_sistema` varchar(2) NOT NULL,
  `p2lluvias_irregulares` varchar(6) NOT NULL,
  `c2practica_instruccion` varchar(255) NOT NULL,
  `c2cosecha_agua` varchar(2) NOT NULL,
  `c2riesgo_adecuada` varchar(2) NOT NULL,
  `c2aplicacion_frecuente_foliares` varchar(2) NOT NULL,
  `p3inuncaciones_derrumbe` varchar(6) NOT NULL,
  `c3practica_instruccion` varchar(255) NOT NULL,
  `c3conservacion_suelo` varchar(2) NOT NULL,
  `c3diseño_sombre` varchar(2) NOT NULL,
  `c3evitar_cultivo_riesgo` varchar(2) NOT NULL,
  `p4riesgo_huracanes_tt` varchar(6) NOT NULL,
  `c4practica_instruccion` varchar(255) NOT NULL,
  `c4mantenerse_infomado` varchar(2) NOT NULL,
  `c4evitar_cultivo_riesgo` varchar(2) NOT NULL,
  `p5disminucion_agua` varchar(6) NOT NULL,
  `c5practica_instruccion` varchar(255) NOT NULL,
  `c5cosecha_agua` varchar(2) NOT NULL,
  `c5manejo_sombra` varchar(2) NOT NULL,
  `c5cobertura_suelo` varchar(2) NOT NULL,
  `p6vientos_fuerte` varchar(6) NOT NULL,
  `c6practica_instruccion` varchar(255) NOT NULL,
  `c6barreras_rompe_viento` varchar(2) NOT NULL,
  `c6manejo_sombra` varchar(2) NOT NULL,
  `p7señales_erosion` varchar(6) NOT NULL,
  `c7practica_instruccion` varchar(255) NOT NULL,
  `c7conservacion_suelos` varchar(2) NOT NULL,
  `c7menejo_selectivo` varchar(2) NOT NULL,
  `c7manejo_sombra` varchar(2) NOT NULL,
  `p8practica_suelo` varchar(6) NOT NULL,
  `c8practica_instruccion` varchar(255) NOT NULL,
  `c8programa_fertilizacion` varchar(2) NOT NULL,
  `c8aporte_organica` varchar(2) NOT NULL,
  `c8manejo_sombra` varchar(2) NOT NULL,
  `p9f_practica_conservacion` varchar(6) NOT NULL,
  `c9practica_instruccion` varchar(255) NOT NULL,
  `c9practica_conservacion` varchar(2) NOT NULL,
  `p10ausente_hierva` varchar(6) NOT NULL,
  `c10practica_instruccion` varchar(2) NOT NULL,
  `c10m_seleccion_hierva` varchar(2) NOT NULL,
  `c10manejo_sombra` varchar(2) NOT NULL,
  `p11floracion_irregular` varchar(6) NOT NULL,
  `c11practica_instruccion` varchar(255) NOT NULL,
  `c11programa_fertilizacion` varchar(2) NOT NULL,
  `c11riesgo_adecuao` varchar(2) NOT NULL,
  `c11manejo_sombra` varchar(2) NOT NULL,
  `p12aumento_defoliacion` varchar(6) NOT NULL,
  `c12practica_instruccion` varchar(255) NOT NULL,
  `c12programa_fertilizacion` varchar(2) NOT NULL,
  `c12riesgo_adecuado` varchar(2) NOT NULL,
  `c12fuente_laguinosas` varchar(2) NOT NULL,
  `p13enfermedad_plantas` varchar(6) NOT NULL,
  `c13practica_instrucciones` varchar(255) NOT NULL,
  `c13diagnostico_incidencia` varchar(2) NOT NULL,
  `c13medidas_climas` varchar(2) NOT NULL,
  `c13informado_alerta` varchar(2) NOT NULL,
  `c13manejo_cafetales` varchar(2) NOT NULL,
  `c13manejo_sombra` varchar(2) NOT NULL,
  `c13combinar_lotes` varchar(2) NOT NULL,
  `p14diversificacion_cafetal` varchar(6) NOT NULL,
  `c14practica_instruccion` varchar(255) NOT NULL,
  `c14m_sistemas_agroforestales` varchar(2) NOT NULL,
  `p15cafetale_sol` varchar(6) NOT NULL,
  `c15practica_instruccion` varchar(255) NOT NULL,
  `c15condicion_sombra` varchar(2) NOT NULL,
  `p16cafetales_viejo` varchar(6) NOT NULL,
  `c16practica_instruccion` varchar(255) NOT NULL,
  `c16programa_renovacion` varchar(2) NOT NULL,
  `p17ausente_variedades` varchar(6) NOT NULL,
  `c17practica_instruccion` varchar(255) NOT NULL,
  `c17identificar_disponibilidad` varchar(2) NOT NULL,
  `c17t_lotes_variedades` varchar(2) NOT NULL,
  `p18ausente_practica` varchar(6) NOT NULL,
  `c18practica_instruccion` varchar(255) NOT NULL,
  `c18poscosecha_programa` varchar(2) NOT NULL,
  `p19ausente_x_año` varchar(6) NOT NULL,
  `c19practica_instruccion` varchar(255) NOT NULL,
  `c19contar_resiembras` varchar(2) NOT NULL,
  `p20produccion_bajo` varchar(6) NOT NULL,
  `c20practica_instruccion` varchar(255) NOT NULL,
  `c20diagnosticos_cafetales` varchar(2) NOT NULL,
  `c20analisis_quimico` varchar(2) NOT NULL,
  `c20r_programa_fertilizacion` varchar(2) NOT NULL,
  `c20necesidad_sustituto` varchar(2) NOT NULL,
  `p21aplico_200kg` varchar(6) NOT NULL,
  `c21practica_instruccion` varchar(255) NOT NULL,
  `c21sustituir_o_complementar` varchar(2) NOT NULL,
  `c21buscar_productividad` varchar(2) NOT NULL,
  `p22ausente_abono` varchar(6) NOT NULL,
  `c22practica_instruccion` varchar(255) NOT NULL,
  `c22incorporar_abono` varchar(2) NOT NULL,
  `c22elaborar_abono` varchar(2) NOT NULL,
  `p23quebradas_sin_cobertura` varchar(6) NOT NULL,
  `c23practica_instruccion` varchar(255) NOT NULL,
  `c23recuperacion_cobertura` varchar(2) NOT NULL,
  `p24sin_socios_arboles` varchar(6) NOT NULL,
  `c24practica_instruccion` varchar(255) NOT NULL,
  `c24arreglos_sistema` varchar(2) NOT NULL,
  `p25ausente_procesos` varchar(6) NOT NULL,
  `c25practica_instrucciones` varchar(255) NOT NULL,
  `c25fortalecer_acciones` varchar(2) NOT NULL,
  `total` varchar(20) NOT NULL,
  `total_vulnerabilidad` varchar(20) NOT NULL,
  `donde_aplico_encuesta` varchar(50) NOT NULL,
  `gps` varchar(50) NOT NULL,
  `latitu` varchar(55) NOT NULL,
  `logitud` varchar(50) NOT NULL,
  `altitud` varchar(50) NOT NULL,
  `precisionn` varchar(10) NOT NULL,
  `instanceID` bigint(255) NOT NULL,
  `id` varchar(100) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `submi` varchar(255) NOT NULL,
  `indexxx` bigint(15) NOT NULL,
  `pared` varchar(15) NOT NULL,
  `paren2` varchar(10) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `notes` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_general_metas`
--

CREATE TABLE `tbl_general_metas` (
  `cod_meta` int(11) NOT NULL,
  `meta` varchar(45) NOT NULL,
  `año` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `etiqueta_grafica` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_general_metas`
--

INSERT INTO `tbl_general_metas` (`cod_meta`, `meta`, `año`, `cantidad`, `etiqueta_grafica`) VALUES
(1, 'ficha vulnerabilidad 300', 2021, 4000, 'Faltante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_general_nombre_ficha`
--

CREATE TABLE `tbl_general_nombre_ficha` (
  `cod_nombre_ficha` int(11) NOT NULL,
  `ficha` varchar(45) NOT NULL,
  `cod_meta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_general_nombre_ficha`
--

INSERT INTO `tbl_general_nombre_ficha` (`cod_nombre_ficha`, `ficha`, `cod_meta`) VALUES
(1, 'ficha recolectadas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lid_coasociados`
--

CREATE TABLE `tbl_lid_coasociados` (
  `index1` bigint(15) NOT NULL,
  `nombre_replica` varchar(40) NOT NULL,
  `identidad` varchar(20) NOT NULL,
  `genero` varchar(15) NOT NULL,
  `submission` varchar(15) NOT NULL,
  `parent_index` varchar(15) NOT NULL,
  `posicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lid_ficha_productor`
--

CREATE TABLE `tbl_lid_ficha_productor` (
  `n` bigint(20) NOT NULL,
  `start1` varchar(15) NOT NULL,
  `end1` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `simserial` varchar(20) NOT NULL,
  `subscriberid` varchar(15) NOT NULL,
  `deviceid` varchar(15) NOT NULL,
  `Fecha` varchar(15) NOT NULL,
  `departamento` varchar(20) NOT NULL,
  `municipio` varchar(70) NOT NULL,
  `Aldea` varchar(70) NOT NULL,
  `Ubicacion` varchar(20) NOT NULL,
  `latitude` varchar(10) NOT NULL,
  `longitud` varchar(10) NOT NULL,
  `altitude` varchar(10) NOT NULL,
  `precision1` varchar(10) NOT NULL,
  `Regional` varchar(40) NOT NULL,
  `Agencia` varchar(60) NOT NULL,
  `Nombre_Productor` varchar(50) NOT NULL,
  `identidad` varchar(20) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `nacimiento` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `grupo_pertenece` varchar(40) NOT NULL,
  `area_finca` varchar(15) NOT NULL,
  `area_produccion` varchar(15) NOT NULL,
  `Variedad_Dominante` varchar(35) NOT NULL,
  `numero_productores` varchar(5) NOT NULL,
  `problemas` varchar(70) NOT NULL,
  `grupo_comunal` varchar(40) NOT NULL,
  `especifique_otra` varchar(40) NOT NULL,
  `proyecto` varchar(40) NOT NULL,
  `tecnico` varchar(15) NOT NULL,
  `indexxx` varchar(20) NOT NULL,
  `version` varchar(25) NOT NULL,
  `id` varchar(25) NOT NULL,
  `uuid` varchar(20) NOT NULL,
  `submission` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `validation` varchar(20) NOT NULL,
  `statuss` varchar(2) NOT NULL,
  `submitted` varchar(30) NOT NULL,
  `tags` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_prueba`
--

CREATE TABLE `tbl_prueba` (
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_prueba`
--

INSERT INTO `tbl_prueba` (`nombre`, `apellido`) VALUES
('rtyr', 'trfhg'),
('santa', 'l'),
('luci', 'sd'),
('ooioioi', 'dg'),
('tatiana', 'sddfsds'),
('beto', 'puerto'),
('lulu', 'luapellido'),
('loco', 'ma'),
('josue', 'la loca'),
('albertano', 'anastacicio'),
('luis', 'loco'),
('sergio', 'mata'),
('juan', 'lozano'),
('matias', 'loz'),
('beto', 'mi'),
('rtrt', 'rrr'),
('ULTIMA', 'PRUEBA'),
('SEGUGNDA PRUEBA', 'JAJA'),
('sfs', 'sdf'),
('jojo', 'dfsdfs'),
('iiiii', 'ffff'),
('sfsd', 'fsfgdf'),
('mm', 'oo'),
('pioioi', 'oi'),
('rtyr', 'trfhg'),
('santa', 'l'),
('luci', 'sd'),
('ooioioi', 'dg'),
('tatiana', 'sddfsds'),
('beto', 'puerto'),
('lulu', 'luapellido'),
('loco', 'ma'),
('josue', 'la loca'),
('albertano', 'anastacicio'),
('luis', 'loco'),
('sergio', 'mata'),
('juan', 'lozano'),
('matias', 'loz'),
('beto', 'mi'),
('rtrt', 'rrr'),
('ULTIMA', 'PRUEBA'),
('SEGUGNDA PRUEBA', 'JAJA'),
('sfs', 'sdf'),
('jojo', 'dfsdfs'),
('iiiii', 'ffff'),
('sfsd', 'fsfgdf'),
('mm', 'oo'),
('pioioi', 'oi');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_bene_actividad_productiva`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_bene_actividad_productiva` (
`index1` bigint(20)
,`Actividad_Productiva` varchar(30)
,`sumision` varchar(15)
,`codigo_actividad` varchar(15)
,`posicion` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_bene_apoyo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_bene_apoyo` (
`index1` bigint(20)
,`Tipo_de_apoyo_que_requiere` varchar(35)
,`sumision` varchar(15)
,`codigo_apoyo` varchar(15)
,`posicion` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_bene_diversificacion_rubro`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_bene_diversificacion_rubro` (
`index1` bigint(20)
,`rubros_que_posee` varchar(35)
,`sumision` varchar(50)
,`codigo_rubro` varchar(20)
,`posicion` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_bene_estufa`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_bene_estufa` (
`index1` bigint(20)
,`Tipo_estufa` varchar(30)
,`sumision` varchar(15)
,`codigo_estufa` varchar(20)
,`posicion` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_bene_ficha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_bene_ficha` (
`n` bigint(20)
,`Fecha_Entrevista` varchar(20)
,`Fecha_envío` varchar(20)
,`Departamento` varchar(35)
,`Municipio` varchar(20)
,`Aldea_Comunidad` varchar(35)
,`Ubi_eve` varchar(35)
,`Ubi_eve_lat` varchar(10)
,`Ubi_eve_long` varchar(10)
,`ubi_eve_alti` varchar(10)
,`Ubi_eve_pre` varchar(10)
,`Regional` varchar(50)
,`Agencia` varchar(50)
,`Name_productor` varchar(50)
,`Celular` varchar(10)
,`Num_Identidad` varchar(15)
,`Clave_productor` varchar(20)
,`Genero` varchar(1)
,`Edad_productor` varchar(2)
,`Est_civil` varchar(10)
,`Escolaridad` varchar(5)
,`Num_miembros_familia` varchar(11)
,`Num_RTN` varchar(20)
,`Id_etnica` varchar(15)
,`Grupo_comunitario` varchar(50)
,`caja_rural` varchar(20)
,`coop_cafetalera` varchar(20)
,`Asoc_productores` varchar(25)
,`junta_agua` varchar(25)
,`Org_cafetalera` varchar(25)
,`act_productivas` varchar(50)
,`Tipo_vivienda` varchar(20)
,`tipo_doc` varchar(20)
,`tipo_pared` varchar(25)
,`tipo_techo` varchar(20)
,`tipo_piso` varchar(20)
,`Ubi_finca` varchar(50)
,`Fuente_agua` varchar(2)
,`Nombre_Fuente_agua` varchar(40)
,`Porc_sombra_finca` varchar(3)
,`Area_total` varchar(5)
,`area_cafe` varchar(5)
,`num_plantas_cafe` varchar(5)
,`prod_uva` varchar(5)
,`prod_oro` varchar(5)
,`Edad_finca` varchar(3)
,`Tenencia_tierra` varchar(40)
,`Foto_productor` varchar(25)
,`Foto_vivienda` varchar(25)
,`Foto_finca` varchar(25)
,`Proyecto_beneficia` varchar(40)
,`Tec_responsable` varchar(50)
,`_index` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_bene_servicios_publico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_bene_servicios_publico` (
`index1` bigint(20)
,`Servicios_publicos` varchar(30)
,`sumision` varchar(15)
,`codigo_servicio` varchar(20)
,`posicion` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_bene_variedades`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_bene_variedades` (
`index1` bigint(20)
,`Variedades_Presentes` varchar(40)
,`sumision` varchar(50)
,`codigo_variedad` varchar(15)
,`posicion` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_diversificacion_ficha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_diversificacion_ficha` (
`n` bigint(20)
,`fecha_visita` varchar(20)
,`Depto` varchar(30)
,`Municipio` varchar(50)
,`Aldea` varchar(50)
,`UbicacionGPS` varchar(40)
,`latitude` varchar(20)
,`longitude` varchar(20)
,`altitude` varchar(20)
,`precision1` varchar(20)
,`Regional` varchar(30)
,`Agencia` varchar(30)
,`Nombre_productor` varchar(40)
,`id_productor` varchar(20)
,`Sexo` varchar(7)
,`reg_incafe` varchar(2)
,`parentesco_per_reg` varchar(15)
,`id_parentesco_per_reg` varchar(16)
,`Clave_productor` varchar(20)
,`area_finca` varchar(20)
,`Disp_tiempo_Cap` varchar(10)
,`impleentar_proyecto` varchar(30)
,`miembros_grupo` varchar(5)
,`meses_lluviosos` varchar(30)
,`Profundidad_suelo` varchar(5)
,`porc_mat_org_suelo` varchar(15)
,`tipo_suelo` varchar(50)
,`rubro_implementar` varchar(15)
,`linea_cafe` varchar(2)
,`linea_cafe2` varchar(2)
,`Tipo_frutales` varchar(20)
,`tipo_frutales_mel` varchar(5)
,`tipo_frutales_gua` varchar(5)
,`tipo_frutales_ram` varchar(5)
,`tipo_frutales_citri` varchar(5)
,`tipo_frutales_lic` varchar(5)
,`proyecto_beneficia` varchar(20)
,`tecnico_responsable` varchar(50)
,`indexxx` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_diversificacion_ingresos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_diversificacion_ingresos` (
`index1` bigint(20)
,`fuentes_ingresos` varchar(70)
,`sumision` varchar(50)
,`codigo_ingreso` varchar(25)
,`posicion` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_diversificacion_lluviosos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_diversificacion_lluviosos` (
`index1` bigint(20)
,`meses_mas_lluviosos` varchar(50)
,`sumision` varchar(50)
,`codigo_mes` varchar(25)
,`posicion` varchar(25)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_diversificacion_meses_flaco`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_diversificacion_meses_flaco` (
`index1` bigint(20)
,`meses_flacos` varchar(50)
,`sumision` varchar(50)
,`codigo_mes` varchar(25)
,`posicion` varchar(25)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ficha_finca`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ficha_finca` (
`n` bigint(20) unsigned
,`numero_identidad` varchar(20)
,`clave` varchar(15)
,`nombre_productor` varchar(50)
,`telefono` varchar(20)
,`sexo` varchar(15)
,`latitu` varchar(55)
,`logitud` varchar(50)
,`departamento` varchar(50)
,`municipio` varchar(50)
,`aldea` varchar(50)
,`regional` varchar(50)
,`agencia` varchar(50)
,`pendiente` varchar(8)
,`area_total_finca` varchar(10)
,`area_total_cafe` varchar(20)
,`produccion_promedio` varchar(20)
,`edad_cafetal` int(11)
,`meses_seco` int(11)
,`observacion` varchar(255)
,`fechavisita` varchar(45)
,`nombre_tecnico` varchar(50)
,`instrucciones_consejo` varchar(255)
,`p1cambios_temperatura` varchar(6)
,`c1practica_instruccion` varchar(255)
,`c1variedades_tolerante` varchar(255)
,`c1sistema_produccion` varchar(255)
,`c1implementar_sistema` varchar(255)
,`p2lluvias_irregulares` varchar(6)
,`c2practica_instruccion` varchar(255)
,`c2cosecha_agua` varchar(2)
,`c2riesgo_adecuada` varchar(2)
,`c2aplicacion_frecuente_foliares` varchar(2)
,`p3inuncaciones_derrumbe` varchar(6)
,`c3practica_instruccion` varchar(255)
,`c3conservacion_suelo` varchar(2)
,`c3diseño_sombre` varchar(2)
,`c3evitar_cultivo_riesgo` varchar(2)
,`p4riesgo_huracanes_tt` varchar(6)
,`c4practica_instruccion` varchar(255)
,`c4mantenerse_infomado` varchar(2)
,`c4evitar_cultivo_riesgo` varchar(2)
,`p5disminucion_agua` varchar(6)
,`c5practica_instruccion` varchar(255)
,`c5cosecha_agua` varchar(2)
,`c5manejo_sombra` varchar(2)
,`c5cobertura_suelo` varchar(2)
,`p6vientos_fuerte` varchar(6)
,`c6practica_instruccion` varchar(255)
,`c6barreras_rompe_viento` varchar(2)
,`c6manejo_sombra` varchar(2)
,`p7señales_erosion` varchar(6)
,`c7practica_instruccion` varchar(255)
,`c7conservacion_suelos` varchar(2)
,`c7menejo_selectivo` varchar(2)
,`c7manejo_sombra` varchar(2)
,`p8practica_suelo` varchar(6)
,`c8practica_instruccion` varchar(255)
,`c8programa_fertilizacion` varchar(2)
,`c8aporte_organica` varchar(2)
,`c8manejo_sombra` varchar(2)
,`p9f_practica_conservacion` varchar(6)
,`c9practica_instruccion` varchar(255)
,`c9practica_conservacion` varchar(2)
,`p10ausente_hierva` varchar(6)
,`c10practica_instruccion` varchar(255)
,`c10m_seleccion_hierva` varchar(2)
,`c10manejo_sombra` varchar(2)
,`p11floracion_irregular` varchar(6)
,`c11practica_instruccion` varchar(255)
,`c11programa_fertilizacion` varchar(2)
,`c11riesgo_adecuao` varchar(2)
,`c11manejo_sombra` varchar(2)
,`p12aumento_defoliacion` varchar(6)
,`c12practica_instruccion` varchar(255)
,`c12programa_fertilizacion` varchar(2)
,`c12riesgo_adecuado` varchar(2)
,`c12fuente_laguinosas` varchar(2)
,`p13enfermedad_plantas` varchar(6)
,`c13practica_instrucciones` varchar(255)
,`c13diagnostico_incidencia` varchar(2)
,`c13medidas_climas` varchar(2)
,`c13informado_alerta` varchar(2)
,`c13manejo_cafetales` varchar(2)
,`c13manejo_sombra` varchar(2)
,`c13combinar_lotes` varchar(2)
,`p14diversificacion_cafetal` varchar(6)
,`c14practica_instruccion` varchar(255)
,`c14m_sistemas_agroforestales` varchar(2)
,`p15cafetale_sol` varchar(6)
,`c15practica_instruccion` varchar(255)
,`c15condicion_sombra` varchar(2)
,`p16cafetales_viejo` varchar(6)
,`c16practica_instruccion` varchar(255)
,`c16programa_renovacion` varchar(2)
,`p17ausente_variedades` varchar(6)
,`c17practica_instruccion` varchar(255)
,`c17identificar_disponibilidad` varchar(2)
,`c17t_lotes_variedades` varchar(2)
,`p18ausente_practica` varchar(6)
,`c18practica_instruccion` varchar(255)
,`c18poscosecha_programa` varchar(2)
,`p19ausente_x_año` varchar(6)
,`c19practica_instruccion` varchar(255)
,`c19contar_resiembras` varchar(2)
,`p20produccion_bajo` varchar(6)
,`c20practica_instruccion` varchar(255)
,`c20diagnosticos_cafetales` varchar(2)
,`c20analisis_quimico` varchar(2)
,`c20r_programa_fertilizacion` varchar(2)
,`c20necesidad_sustituto` varchar(2)
,`p21aplico_200kg` varchar(6)
,`c21practica_instruccion` varchar(255)
,`c21sustituir_o_complementar` varchar(2)
,`c21buscar_productividad` varchar(2)
,`p22ausente_abono` varchar(6)
,`c22practica_instruccion` varchar(255)
,`c22incorporar_abono` varchar(2)
,`c22elaborar_abono` varchar(2)
,`p23quebradas_sin_cobertura` varchar(6)
,`c23practica_instruccion` varchar(255)
,`c23recuperacion_cobertura` varchar(2)
,`p24sin_socios_arboles` varchar(6)
,`c24practica_instruccion` varchar(255)
,`c24arreglos_sistema` varchar(2)
,`p25ausente_procesos` varchar(6)
,`c25practica_instrucciones` varchar(255)
,`c25fortalecer_acciones` varchar(2)
,`indexxx` bigint(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ficha_finca_2018`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ficha_finca_2018` (
`n` bigint(20) unsigned
,`numero_identidad` varchar(20)
,`clave` varchar(15)
,`nombre_productor` varchar(50)
,`telefono` varchar(20)
,`sexo` varchar(15)
,`latitu` varchar(55)
,`logitud` varchar(50)
,`departamento` varchar(50)
,`municipio` varchar(50)
,`aldea` varchar(50)
,`regional` varchar(50)
,`agencia` varchar(50)
,`pendiente` varchar(8)
,`area_total_finca` varchar(10)
,`area_total_cafe` varchar(20)
,`produccion_promedio` varchar(20)
,`edad_cafetal` int(11)
,`meses_seco` int(11)
,`observacion` varchar(255)
,`fechavisita` varchar(45)
,`nombre_tecnico` varchar(50)
,`instrucciones_consejo` varchar(255)
,`v_tipica` varchar(2)
,`v_pacas` varchar(2)
,`v_caturra` varchar(2)
,`v_ihcafe90` varchar(2)
,`v_parainema` varchar(2)
,`v_lempira` varchar(2)
,`v_catuai` varchar(2)
,`v_catimor` varchar(2)
,`variedad_other` varchar(255)
,`p1cambios_temperatura` varchar(6)
,`c1practica_instruccion` varchar(255)
,`c1variedades_tolerante` varchar(2)
,`c1sistema_produccion` varchar(2)
,`c1implementar_sistema` varchar(2)
,`p2lluvias_irregulares` varchar(6)
,`c2practica_instruccion` varchar(255)
,`c2cosecha_agua` varchar(2)
,`c2riesgo_adecuada` varchar(2)
,`c2aplicacion_frecuente_foliares` varchar(2)
,`p3inuncaciones_derrumbe` varchar(6)
,`c3practica_instruccion` varchar(255)
,`c3conservacion_suelo` varchar(2)
,`c3diseño_sombre` varchar(2)
,`c3evitar_cultivo_riesgo` varchar(2)
,`p4riesgo_huracanes_tt` varchar(6)
,`c4practica_instruccion` varchar(255)
,`c4mantenerse_infomado` varchar(2)
,`c4evitar_cultivo_riesgo` varchar(2)
,`p5disminucion_agua` varchar(6)
,`c5practica_instruccion` varchar(255)
,`c5cosecha_agua` varchar(2)
,`c5manejo_sombra` varchar(2)
,`c5cobertura_suelo` varchar(2)
,`p6vientos_fuerte` varchar(6)
,`c6practica_instruccion` varchar(255)
,`c6barreras_rompe_viento` varchar(2)
,`c6manejo_sombra` varchar(2)
,`p7señales_erosion` varchar(6)
,`c7practica_instruccion` varchar(255)
,`c7conservacion_suelos` varchar(2)
,`c7menejo_selectivo` varchar(2)
,`c7manejo_sombra` varchar(2)
,`p8practica_suelo` varchar(6)
,`c8practica_instruccion` varchar(255)
,`c8programa_fertilizacion` varchar(2)
,`c8aporte_organica` varchar(2)
,`c8manejo_sombra` varchar(2)
,`p9f_practica_conservacion` varchar(6)
,`c9practica_instruccion` varchar(255)
,`c9practica_conservacion` varchar(2)
,`p10ausente_hierva` varchar(6)
,`c10practica_instruccion` varchar(2)
,`c10m_seleccion_hierva` varchar(2)
,`c10manejo_sombra` varchar(2)
,`p11floracion_irregular` varchar(6)
,`c11practica_instruccion` varchar(255)
,`c11programa_fertilizacion` varchar(2)
,`c11riesgo_adecuao` varchar(2)
,`c11manejo_sombra` varchar(2)
,`p12aumento_defoliacion` varchar(6)
,`c12practica_instruccion` varchar(255)
,`c12programa_fertilizacion` varchar(2)
,`c12riesgo_adecuado` varchar(2)
,`c12fuente_laguinosas` varchar(2)
,`p13enfermedad_plantas` varchar(6)
,`c13practica_instrucciones` varchar(255)
,`c13diagnostico_incidencia` varchar(2)
,`c13medidas_climas` varchar(2)
,`c13informado_alerta` varchar(2)
,`c13manejo_cafetales` varchar(2)
,`c13manejo_sombra` varchar(2)
,`c13combinar_lotes` varchar(2)
,`p14diversificacion_cafetal` varchar(6)
,`c14practica_instruccion` varchar(255)
,`c14m_sistemas_agroforestales` varchar(2)
,`p15cafetale_sol` varchar(6)
,`c15practica_instruccion` varchar(255)
,`c15condicion_sombra` varchar(2)
,`p16cafetales_viejo` varchar(6)
,`c16practica_instruccion` varchar(255)
,`c16programa_renovacion` varchar(2)
,`p17ausente_variedades` varchar(6)
,`c17practica_instruccion` varchar(255)
,`c17identificar_disponibilidad` varchar(2)
,`c17t_lotes_variedades` varchar(2)
,`p18ausente_practica` varchar(6)
,`c18practica_instruccion` varchar(255)
,`c18poscosecha_programa` varchar(2)
,`p19ausente_x_año` varchar(6)
,`c19practica_instruccion` varchar(255)
,`c19contar_resiembras` varchar(2)
,`p20produccion_bajo` varchar(6)
,`c20practica_instruccion` varchar(255)
,`c20diagnosticos_cafetales` varchar(2)
,`c20analisis_quimico` varchar(2)
,`c20r_programa_fertilizacion` varchar(2)
,`c20necesidad_sustituto` varchar(2)
,`p21aplico_200kg` varchar(6)
,`c21practica_instruccion` varchar(255)
,`c21sustituir_o_complementar` varchar(2)
,`c21buscar_productividad` varchar(2)
,`p22ausente_abono` varchar(6)
,`c22practica_instruccion` varchar(255)
,`c22incorporar_abono` varchar(2)
,`c22elaborar_abono` varchar(2)
,`p23quebradas_sin_cobertura` varchar(6)
,`c23practica_instruccion` varchar(255)
,`c23recuperacion_cobertura` varchar(2)
,`p24sin_socios_arboles` varchar(6)
,`c24practica_instruccion` varchar(255)
,`c24arreglos_sistema` varchar(2)
,`p25ausente_procesos` varchar(6)
,`c25practica_instrucciones` varchar(255)
,`c25fortalecer_acciones` varchar(2)
,`indexxx` bigint(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_lider_coasociados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_lider_coasociados` (
`identidad` varchar(20)
,`nombre_replica` varchar(40)
,`genero` varchar(15)
,`index1` bigint(15)
,`submission` varchar(15)
,`posicion` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_lider_ficha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_lider_ficha` (
`n` bigint(20)
,`Fecha` varchar(15)
,`departamento` varchar(20)
,`municipio` varchar(70)
,`Aldea` varchar(70)
,`Ubicacion` varchar(20)
,`latitude` varchar(10)
,`longitud` varchar(10)
,`altitude` varchar(10)
,`precision1` varchar(10)
,`Regional` varchar(40)
,`Agencia` varchar(60)
,`Nombre_Productor` varchar(50)
,`identidad` varchar(20)
,`sexo` varchar(15)
,`nacimiento` varchar(15)
,`celular` varchar(15)
,`grupo_pertenece` varchar(40)
,`area_finca` varchar(15)
,`area_produccion` varchar(15)
,`Variedad_Dominante` varchar(35)
,`numero_productores` varchar(5)
,`problemas` varchar(70)
,`grupo_comunal` varchar(40)
,`especifique_otra` varchar(40)
,`proyecto` varchar(40)
,`tecnico` varchar(15)
,`indexxx` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_vulnerabilidad_variedades`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_vulnerabilidad_variedades` (
`index1` bigint(20)
,`sumision` varchar(100)
,`variedades` varchar(60)
,`codigo_variedad` varchar(45)
,`posicion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_bene_actividad_productiva`
--
DROP TABLE IF EXISTS `vista_bene_actividad_productiva`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_bene_actividad_productiva`  AS  select `a`.`index1` AS `index1`,`a`.`Actividad_Productiva` AS `Actividad_Productiva`,`a`.`sumision` AS `sumision`,`a`.`codigo_actividad` AS `codigo_actividad`,`a`.`posicion` AS `posicion` from `tbl_bene_actividad_productiva` `a` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_bene_apoyo`
--
DROP TABLE IF EXISTS `vista_bene_apoyo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_bene_apoyo`  AS  select `a`.`index1` AS `index1`,`a`.`Tipo_de_apoyo_que_requiere` AS `Tipo_de_apoyo_que_requiere`,`a`.`sumision` AS `sumision`,`a`.`codigo_apoyo` AS `codigo_apoyo`,`a`.`posicion` AS `posicion` from `tbl_bene_tipo_apoyo` `a` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_bene_diversificacion_rubro`
--
DROP TABLE IF EXISTS `vista_bene_diversificacion_rubro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_bene_diversificacion_rubro`  AS  select `tbl_bene_diversificacion_rubro`.`index1` AS `index1`,`tbl_bene_diversificacion_rubro`.`rubros_que_posee` AS `rubros_que_posee`,`tbl_bene_diversificacion_rubro`.`sumision` AS `sumision`,`tbl_bene_diversificacion_rubro`.`codigo_rubro` AS `codigo_rubro`,`tbl_bene_diversificacion_rubro`.`posicion` AS `posicion` from `tbl_bene_diversificacion_rubro` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_bene_estufa`
--
DROP TABLE IF EXISTS `vista_bene_estufa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_bene_estufa`  AS  select `e`.`index1` AS `index1`,`e`.`Tipo_estufa` AS `Tipo_estufa`,`e`.`sumision` AS `sumision`,`e`.`codigo_estufa` AS `codigo_estufa`,`e`.`posicion` AS `posicion` from `tbl_bene_tipos_de_estufa` `e` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_bene_ficha`
--
DROP TABLE IF EXISTS `vista_bene_ficha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_bene_ficha`  AS  select `tbl_bene_ficha_productores`.`n` AS `n`,`tbl_bene_ficha_productores`.`Fecha_Entrevista` AS `Fecha_Entrevista`,`tbl_bene_ficha_productores`.`Fecha_envío` AS `Fecha_envío`,`tbl_bene_ficha_productores`.`Departamento` AS `Departamento`,`tbl_bene_ficha_productores`.`Municipio` AS `Municipio`,`tbl_bene_ficha_productores`.`Aldea_Comunidad` AS `Aldea_Comunidad`,`tbl_bene_ficha_productores`.`Ubi_eve` AS `Ubi_eve`,`tbl_bene_ficha_productores`.`Ubi_eve_lat` AS `Ubi_eve_lat`,`tbl_bene_ficha_productores`.`Ubi_eve_long` AS `Ubi_eve_long`,`tbl_bene_ficha_productores`.`Ubi_eve_alti` AS `ubi_eve_alti`,`tbl_bene_ficha_productores`.`Ubi_eve_pre` AS `Ubi_eve_pre`,`tbl_bene_ficha_productores`.`Regional` AS `Regional`,`tbl_bene_ficha_productores`.`Agencia` AS `Agencia`,`tbl_bene_ficha_productores`.`Name_productor` AS `Name_productor`,`tbl_bene_ficha_productores`.`Celular` AS `Celular`,`tbl_bene_ficha_productores`.`Num_Identidad` AS `Num_Identidad`,`tbl_bene_ficha_productores`.`Clave_productor` AS `Clave_productor`,`tbl_bene_ficha_productores`.`Genero` AS `Genero`,`tbl_bene_ficha_productores`.`Edad_productor` AS `Edad_productor`,`tbl_bene_ficha_productores`.`Est_civil` AS `Est_civil`,`tbl_bene_ficha_productores`.`Escolaridad` AS `Escolaridad`,`tbl_bene_ficha_productores`.`Num_miembros_familia` AS `Num_miembros_familia`,`tbl_bene_ficha_productores`.`Num_RTN` AS `Num_RTN`,`tbl_bene_ficha_productores`.`Id_etnica` AS `Id_etnica`,`tbl_bene_ficha_productores`.`Grupo_comunitario` AS `Grupo_comunitario`,`tbl_bene_ficha_productores`.`caja_rural` AS `caja_rural`,`tbl_bene_ficha_productores`.`coop_cafetalera` AS `coop_cafetalera`,`tbl_bene_ficha_productores`.`Asoc_productores` AS `Asoc_productores`,`tbl_bene_ficha_productores`.`junta_agua` AS `junta_agua`,`tbl_bene_ficha_productores`.`Org_cafetalera` AS `Org_cafetalera`,`tbl_bene_ficha_productores`.`act_productivas` AS `act_productivas`,`tbl_bene_ficha_productores`.`Tipo_vivienda` AS `Tipo_vivienda`,`tbl_bene_ficha_productores`.`tipo_doc` AS `tipo_doc`,`tbl_bene_ficha_productores`.`tipo_pared` AS `tipo_pared`,`tbl_bene_ficha_productores`.`tipo_techo` AS `tipo_techo`,`tbl_bene_ficha_productores`.`tipo_piso` AS `tipo_piso`,`tbl_bene_ficha_productores`.`Ubi_finca` AS `Ubi_finca`,`tbl_bene_ficha_productores`.`Fuente_agua` AS `Fuente_agua`,`tbl_bene_ficha_productores`.`Nombre_Fuente_agua` AS `Nombre_Fuente_agua`,`tbl_bene_ficha_productores`.`Porc_sombra_finca` AS `Porc_sombra_finca`,`tbl_bene_ficha_productores`.`Area_total` AS `Area_total`,`tbl_bene_ficha_productores`.`area_cafe` AS `area_cafe`,`tbl_bene_ficha_productores`.`num_plantas_cafe` AS `num_plantas_cafe`,`tbl_bene_ficha_productores`.`prod_uva` AS `prod_uva`,`tbl_bene_ficha_productores`.`prod_oro` AS `prod_oro`,`tbl_bene_ficha_productores`.`Edad_finca` AS `Edad_finca`,`tbl_bene_ficha_productores`.`Tenencia_tierra` AS `Tenencia_tierra`,`tbl_bene_ficha_productores`.`Foto_productor` AS `Foto_productor`,`tbl_bene_ficha_productores`.`Foto_vivienda` AS `Foto_vivienda`,`tbl_bene_ficha_productores`.`Foto_finca` AS `Foto_finca`,`tbl_bene_ficha_productores`.`Proyecto_beneficia` AS `Proyecto_beneficia`,`tbl_bene_ficha_productores`.`Tec_responsable` AS `Tec_responsable`,`tbl_bene_ficha_productores`.`_index` AS `_index` from `tbl_bene_ficha_productores` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_bene_servicios_publico`
--
DROP TABLE IF EXISTS `vista_bene_servicios_publico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_bene_servicios_publico`  AS  select `s`.`index1` AS `index1`,`s`.`Servicios_publicos` AS `Servicios_publicos`,`s`.`sumision` AS `sumision`,`s`.`codigo_servicio` AS `codigo_servicio`,`s`.`posicion` AS `posicion` from `tbl_bene_servicios_publicos` `s` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_bene_variedades`
--
DROP TABLE IF EXISTS `vista_bene_variedades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_bene_variedades`  AS  select `v`.`index1` AS `index1`,`v`.`Variedades_Presentes` AS `Variedades_Presentes`,`v`.`sumision` AS `sumision`,`v`.`codigo_variedad` AS `codigo_variedad`,`v`.`posicion` AS `posicion` from `tbl_bene_variedades` `v` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_diversificacion_ficha`
--
DROP TABLE IF EXISTS `vista_diversificacion_ficha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_diversificacion_ficha`  AS  select `tbl_div_ficha_productor`.`n` AS `n`,`tbl_div_ficha_productor`.`Fecha_visita` AS `fecha_visita`,`tbl_div_ficha_productor`.`Depto` AS `Depto`,`tbl_div_ficha_productor`.`Municipio` AS `Municipio`,`tbl_div_ficha_productor`.`Aldea` AS `Aldea`,`tbl_div_ficha_productor`.`UbicacionGPS` AS `UbicacionGPS`,`tbl_div_ficha_productor`.`latitude` AS `latitude`,`tbl_div_ficha_productor`.`longitude` AS `longitude`,`tbl_div_ficha_productor`.`altitude` AS `altitude`,`tbl_div_ficha_productor`.`precision1` AS `precision1`,`tbl_div_ficha_productor`.`Regional` AS `Regional`,`tbl_div_ficha_productor`.`Agencia` AS `Agencia`,`tbl_div_ficha_productor`.`Nombre_productor` AS `Nombre_productor`,`tbl_div_ficha_productor`.`id_productor` AS `id_productor`,`tbl_div_ficha_productor`.`Sexo` AS `Sexo`,`tbl_div_ficha_productor`.`reg_incafe` AS `reg_incafe`,`tbl_div_ficha_productor`.`parentesco_per_reg` AS `parentesco_per_reg`,`tbl_div_ficha_productor`.`id_parentesco_per_reg` AS `id_parentesco_per_reg`,`tbl_div_ficha_productor`.`Clave_productor` AS `Clave_productor`,`tbl_div_ficha_productor`.`area_finca` AS `area_finca`,`tbl_div_ficha_productor`.`Disp_tiempo_Cap` AS `Disp_tiempo_Cap`,`tbl_div_ficha_productor`.`impleentar_proyecto` AS `impleentar_proyecto`,`tbl_div_ficha_productor`.`miembros_grupo` AS `miembros_grupo`,`tbl_div_ficha_productor`.`meses_lluviosos` AS `meses_lluviosos`,`tbl_div_ficha_productor`.`Profundidad_suelo` AS `Profundidad_suelo`,`tbl_div_ficha_productor`.`porc_mat_org_suelo` AS `porc_mat_org_suelo`,`tbl_div_ficha_productor`.`tipo_suelo` AS `tipo_suelo`,`tbl_div_ficha_productor`.`rubro_implementar` AS `rubro_implementar`,`tbl_div_ficha_productor`.`linea_cafe` AS `linea_cafe`,`tbl_div_ficha_productor`.`linea_cafe2` AS `linea_cafe2`,`tbl_div_ficha_productor`.`Tipo_frutales` AS `Tipo_frutales`,`tbl_div_ficha_productor`.`tipo_frutales_mel` AS `tipo_frutales_mel`,`tbl_div_ficha_productor`.`tipo_frutales_gua` AS `tipo_frutales_gua`,`tbl_div_ficha_productor`.`tipo_frutales_ram` AS `tipo_frutales_ram`,`tbl_div_ficha_productor`.`tipo_frutales_citri` AS `tipo_frutales_citri`,`tbl_div_ficha_productor`.`tipo_frutales_lic` AS `tipo_frutales_lic`,`tbl_div_ficha_productor`.`proyecto_beneficia` AS `proyecto_beneficia`,`tbl_div_ficha_productor`.`tecnico_responsable` AS `tecnico_responsable`,`tbl_div_ficha_productor`.`indexxx` AS `indexxx` from `tbl_div_ficha_productor` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_diversificacion_ingresos`
--
DROP TABLE IF EXISTS `vista_diversificacion_ingresos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_diversificacion_ingresos`  AS  select `i`.`index1` AS `index1`,`i`.`fuentes_ingresos` AS `fuentes_ingresos`,`i`.`sumision` AS `sumision`,`i`.`codigo_ingreso` AS `codigo_ingreso`,`i`.`posicion` AS `posicion` from `tbl_div_fuentes_ingreso` `i` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_diversificacion_lluviosos`
--
DROP TABLE IF EXISTS `vista_diversificacion_lluviosos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_diversificacion_lluviosos`  AS  select `tbl_div_meses_lluviosos`.`index1` AS `index1`,`tbl_div_meses_lluviosos`.`meses_mas_lluviosos` AS `meses_mas_lluviosos`,`tbl_div_meses_lluviosos`.`sumision` AS `sumision`,`tbl_div_meses_lluviosos`.`codigo_mes` AS `codigo_mes`,`tbl_div_meses_lluviosos`.`posicion` AS `posicion` from `tbl_div_meses_lluviosos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_diversificacion_meses_flaco`
--
DROP TABLE IF EXISTS `vista_diversificacion_meses_flaco`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_diversificacion_meses_flaco`  AS  select `tbl_div_meses_flacos`.`index1` AS `index1`,`tbl_div_meses_flacos`.`meses_flacos` AS `meses_flacos`,`tbl_div_meses_flacos`.`sumision` AS `sumision`,`tbl_div_meses_flacos`.`codigo_mes` AS `codigo_mes`,`tbl_div_meses_flacos`.`posicion` AS `posicion` from `tbl_div_meses_flacos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ficha_finca`
--
DROP TABLE IF EXISTS `vista_ficha_finca`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ficha_finca`  AS  select `tbl_estructura_vulnerabilidad`.`n` AS `n`,`tbl_estructura_vulnerabilidad`.`numero_identidad` AS `numero_identidad`,`tbl_estructura_vulnerabilidad`.`clave` AS `clave`,`tbl_estructura_vulnerabilidad`.`nombre_productor` AS `nombre_productor`,`tbl_estructura_vulnerabilidad`.`telefono` AS `telefono`,`tbl_estructura_vulnerabilidad`.`sexo` AS `sexo`,`tbl_estructura_vulnerabilidad`.`latitu` AS `latitu`,`tbl_estructura_vulnerabilidad`.`logitud` AS `logitud`,`tbl_estructura_vulnerabilidad`.`departamento` AS `departamento`,`tbl_estructura_vulnerabilidad`.`municipio` AS `municipio`,`tbl_estructura_vulnerabilidad`.`aldea` AS `aldea`,`tbl_estructura_vulnerabilidad`.`regional` AS `regional`,`tbl_estructura_vulnerabilidad`.`agencia` AS `agencia`,`tbl_estructura_vulnerabilidad`.`pendiente` AS `pendiente`,`tbl_estructura_vulnerabilidad`.`area_total_finca` AS `area_total_finca`,`tbl_estructura_vulnerabilidad`.`area_total_cafe` AS `area_total_cafe`,`tbl_estructura_vulnerabilidad`.`produccion_promedio` AS `produccion_promedio`,`tbl_estructura_vulnerabilidad`.`edad_cafetal` AS `edad_cafetal`,`tbl_estructura_vulnerabilidad`.`meses_seco` AS `meses_seco`,`tbl_estructura_vulnerabilidad`.`observacion` AS `observacion`,`tbl_estructura_vulnerabilidad`.`fechavisita` AS `fechavisita`,`tbl_estructura_vulnerabilidad`.`nombre_tecnico` AS `nombre_tecnico`,`tbl_estructura_vulnerabilidad`.`instrucciones_consejo` AS `instrucciones_consejo`,`tbl_estructura_vulnerabilidad`.`p1cambios_temperatura` AS `p1cambios_temperatura`,`tbl_estructura_vulnerabilidad`.`c1practica_instruccion` AS `c1practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c1variedades_tolerante` AS `c1variedades_tolerante`,`tbl_estructura_vulnerabilidad`.`c1sistema_produccion` AS `c1sistema_produccion`,`tbl_estructura_vulnerabilidad`.`c1implementar_sistema` AS `c1implementar_sistema`,`tbl_estructura_vulnerabilidad`.`p2lluvias_irregulares` AS `p2lluvias_irregulares`,`tbl_estructura_vulnerabilidad`.`c2practica_instruccion` AS `c2practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c2cosecha_agua` AS `c2cosecha_agua`,`tbl_estructura_vulnerabilidad`.`c2riesgo_adecuada` AS `c2riesgo_adecuada`,`tbl_estructura_vulnerabilidad`.`c2aplicacion_frecuente_foliares` AS `c2aplicacion_frecuente_foliares`,`tbl_estructura_vulnerabilidad`.`p3inuncaciones_derrumbe` AS `p3inuncaciones_derrumbe`,`tbl_estructura_vulnerabilidad`.`c3practica_instruccion` AS `c3practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c3conservacion_suelo` AS `c3conservacion_suelo`,`tbl_estructura_vulnerabilidad`.`c3diseño_sombre` AS `c3diseño_sombre`,`tbl_estructura_vulnerabilidad`.`c3evitar_cultivo_riesgo` AS `c3evitar_cultivo_riesgo`,`tbl_estructura_vulnerabilidad`.`p4riesgo_huracanes_tt` AS `p4riesgo_huracanes_tt`,`tbl_estructura_vulnerabilidad`.`c4practica_instruccion` AS `c4practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c4mantenerse_infomado` AS `c4mantenerse_infomado`,`tbl_estructura_vulnerabilidad`.`c4evitar_cultivo_riesgo` AS `c4evitar_cultivo_riesgo`,`tbl_estructura_vulnerabilidad`.`p5disminucion_agua` AS `p5disminucion_agua`,`tbl_estructura_vulnerabilidad`.`c5practica_instruccion` AS `c5practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c5cosecha_agua` AS `c5cosecha_agua`,`tbl_estructura_vulnerabilidad`.`c5manejo_sombra` AS `c5manejo_sombra`,`tbl_estructura_vulnerabilidad`.`c5cobertura_suelo` AS `c5cobertura_suelo`,`tbl_estructura_vulnerabilidad`.`p6vientos_fuerte` AS `p6vientos_fuerte`,`tbl_estructura_vulnerabilidad`.`c6practica_instruccion` AS `c6practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c6barreras_rompe_viento` AS `c6barreras_rompe_viento`,`tbl_estructura_vulnerabilidad`.`c6manejo_sombra` AS `c6manejo_sombra`,`tbl_estructura_vulnerabilidad`.`p7señales_erosion` AS `p7señales_erosion`,`tbl_estructura_vulnerabilidad`.`c7practica_instruccion` AS `c7practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c7conservacion_suelos` AS `c7conservacion_suelos`,`tbl_estructura_vulnerabilidad`.`c7menejo_selectivo` AS `c7menejo_selectivo`,`tbl_estructura_vulnerabilidad`.`c7manejo_sombra` AS `c7manejo_sombra`,`tbl_estructura_vulnerabilidad`.`p8practica_suelo` AS `p8practica_suelo`,`tbl_estructura_vulnerabilidad`.`c8practica_instruccion` AS `c8practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c8programa_fertilizacion` AS `c8programa_fertilizacion`,`tbl_estructura_vulnerabilidad`.`c8aporte_organica` AS `c8aporte_organica`,`tbl_estructura_vulnerabilidad`.`c8manejo_sombra` AS `c8manejo_sombra`,`tbl_estructura_vulnerabilidad`.`p9f_practica_conservacion` AS `p9f_practica_conservacion`,`tbl_estructura_vulnerabilidad`.`c9practica_instruccion` AS `c9practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c9practica_conservacion` AS `c9practica_conservacion`,`tbl_estructura_vulnerabilidad`.`p10ausente_hierva` AS `p10ausente_hierva`,`tbl_estructura_vulnerabilidad`.`c10practica_instruccion` AS `c10practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c10m_seleccion_hierva` AS `c10m_seleccion_hierva`,`tbl_estructura_vulnerabilidad`.`c10manejo_sombra` AS `c10manejo_sombra`,`tbl_estructura_vulnerabilidad`.`p11floracion_irregular` AS `p11floracion_irregular`,`tbl_estructura_vulnerabilidad`.`c11practica_instruccion` AS `c11practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c11programa_fertilizacion` AS `c11programa_fertilizacion`,`tbl_estructura_vulnerabilidad`.`c11riesgo_adecuao` AS `c11riesgo_adecuao`,`tbl_estructura_vulnerabilidad`.`c11manejo_sombra` AS `c11manejo_sombra`,`tbl_estructura_vulnerabilidad`.`p12aumento_defoliacion` AS `p12aumento_defoliacion`,`tbl_estructura_vulnerabilidad`.`c12practica_instruccion` AS `c12practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c12programa_fertilizacion` AS `c12programa_fertilizacion`,`tbl_estructura_vulnerabilidad`.`c12riesgo_adecuado` AS `c12riesgo_adecuado`,`tbl_estructura_vulnerabilidad`.`c12fuente_laguinosas` AS `c12fuente_laguinosas`,`tbl_estructura_vulnerabilidad`.`p13enfermedad_plantas` AS `p13enfermedad_plantas`,`tbl_estructura_vulnerabilidad`.`c13practica_instrucciones` AS `c13practica_instrucciones`,`tbl_estructura_vulnerabilidad`.`c13diagnostico_incidencia` AS `c13diagnostico_incidencia`,`tbl_estructura_vulnerabilidad`.`c13medidas_climas` AS `c13medidas_climas`,`tbl_estructura_vulnerabilidad`.`c13informado_alerta` AS `c13informado_alerta`,`tbl_estructura_vulnerabilidad`.`c13manejo_cafetales` AS `c13manejo_cafetales`,`tbl_estructura_vulnerabilidad`.`c13manejo_sombra` AS `c13manejo_sombra`,`tbl_estructura_vulnerabilidad`.`c13combinar_lotes` AS `c13combinar_lotes`,`tbl_estructura_vulnerabilidad`.`p14diversificacion_cafetal` AS `p14diversificacion_cafetal`,`tbl_estructura_vulnerabilidad`.`c14practica_instruccion` AS `c14practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c14m_sistemas_agroforestales` AS `c14m_sistemas_agroforestales`,`tbl_estructura_vulnerabilidad`.`p15cafetale_sol` AS `p15cafetale_sol`,`tbl_estructura_vulnerabilidad`.`c15practica_instruccion` AS `c15practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c15condicion_sombra` AS `c15condicion_sombra`,`tbl_estructura_vulnerabilidad`.`p16cafetales_viejo` AS `p16cafetales_viejo`,`tbl_estructura_vulnerabilidad`.`c16practica_instruccion` AS `c16practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c16programa_renovacion` AS `c16programa_renovacion`,`tbl_estructura_vulnerabilidad`.`p17ausente_variedades` AS `p17ausente_variedades`,`tbl_estructura_vulnerabilidad`.`c17practica_instruccion` AS `c17practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c17identificar_disponibilidad` AS `c17identificar_disponibilidad`,`tbl_estructura_vulnerabilidad`.`c17t_lotes_variedades` AS `c17t_lotes_variedades`,`tbl_estructura_vulnerabilidad`.`p18ausente_practica` AS `p18ausente_practica`,`tbl_estructura_vulnerabilidad`.`c18practica_instruccion` AS `c18practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c18poscosecha_programa` AS `c18poscosecha_programa`,`tbl_estructura_vulnerabilidad`.`p19ausente_x_año` AS `p19ausente_x_año`,`tbl_estructura_vulnerabilidad`.`c19practica_instruccion` AS `c19practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c19contar_resiembras` AS `c19contar_resiembras`,`tbl_estructura_vulnerabilidad`.`p20produccion_bajo` AS `p20produccion_bajo`,`tbl_estructura_vulnerabilidad`.`c20practica_instruccion` AS `c20practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c20diagnosticos_cafetales` AS `c20diagnosticos_cafetales`,`tbl_estructura_vulnerabilidad`.`c20analisis_quimico` AS `c20analisis_quimico`,`tbl_estructura_vulnerabilidad`.`c20r_programa_fertilizacion` AS `c20r_programa_fertilizacion`,`tbl_estructura_vulnerabilidad`.`c20necesidad_sustituto` AS `c20necesidad_sustituto`,`tbl_estructura_vulnerabilidad`.`p21aplico_200kg` AS `p21aplico_200kg`,`tbl_estructura_vulnerabilidad`.`c21practica_instruccion` AS `c21practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c21sustituir_o_complementar` AS `c21sustituir_o_complementar`,`tbl_estructura_vulnerabilidad`.`c21buscar_productividad` AS `c21buscar_productividad`,`tbl_estructura_vulnerabilidad`.`p22ausente_abono` AS `p22ausente_abono`,`tbl_estructura_vulnerabilidad`.`c22practica_instruccion` AS `c22practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c22incorporar_abono` AS `c22incorporar_abono`,`tbl_estructura_vulnerabilidad`.`c22elaborar_abono` AS `c22elaborar_abono`,`tbl_estructura_vulnerabilidad`.`p23quebradas_sin_cobertura` AS `p23quebradas_sin_cobertura`,`tbl_estructura_vulnerabilidad`.`c23practica_instruccion` AS `c23practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c23recuperacion_cobertura` AS `c23recuperacion_cobertura`,`tbl_estructura_vulnerabilidad`.`p24sin_socios_arboles` AS `p24sin_socios_arboles`,`tbl_estructura_vulnerabilidad`.`c24practica_instruccion` AS `c24practica_instruccion`,`tbl_estructura_vulnerabilidad`.`c24arreglos_sistema` AS `c24arreglos_sistema`,`tbl_estructura_vulnerabilidad`.`p25ausente_procesos` AS `p25ausente_procesos`,`tbl_estructura_vulnerabilidad`.`c25practica_instrucciones` AS `c25practica_instrucciones`,`tbl_estructura_vulnerabilidad`.`c25fortalecer_acciones` AS `c25fortalecer_acciones`,`tbl_estructura_vulnerabilidad`.`indexxx` AS `indexxx` from `tbl_estructura_vulnerabilidad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ficha_finca_2018`
--
DROP TABLE IF EXISTS `vista_ficha_finca_2018`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ficha_finca_2018`  AS  select `tbl_estructura_vulnerabilidad_2018`.`n` AS `n`,`tbl_estructura_vulnerabilidad_2018`.`numero_identidad` AS `numero_identidad`,`tbl_estructura_vulnerabilidad_2018`.`clave` AS `clave`,`tbl_estructura_vulnerabilidad_2018`.`nombre_productor` AS `nombre_productor`,`tbl_estructura_vulnerabilidad_2018`.`telefono` AS `telefono`,`tbl_estructura_vulnerabilidad_2018`.`sexo` AS `sexo`,`tbl_estructura_vulnerabilidad_2018`.`latitu` AS `latitu`,`tbl_estructura_vulnerabilidad_2018`.`logitud` AS `logitud`,`tbl_estructura_vulnerabilidad_2018`.`departamento` AS `departamento`,`tbl_estructura_vulnerabilidad_2018`.`municipio` AS `municipio`,`tbl_estructura_vulnerabilidad_2018`.`aldea` AS `aldea`,`tbl_estructura_vulnerabilidad_2018`.`regional` AS `regional`,`tbl_estructura_vulnerabilidad_2018`.`agencia` AS `agencia`,`tbl_estructura_vulnerabilidad_2018`.`pendiente` AS `pendiente`,`tbl_estructura_vulnerabilidad_2018`.`area_total_finca` AS `area_total_finca`,`tbl_estructura_vulnerabilidad_2018`.`area_total_cafe` AS `area_total_cafe`,`tbl_estructura_vulnerabilidad_2018`.`produccion_promedio` AS `produccion_promedio`,`tbl_estructura_vulnerabilidad_2018`.`edad_cafetal` AS `edad_cafetal`,`tbl_estructura_vulnerabilidad_2018`.`meses_seco` AS `meses_seco`,`tbl_estructura_vulnerabilidad_2018`.`observacion` AS `observacion`,`tbl_estructura_vulnerabilidad_2018`.`fechavisita` AS `fechavisita`,`tbl_estructura_vulnerabilidad_2018`.`nombre_tecnico` AS `nombre_tecnico`,`tbl_estructura_vulnerabilidad_2018`.`instrucciones_consejo` AS `instrucciones_consejo`,`tbl_estructura_vulnerabilidad_2018`.`v_tipica` AS `v_tipica`,`tbl_estructura_vulnerabilidad_2018`.`v_pacas` AS `v_pacas`,`tbl_estructura_vulnerabilidad_2018`.`v_caturra` AS `v_caturra`,`tbl_estructura_vulnerabilidad_2018`.`v_ihcafe90` AS `v_ihcafe90`,`tbl_estructura_vulnerabilidad_2018`.`v_parainema` AS `v_parainema`,`tbl_estructura_vulnerabilidad_2018`.`v_lempira` AS `v_lempira`,`tbl_estructura_vulnerabilidad_2018`.`v_catuai` AS `v_catuai`,`tbl_estructura_vulnerabilidad_2018`.`v_catimor` AS `v_catimor`,`tbl_estructura_vulnerabilidad_2018`.`variedad_other` AS `variedad_other`,`tbl_estructura_vulnerabilidad_2018`.`p1cambios_temperatura` AS `p1cambios_temperatura`,`tbl_estructura_vulnerabilidad_2018`.`c1practica_instruccion` AS `c1practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c1variedades_tolerante` AS `c1variedades_tolerante`,`tbl_estructura_vulnerabilidad_2018`.`c1sistema_produccion` AS `c1sistema_produccion`,`tbl_estructura_vulnerabilidad_2018`.`c1implementar_sistema` AS `c1implementar_sistema`,`tbl_estructura_vulnerabilidad_2018`.`p2lluvias_irregulares` AS `p2lluvias_irregulares`,`tbl_estructura_vulnerabilidad_2018`.`c2practica_instruccion` AS `c2practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c2cosecha_agua` AS `c2cosecha_agua`,`tbl_estructura_vulnerabilidad_2018`.`c2riesgo_adecuada` AS `c2riesgo_adecuada`,`tbl_estructura_vulnerabilidad_2018`.`c2aplicacion_frecuente_foliares` AS `c2aplicacion_frecuente_foliares`,`tbl_estructura_vulnerabilidad_2018`.`p3inuncaciones_derrumbe` AS `p3inuncaciones_derrumbe`,`tbl_estructura_vulnerabilidad_2018`.`c3practica_instruccion` AS `c3practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c3conservacion_suelo` AS `c3conservacion_suelo`,`tbl_estructura_vulnerabilidad_2018`.`c3diseño_sombre` AS `c3diseño_sombre`,`tbl_estructura_vulnerabilidad_2018`.`c3evitar_cultivo_riesgo` AS `c3evitar_cultivo_riesgo`,`tbl_estructura_vulnerabilidad_2018`.`p4riesgo_huracanes_tt` AS `p4riesgo_huracanes_tt`,`tbl_estructura_vulnerabilidad_2018`.`c4practica_instruccion` AS `c4practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c4mantenerse_infomado` AS `c4mantenerse_infomado`,`tbl_estructura_vulnerabilidad_2018`.`c4evitar_cultivo_riesgo` AS `c4evitar_cultivo_riesgo`,`tbl_estructura_vulnerabilidad_2018`.`p5disminucion_agua` AS `p5disminucion_agua`,`tbl_estructura_vulnerabilidad_2018`.`c5practica_instruccion` AS `c5practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c5cosecha_agua` AS `c5cosecha_agua`,`tbl_estructura_vulnerabilidad_2018`.`c5manejo_sombra` AS `c5manejo_sombra`,`tbl_estructura_vulnerabilidad_2018`.`c5cobertura_suelo` AS `c5cobertura_suelo`,`tbl_estructura_vulnerabilidad_2018`.`p6vientos_fuerte` AS `p6vientos_fuerte`,`tbl_estructura_vulnerabilidad_2018`.`c6practica_instruccion` AS `c6practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c6barreras_rompe_viento` AS `c6barreras_rompe_viento`,`tbl_estructura_vulnerabilidad_2018`.`c6manejo_sombra` AS `c6manejo_sombra`,`tbl_estructura_vulnerabilidad_2018`.`p7señales_erosion` AS `p7señales_erosion`,`tbl_estructura_vulnerabilidad_2018`.`c7practica_instruccion` AS `c7practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c7conservacion_suelos` AS `c7conservacion_suelos`,`tbl_estructura_vulnerabilidad_2018`.`c7menejo_selectivo` AS `c7menejo_selectivo`,`tbl_estructura_vulnerabilidad_2018`.`c7manejo_sombra` AS `c7manejo_sombra`,`tbl_estructura_vulnerabilidad_2018`.`p8practica_suelo` AS `p8practica_suelo`,`tbl_estructura_vulnerabilidad_2018`.`c8practica_instruccion` AS `c8practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c8programa_fertilizacion` AS `c8programa_fertilizacion`,`tbl_estructura_vulnerabilidad_2018`.`c8aporte_organica` AS `c8aporte_organica`,`tbl_estructura_vulnerabilidad_2018`.`c8manejo_sombra` AS `c8manejo_sombra`,`tbl_estructura_vulnerabilidad_2018`.`p9f_practica_conservacion` AS `p9f_practica_conservacion`,`tbl_estructura_vulnerabilidad_2018`.`c9practica_instruccion` AS `c9practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c9practica_conservacion` AS `c9practica_conservacion`,`tbl_estructura_vulnerabilidad_2018`.`p10ausente_hierva` AS `p10ausente_hierva`,`tbl_estructura_vulnerabilidad_2018`.`c10practica_instruccion` AS `c10practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c10m_seleccion_hierva` AS `c10m_seleccion_hierva`,`tbl_estructura_vulnerabilidad_2018`.`c10manejo_sombra` AS `c10manejo_sombra`,`tbl_estructura_vulnerabilidad_2018`.`p11floracion_irregular` AS `p11floracion_irregular`,`tbl_estructura_vulnerabilidad_2018`.`c11practica_instruccion` AS `c11practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c11programa_fertilizacion` AS `c11programa_fertilizacion`,`tbl_estructura_vulnerabilidad_2018`.`c11riesgo_adecuao` AS `c11riesgo_adecuao`,`tbl_estructura_vulnerabilidad_2018`.`c11manejo_sombra` AS `c11manejo_sombra`,`tbl_estructura_vulnerabilidad_2018`.`p12aumento_defoliacion` AS `p12aumento_defoliacion`,`tbl_estructura_vulnerabilidad_2018`.`c12practica_instruccion` AS `c12practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c12programa_fertilizacion` AS `c12programa_fertilizacion`,`tbl_estructura_vulnerabilidad_2018`.`c12riesgo_adecuado` AS `c12riesgo_adecuado`,`tbl_estructura_vulnerabilidad_2018`.`c12fuente_laguinosas` AS `c12fuente_laguinosas`,`tbl_estructura_vulnerabilidad_2018`.`p13enfermedad_plantas` AS `p13enfermedad_plantas`,`tbl_estructura_vulnerabilidad_2018`.`c13practica_instrucciones` AS `c13practica_instrucciones`,`tbl_estructura_vulnerabilidad_2018`.`c13diagnostico_incidencia` AS `c13diagnostico_incidencia`,`tbl_estructura_vulnerabilidad_2018`.`c13medidas_climas` AS `c13medidas_climas`,`tbl_estructura_vulnerabilidad_2018`.`c13informado_alerta` AS `c13informado_alerta`,`tbl_estructura_vulnerabilidad_2018`.`c13manejo_cafetales` AS `c13manejo_cafetales`,`tbl_estructura_vulnerabilidad_2018`.`c13manejo_sombra` AS `c13manejo_sombra`,`tbl_estructura_vulnerabilidad_2018`.`c13combinar_lotes` AS `c13combinar_lotes`,`tbl_estructura_vulnerabilidad_2018`.`p14diversificacion_cafetal` AS `p14diversificacion_cafetal`,`tbl_estructura_vulnerabilidad_2018`.`c14practica_instruccion` AS `c14practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c14m_sistemas_agroforestales` AS `c14m_sistemas_agroforestales`,`tbl_estructura_vulnerabilidad_2018`.`p15cafetale_sol` AS `p15cafetale_sol`,`tbl_estructura_vulnerabilidad_2018`.`c15practica_instruccion` AS `c15practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c15condicion_sombra` AS `c15condicion_sombra`,`tbl_estructura_vulnerabilidad_2018`.`p16cafetales_viejo` AS `p16cafetales_viejo`,`tbl_estructura_vulnerabilidad_2018`.`c16practica_instruccion` AS `c16practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c16programa_renovacion` AS `c16programa_renovacion`,`tbl_estructura_vulnerabilidad_2018`.`p17ausente_variedades` AS `p17ausente_variedades`,`tbl_estructura_vulnerabilidad_2018`.`c17practica_instruccion` AS `c17practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c17identificar_disponibilidad` AS `c17identificar_disponibilidad`,`tbl_estructura_vulnerabilidad_2018`.`c17t_lotes_variedades` AS `c17t_lotes_variedades`,`tbl_estructura_vulnerabilidad_2018`.`p18ausente_practica` AS `p18ausente_practica`,`tbl_estructura_vulnerabilidad_2018`.`c18practica_instruccion` AS `c18practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c18poscosecha_programa` AS `c18poscosecha_programa`,`tbl_estructura_vulnerabilidad_2018`.`p19ausente_x_año` AS `p19ausente_x_año`,`tbl_estructura_vulnerabilidad_2018`.`c19practica_instruccion` AS `c19practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c19contar_resiembras` AS `c19contar_resiembras`,`tbl_estructura_vulnerabilidad_2018`.`p20produccion_bajo` AS `p20produccion_bajo`,`tbl_estructura_vulnerabilidad_2018`.`c20practica_instruccion` AS `c20practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c20diagnosticos_cafetales` AS `c20diagnosticos_cafetales`,`tbl_estructura_vulnerabilidad_2018`.`c20analisis_quimico` AS `c20analisis_quimico`,`tbl_estructura_vulnerabilidad_2018`.`c20r_programa_fertilizacion` AS `c20r_programa_fertilizacion`,`tbl_estructura_vulnerabilidad_2018`.`c20necesidad_sustituto` AS `c20necesidad_sustituto`,`tbl_estructura_vulnerabilidad_2018`.`p21aplico_200kg` AS `p21aplico_200kg`,`tbl_estructura_vulnerabilidad_2018`.`c21practica_instruccion` AS `c21practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c21sustituir_o_complementar` AS `c21sustituir_o_complementar`,`tbl_estructura_vulnerabilidad_2018`.`c21buscar_productividad` AS `c21buscar_productividad`,`tbl_estructura_vulnerabilidad_2018`.`p22ausente_abono` AS `p22ausente_abono`,`tbl_estructura_vulnerabilidad_2018`.`c22practica_instruccion` AS `c22practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c22incorporar_abono` AS `c22incorporar_abono`,`tbl_estructura_vulnerabilidad_2018`.`c22elaborar_abono` AS `c22elaborar_abono`,`tbl_estructura_vulnerabilidad_2018`.`p23quebradas_sin_cobertura` AS `p23quebradas_sin_cobertura`,`tbl_estructura_vulnerabilidad_2018`.`c23practica_instruccion` AS `c23practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c23recuperacion_cobertura` AS `c23recuperacion_cobertura`,`tbl_estructura_vulnerabilidad_2018`.`p24sin_socios_arboles` AS `p24sin_socios_arboles`,`tbl_estructura_vulnerabilidad_2018`.`c24practica_instruccion` AS `c24practica_instruccion`,`tbl_estructura_vulnerabilidad_2018`.`c24arreglos_sistema` AS `c24arreglos_sistema`,`tbl_estructura_vulnerabilidad_2018`.`p25ausente_procesos` AS `p25ausente_procesos`,`tbl_estructura_vulnerabilidad_2018`.`c25practica_instrucciones` AS `c25practica_instrucciones`,`tbl_estructura_vulnerabilidad_2018`.`c25fortalecer_acciones` AS `c25fortalecer_acciones`,`tbl_estructura_vulnerabilidad_2018`.`indexxx` AS `indexxx` from `tbl_estructura_vulnerabilidad_2018` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_lider_coasociados`
--
DROP TABLE IF EXISTS `vista_lider_coasociados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_lider_coasociados`  AS  select `tbl_lid_coasociados`.`identidad` AS `identidad`,`tbl_lid_coasociados`.`nombre_replica` AS `nombre_replica`,`tbl_lid_coasociados`.`genero` AS `genero`,`tbl_lid_coasociados`.`index1` AS `index1`,`tbl_lid_coasociados`.`submission` AS `submission`,`tbl_lid_coasociados`.`posicion` AS `posicion` from `tbl_lid_coasociados` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_lider_ficha`
--
DROP TABLE IF EXISTS `vista_lider_ficha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_lider_ficha`  AS  select `tbl_lid_ficha_productor`.`n` AS `n`,`tbl_lid_ficha_productor`.`Fecha` AS `Fecha`,`tbl_lid_ficha_productor`.`departamento` AS `departamento`,`tbl_lid_ficha_productor`.`municipio` AS `municipio`,`tbl_lid_ficha_productor`.`Aldea` AS `Aldea`,`tbl_lid_ficha_productor`.`Ubicacion` AS `Ubicacion`,`tbl_lid_ficha_productor`.`latitude` AS `latitude`,`tbl_lid_ficha_productor`.`longitud` AS `longitud`,`tbl_lid_ficha_productor`.`altitude` AS `altitude`,`tbl_lid_ficha_productor`.`precision1` AS `precision1`,`tbl_lid_ficha_productor`.`Regional` AS `Regional`,`tbl_lid_ficha_productor`.`Agencia` AS `Agencia`,`tbl_lid_ficha_productor`.`Nombre_Productor` AS `Nombre_Productor`,`tbl_lid_ficha_productor`.`identidad` AS `identidad`,`tbl_lid_ficha_productor`.`Sexo` AS `sexo`,`tbl_lid_ficha_productor`.`nacimiento` AS `nacimiento`,`tbl_lid_ficha_productor`.`celular` AS `celular`,`tbl_lid_ficha_productor`.`grupo_pertenece` AS `grupo_pertenece`,`tbl_lid_ficha_productor`.`area_finca` AS `area_finca`,`tbl_lid_ficha_productor`.`area_produccion` AS `area_produccion`,`tbl_lid_ficha_productor`.`Variedad_Dominante` AS `Variedad_Dominante`,`tbl_lid_ficha_productor`.`numero_productores` AS `numero_productores`,`tbl_lid_ficha_productor`.`problemas` AS `problemas`,`tbl_lid_ficha_productor`.`grupo_comunal` AS `grupo_comunal`,`tbl_lid_ficha_productor`.`especifique_otra` AS `especifique_otra`,`tbl_lid_ficha_productor`.`proyecto` AS `proyecto`,`tbl_lid_ficha_productor`.`tecnico` AS `tecnico`,`tbl_lid_ficha_productor`.`indexxx` AS `indexxx` from `tbl_lid_ficha_productor` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_vulnerabilidad_variedades`
--
DROP TABLE IF EXISTS `vista_vulnerabilidad_variedades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_vulnerabilidad_variedades`  AS  select `tbl_estructura_variedades_vulnerabilidades`.`index1` AS `index1`,`tbl_estructura_variedades_vulnerabilidades`.`sumision` AS `sumision`,`tbl_estructura_variedades_vulnerabilidades`.`variedades` AS `variedades`,`tbl_estructura_variedades_vulnerabilidades`.`codigo_variedad` AS `codigo_variedad`,`tbl_estructura_variedades_vulnerabilidades`.`posicion` AS `posicion` from `tbl_estructura_variedades_vulnerabilidades` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bene_actividad_productiva`
--
ALTER TABLE `tbl_bene_actividad_productiva`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_bene_diversificacion_rubro`
--
ALTER TABLE `tbl_bene_diversificacion_rubro`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_bene_ficha_productores`
--
ALTER TABLE `tbl_bene_ficha_productores`
  ADD PRIMARY KEY (`n`);

--
-- Indices de la tabla `tbl_bene_servicios_publicos`
--
ALTER TABLE `tbl_bene_servicios_publicos`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_bene_tipos_de_estufa`
--
ALTER TABLE `tbl_bene_tipos_de_estufa`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_bene_tipo_apoyo`
--
ALTER TABLE `tbl_bene_tipo_apoyo`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_bene_variedades`
--
ALTER TABLE `tbl_bene_variedades`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_div_ficha_productor`
--
ALTER TABLE `tbl_div_ficha_productor`
  ADD PRIMARY KEY (`n`);

--
-- Indices de la tabla `tbl_div_fuentes_ingreso`
--
ALTER TABLE `tbl_div_fuentes_ingreso`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_div_meses_flacos`
--
ALTER TABLE `tbl_div_meses_flacos`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_div_meses_lluviosos`
--
ALTER TABLE `tbl_div_meses_lluviosos`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_estructura_variedades_vulnerabilidades`
--
ALTER TABLE `tbl_estructura_variedades_vulnerabilidades`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_estructura_vulnerabilidad`
--
ALTER TABLE `tbl_estructura_vulnerabilidad`
  ADD PRIMARY KEY (`n`);

--
-- Indices de la tabla `tbl_estructura_vulnerabilidad_2018`
--
ALTER TABLE `tbl_estructura_vulnerabilidad_2018`
  ADD PRIMARY KEY (`n`);

--
-- Indices de la tabla `tbl_general_metas`
--
ALTER TABLE `tbl_general_metas`
  ADD PRIMARY KEY (`cod_meta`);

--
-- Indices de la tabla `tbl_general_nombre_ficha`
--
ALTER TABLE `tbl_general_nombre_ficha`
  ADD PRIMARY KEY (`cod_nombre_ficha`),
  ADD KEY `fk_id_cod_meta` (`cod_meta`);

--
-- Indices de la tabla `tbl_lid_coasociados`
--
ALTER TABLE `tbl_lid_coasociados`
  ADD PRIMARY KEY (`index1`);

--
-- Indices de la tabla `tbl_lid_ficha_productor`
--
ALTER TABLE `tbl_lid_ficha_productor`
  ADD PRIMARY KEY (`n`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bene_actividad_productiva`
--
ALTER TABLE `tbl_bene_actividad_productiva`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bene_diversificacion_rubro`
--
ALTER TABLE `tbl_bene_diversificacion_rubro`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bene_ficha_productores`
--
ALTER TABLE `tbl_bene_ficha_productores`
  MODIFY `n` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bene_servicios_publicos`
--
ALTER TABLE `tbl_bene_servicios_publicos`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bene_tipos_de_estufa`
--
ALTER TABLE `tbl_bene_tipos_de_estufa`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bene_tipo_apoyo`
--
ALTER TABLE `tbl_bene_tipo_apoyo`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_bene_variedades`
--
ALTER TABLE `tbl_bene_variedades`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_div_ficha_productor`
--
ALTER TABLE `tbl_div_ficha_productor`
  MODIFY `n` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_div_fuentes_ingreso`
--
ALTER TABLE `tbl_div_fuentes_ingreso`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_div_meses_flacos`
--
ALTER TABLE `tbl_div_meses_flacos`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_div_meses_lluviosos`
--
ALTER TABLE `tbl_div_meses_lluviosos`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_estructura_variedades_vulnerabilidades`
--
ALTER TABLE `tbl_estructura_variedades_vulnerabilidades`
  MODIFY `index1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3396;

--
-- AUTO_INCREMENT de la tabla `tbl_estructura_vulnerabilidad`
--
ALTER TABLE `tbl_estructura_vulnerabilidad`
  MODIFY `n` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2027;

--
-- AUTO_INCREMENT de la tabla `tbl_estructura_vulnerabilidad_2018`
--
ALTER TABLE `tbl_estructura_vulnerabilidad_2018`
  MODIFY `n` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1205;

--
-- AUTO_INCREMENT de la tabla `tbl_general_metas`
--
ALTER TABLE `tbl_general_metas`
  MODIFY `cod_meta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_general_nombre_ficha`
--
ALTER TABLE `tbl_general_nombre_ficha`
  MODIFY `cod_nombre_ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_lid_coasociados`
--
ALTER TABLE `tbl_lid_coasociados`
  MODIFY `index1` bigint(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_lid_ficha_productor`
--
ALTER TABLE `tbl_lid_ficha_productor`
  MODIFY `n` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_general_nombre_ficha`
--
ALTER TABLE `tbl_general_nombre_ficha`
  ADD CONSTRAINT `fk_id_cod_meta` FOREIGN KEY (`cod_meta`) REFERENCES `tbl_general_metas` (`cod_meta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
