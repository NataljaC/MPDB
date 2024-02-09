-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.124.245.26    Database: micropoll
-- ------------------------------------------------------
-- Server version	5.7.40-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `All_particles`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `All_particles` AS SELECT 
 1 AS `Sample`,
 1 AS `IDSample`,
 1 AS `Process_blank`,
 1 AS `Lab_blank`,
 1 AS `IDParticles`,
 1 AS `Amount`,
 1 AS `Size_fraction`,
 1 AS `Colour`,
 1 AS `Shape`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Categorised_result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `All_particles_location`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `All_particles_location` AS SELECT 
 1 AS `Sample`,
 1 AS `IDSample`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Process_blank`,
 1 AS `Lab_blank`,
 1 AS `IDParticles`,
 1 AS `Amount`,
 1 AS `Size_fraction`,
 1 AS `Colour`,
 1 AS `Shape`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Categorised_result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `All_particles_location_compartment`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `All_particles_location_compartment` AS SELECT 
 1 AS `Sample`,
 1 AS `IDSample`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Compartment`,
 1 AS `Process_blank`,
 1 AS `Lab_blank`,
 1 AS `IDParticles`,
 1 AS `Amount`,
 1 AS `Size_fraction`,
 1 AS `Colour`,
 1 AS `Shape`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Categorised_result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `All_particles_location_compartment_MICROPOLL`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `All_particles_location_compartment_MICROPOLL` AS SELECT 
 1 AS `Sample`,
 1 AS `IDSample`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Compartment`,
 1 AS `Process_blank`,
 1 AS `Project`,
 1 AS `Lab_blank`,
 1 AS `IDParticles`,
 1 AS `Amount`,
 1 AS `Size_fraction`,
 1 AS `Colour`,
 1 AS `Shape`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Categorised_result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `BSB_MP_Kristina`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `BSB_MP_Kristina` AS SELECT 
 1 AS `Sample`,
 1 AS `Site_name`,
 1 AS `Date`,
 1 AS `Time`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Country`,
 1 AS `Sampling_weight_[kg]`,
 1 AS `Contributor`,
 1 AS `Project`,
 1 AS `Compartment`,
 1 AS `Sample_comments`,
 1 AS `IDParticles`,
 1 AS `Size_fraction`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Shape`,
 1 AS `Colour`,
 1 AS `Categorised_Result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`,
 1 AS `library_entry`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `BSB_MP_Kristina_4`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `BSB_MP_Kristina_4` AS SELECT 
 1 AS `Sample`,
 1 AS `Site_name`,
 1 AS `Date`,
 1 AS `Time`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Country`,
 1 AS `Sampling_weight_[kg]`,
 1 AS `Contributor`,
 1 AS `Project`,
 1 AS `Compartment`,
 1 AS `Sample_comments`,
 1 AS `Fraction_analysed`,
 1 AS `IDParticles`,
 1 AS `Particle_name`,
 1 AS `Size_fraction`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Size_3_[µm]`,
 1 AS `Shape`,
 1 AS `Colour`,
 1 AS `Preferred_method`,
 1 AS `Categorised_Result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`,
 1 AS `library_entry`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `BSB_MP_Kristina_5`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `BSB_MP_Kristina_5` AS SELECT 
 1 AS `Sample`,
 1 AS `Site_name`,
 1 AS `Date`,
 1 AS `Time`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Country`,
 1 AS `Sampling_weight_[kg]`,
 1 AS `Contributor`,
 1 AS `Project`,
 1 AS `Compartment`,
 1 AS `Sample_comments`,
 1 AS `Fraction_analysed`,
 1 AS `IDParticles`,
 1 AS `Particle_name`,
 1 AS `Size_fraction`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Size_3_[µm]`,
 1 AS `Shape`,
 1 AS `Colour`,
 1 AS `Preferred_method`,
 1 AS `Categorised_Result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`,
 1 AS `library_entry`,
 1 AS `Comment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Particles_for_Arunas`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Particles_for_Arunas` AS SELECT 
 1 AS `IDParticles`,
 1 AS `Compartment`,
 1 AS `Size_fraction`,
 1 AS `Amount`,
 1 AS `Categorised_result`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Particles_from_site`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Particles_from_site` AS SELECT 
 1 AS `IDParticles`,
 1 AS `Site_name`,
 1 AS `Size_fraction`,
 1 AS `Categorised_result`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Schlei_Sed_KE`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Schlei_Sed_KE` AS SELECT 
 1 AS `Sample`,
 1 AS `Site_name`,
 1 AS `Date`,
 1 AS `Time`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Country`,
 1 AS `Sampling_weight_[kg]`,
 1 AS `Contributor`,
 1 AS `Project`,
 1 AS `Compartment`,
 1 AS `Sample_comments`,
 1 AS `Preferred_method`,
 1 AS `IDParticles`,
 1 AS `Size_fraction`,
 1 AS `Size_1_[µm]`,
 1 AS `Size_2_[µm]`,
 1 AS `Size_3_[µm]`,
 1 AS `Shape`,
 1 AS `Colour`,
 1 AS `Categorised_Result`,
 1 AS `Indication_paint`,
 1 AS `polymer_type`,
 1 AS `library_entry`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `analysis`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analysis` (
  `IDAnalysis` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Method` int(10) unsigned NOT NULL,
  `Library_entry` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Hit_quality` float unsigned DEFAULT NULL,
  `Spectrum` longblob,
  `Result` int(10) unsigned NOT NULL,
  `Comment` text CHARACTER SET latin1,
  PRIMARY KEY (`IDAnalysis`),
  KEY `FK_analysis_methods` (`Method`),
  KEY `Result` (`Result`),
  CONSTRAINT `FK_analysis_methods` FOREIGN KEY (`Method`) REFERENCES `methods` (`IDMethod`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_analysis_polymer_type` FOREIGN KEY (`Result`) REFERENCES `polymer_type` (`IDPolymer_type`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96050 DEFAULT CHARSET=utf8 COMMENT='Spectrum analysis for MP';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `beach_particles_kristina`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `beach_particles_kristina` AS SELECT 
 1 AS `Sample`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Size_fraction`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `colors`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `IDColor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Color` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IDColor`),
  KEY `Color` (`Color`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Color of the microplastic';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contributor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributor` (
  `IDContributor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Fisrt_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `Last_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Initials` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `Institution` int(10) unsigned DEFAULT NULL,
  `Position` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Contact_phone` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Contact_email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Institution_other` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IDContributor`),
  KEY `Last_Name` (`Last_Name`),
  KEY `FK_contributor_institution` (`Institution`),
  KEY `Position` (`Position`),
  CONSTRAINT `FK_contributor_institution` FOREIGN KEY (`Institution`) REFERENCES `institution` (`IDInstitute`) ON DELETE NO ACTION,
  CONSTRAINT `FK_contributor_position` FOREIGN KEY (`Position`) REFERENCES `position` (`Position`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='all the contributors t the MP database';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `IDCountry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CountryShort` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Country` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IDCountry`),
  UNIQUE KEY `CountryShort` (`CountryShort`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `IDEquipment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Eq_Name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Eq_Specification` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IDEquipment`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='measurment equipment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flagged_particles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flagged_particles` (
  `IDParticles` int(10) unsigned NOT NULL,
  `IDFlag` int(10) unsigned NOT NULL,
  `IDblank_particle` int(10) unsigned DEFAULT NULL,
  `IDContributor` int(10) unsigned NOT NULL,
  KEY `FK_flagged_particles_particles` (`IDParticles`),
  KEY `FK_flagged_particles_flags` (`IDFlag`),
  KEY `FK_flagged_particles_particles_2` (`IDblank_particle`),
  KEY `FK_flagged_particles_contributor` (`IDContributor`),
  CONSTRAINT `FK_flagged_particles_contributor` FOREIGN KEY (`IDContributor`) REFERENCES `contributor` (`IDContributor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_flagged_particles_flags` FOREIGN KEY (`IDFlag`) REFERENCES `flags` (`IDFlag`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_flagged_particles_particles` FOREIGN KEY (`IDParticles`) REFERENCES `particles` (`IDParticles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_flagged_particles_particles_2` FOREIGN KEY (`IDblank_particle`) REFERENCES `particles` (`IDParticles`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flags`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flags` (
  `IDFlag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Flag_name` varchar(50) NOT NULL,
  `Comment` text,
  PRIMARY KEY (`IDFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `institution`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution` (
  `IDInstitute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Institute_Name` text CHARACTER SET latin1 NOT NULL,
  `Institute_Acronym` varchar(50) CHARACTER SET latin1 NOT NULL,
  `InstituteCountry` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Institute_Address` text CHARACTER SET latin1,
  `Institute_WebPage` text CHARACTER SET latin1,
  `Institute_Phone` text CHARACTER SET latin1,
  `Institute_Email` text CHARACTER SET latin1,
  PRIMARY KEY (`IDInstitute`),
  UNIQUE KEY `InstituteAcronym` (`Institute_Acronym`),
  KEY `FK_institution_countries` (`InstituteCountry`),
  CONSTRAINT `FK_institution_countries` FOREIGN KEY (`InstituteCountry`) REFERENCES `countries` (`CountryShort`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Institution name';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `method_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `method_category` (
  `IDMethodCategory` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IDMethodCategory`),
  KEY `Category` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='sampling, purification, pre-analysis treatment, analysis';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `methods`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `methods` (
  `IDMethod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Method_name` varchar(150) CHARACTER SET latin1 NOT NULL,
  `Category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Equipment` int(10) unsigned DEFAULT NULL,
  `Specification` text CHARACTER SET latin1,
  `Scheme_or_procedure` text CHARACTER SET latin1,
  `Images` longblob,
  `Protocols` longblob,
  `Equipment_owner` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`IDMethod`),
  UNIQUE KEY `Method_name` (`Method_name`),
  KEY `Category` (`Category`),
  KEY `FK_methods_equipment` (`Equipment`),
  KEY `FK_methods_institution` (`Equipment_owner`),
  CONSTRAINT `FK_methods_equipment` FOREIGN KEY (`Equipment`) REFERENCES `equipment` (`IDEquipment`) ON DELETE NO ACTION,
  CONSTRAINT `FK_methods_institution` FOREIGN KEY (`Equipment_owner`) REFERENCES `institution` (`IDInstitute`) ON DELETE NO ACTION,
  CONSTRAINT `FK_methods_method_category` FOREIGN KEY (`Category`) REFERENCES `method_category` (`Category`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='every method, from sampling, processing and pre-analysis treatment to final particle identification is listed here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paint_remark`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paint_remark` (
  `IDPaint` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Paint_remark` varchar(3000) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IDPaint`),
  KEY `Paint_remark` (`Paint_remark`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='remark if evaluted as paint (yes/no): indications: flake of typical appearance, polymer used for paint resins, spectral properites indicate typical paint ingredients';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `particles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `particles` (
  `IDParticles` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Sample` varchar(300) CHARACTER SET latin1 NOT NULL,
  `Preferred_method` int(10) unsigned NOT NULL,
  `Arrival_date` date DEFAULT NULL,
  `Analysis_date` date DEFAULT NULL,
  `Amount` float unsigned NOT NULL DEFAULT '1',
  `Analyst` int(10) unsigned NOT NULL,
  `Size_fraction` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Colour` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Shape` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Size_1_[µm]` float DEFAULT NULL,
  `Size_2_[µm]` float DEFAULT NULL,
  `Size_3_[µm]` float DEFAULT NULL,
  `Categorised_result` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Indication_paint` varchar(3000) CHARACTER SET latin1 DEFAULT NULL,
  `Particle_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IDParticles`),
  KEY `FK_particles_size_fraction` (`Size_fraction`),
  KEY `FK_particles_colors` (`Colour`),
  KEY `FK_particles_shape` (`Shape`),
  KEY `FK_particles_polymer_category` (`Categorised_result`),
  KEY `FK_particles_paint_remark` (`Indication_paint`),
  KEY `FK_particles_contributor` (`Analyst`),
  KEY `FK_particles_methods` (`Preferred_method`),
  KEY `FK_particles_samples` (`Sample`),
  CONSTRAINT `FK_particles_colors` FOREIGN KEY (`Colour`) REFERENCES `colors` (`Color`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_contributor` FOREIGN KEY (`Analyst`) REFERENCES `contributor` (`IDContributor`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_methods` FOREIGN KEY (`Preferred_method`) REFERENCES `methods` (`IDMethod`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_paint_remark` FOREIGN KEY (`Indication_paint`) REFERENCES `paint_remark` (`Paint_remark`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_polymer_category` FOREIGN KEY (`Categorised_result`) REFERENCES `polymer_category` (`Polymer_category`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_samples` FOREIGN KEY (`Sample`) REFERENCES `samples` (`Sample_name`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_shape` FOREIGN KEY (`Shape`) REFERENCES `shape` (`Shape`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_size_fraction` FOREIGN KEY (`Size_fraction`) REFERENCES `size_fraction` (`Size_category`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60591 DEFAULT CHARSET=utf8 COMMENT='an entry in this list stands for one analysed suspected plastic item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `particles2analysis`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `particles2analysis` (
  `IDParticles` int(10) unsigned NOT NULL,
  `IDAnalysis` int(10) unsigned NOT NULL,
  KEY `FK_particles2analysis_particles` (`IDParticles`),
  KEY `FK_particles2analysis_analysis` (`IDAnalysis`),
  CONSTRAINT `FK_particles2analysis_analysis` FOREIGN KEY (`IDAnalysis`) REFERENCES `analysis` (`IDAnalysis`) ON UPDATE CASCADE,
  CONSTRAINT `FK_particles2analysis_particles` FOREIGN KEY (`IDParticles`) REFERENCES `particles` (`IDParticles`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `particles_v_samples`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `particles_v_samples` AS SELECT 
 1 AS `Sample`,
 1 AS `year`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Size_fraction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `particles_v_samples2`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `particles_v_samples2` AS SELECT 
 1 AS `Sample`,
 1 AS `Date`,
 1 AS `Size_fraction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `particles_v_samples_volume`
--

SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `particles_v_samples_volume` AS SELECT 
 1 AS `Sample`,
 1 AS `Amount`,
 1 AS `Categorised_result`,
 1 AS `Size_fraction`,
 1 AS `GPS_LON`,
 1 AS `GPS_LAT`,
 1 AS `Compartment`,
 1 AS `Sampling_volume_[m3]`,
 1 AS `Sampling_weight_[kg]`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `polymer_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polymer_category` (
  `IDPolymer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Polymer_category` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IDPolymer`),
  KEY `Polymer_category` (`Polymer_category`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='identified polymer group accoding to allowed categories: Polyolefin, Polyamide, Chloropolymer, Fluoropolymer, Polyurethane, Polycarbonate, Polystyrene, Acrylonitrile butadiene styrene, Polyacetate, Polyalcohol, Elastomer, Other, NoPlast';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `polymer_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polymer_type` (
  `IDPolymer_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `polymer_type` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`IDPolymer_type`),
  KEY `polymer_type` (`polymer_type`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='The exact type of the polymer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `IDPosition` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Position` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`IDPosition`),
  KEY `Position` (`Position`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Intern, B.Sc. student, M.Sc. student, Ph.D. candidate, PostDoc, Senior Researcher, Technical staff, [possibly others]';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `IDProject` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Acronym` varchar(50) CHARACTER SET latin1 NOT NULL,
  `FullName` text CHARACTER SET latin1,
  `LeadingInstitute` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`IDProject`),
  UNIQUE KEY `Acronym` (`Acronym`),
  KEY `FK_projects_institution` (`LeadingInstitute`),
  CONSTRAINT `FK_projects_institution` FOREIGN KEY (`LeadingInstitute`) REFERENCES `institution` (`IDInstitute`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='all the MP projects that contribute to the DB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample2methods`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample2methods` (
  `IDSample` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDMethod` int(10) unsigned NOT NULL,
  `Order` int(10) unsigned DEFAULT NULL,
  KEY `FK_sample2methods_samples` (`IDSample`),
  KEY `FK_sample2methods_methods` (`IDMethod`),
  CONSTRAINT `FK_sample2methods_methods` FOREIGN KEY (`IDMethod`) REFERENCES `methods` (`IDMethod`),
  CONSTRAINT `FK_sample2methods_samples` FOREIGN KEY (`IDSample`) REFERENCES `samples` (`IDSample`)
) ENGINE=InnoDB AUTO_INCREMENT=1230 DEFAULT CHARSET=utf8 COMMENT='A table to connect multiple methods to a sample';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `samples`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `samples` (
  `IDSample` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Sample_name` varchar(300) CHARACTER SET latin1 NOT NULL,
  `Project` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Contributor` int(10) unsigned NOT NULL,
  `Site_name` varchar(500) CHARACTER SET latin1 NOT NULL,
  `Country` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Compartment` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Sampling_duration` time DEFAULT NULL,
  `Sample_comments` text CHARACTER SET latin1,
  `GPS_LON` float NOT NULL,
  `GPS_LAT` float NOT NULL,
  `GPS_LON_end` float DEFAULT NULL,
  `GPS_LAT_end` float DEFAULT NULL,
  `Sampling_depth_[m]` float DEFAULT NULL,
  `Sampling_volume_[m3]` float DEFAULT NULL,
  `Sampling_weight_[kg]` float DEFAULT NULL,
  `Sampling_species` text CHARACTER SET latin1,
  `Purification_completed` date DEFAULT NULL,
  `Fraction_analysed` float DEFAULT NULL,
  `Analysis_completed` date DEFAULT NULL,
  `Is_blank` bit(1) DEFAULT NULL,
  `Process_blank` int(10) unsigned DEFAULT NULL,
  `Lab_blank` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`IDSample`),
  KEY `FK_samples_countries` (`Country`),
  KEY `FK_samples_projects` (`Project`),
  KEY `FK_samples_sampling_compartment` (`Compartment`),
  KEY `FK_samples_contributor` (`Contributor`),
  KEY `Sample_name` (`Sample_name`),
  KEY `FK_samples_samples` (`Process_blank`),
  KEY `FK_samples_samples_2` (`Lab_blank`),
  CONSTRAINT `FK_samples_countries` FOREIGN KEY (`Country`) REFERENCES `countries` (`CountryShort`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_samples_projects` FOREIGN KEY (`Project`) REFERENCES `projects` (`Acronym`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_samples_sampling_compartment` FOREIGN KEY (`Compartment`) REFERENCES `sampling_compartment` (`Compartment`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1549 DEFAULT CHARSET=utf8 COMMENT='each entry represents one sample and includes all descriptive information that come along with it';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sampling_compartment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sampling_compartment` (
  `IDCompartment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Compartment` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IDCompartment`),
  KEY `Compartment` (`Compartment`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='beach, water, sediment, biota, soil, wastewater, sludge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shape`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shape` (
  `IDShape` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Shape` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IDShape`),
  KEY `Shape` (`Shape`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Shape of the microplastic';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `size_fraction`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size_fraction` (
  `IDSize` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Size_category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Size_range_from_[μm]` float unsigned NOT NULL,
  `Size_range_to_[μm]` float unsigned NOT NULL,
  PRIMARY KEY (`IDSize`),
  KEY `Size_category` (`Size_category`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Size category in micrometre (μm)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'micropoll'
--

--
-- Final view structure for view `All_particles`
--

/*!50001 DROP VIEW IF EXISTS `All_particles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `All_particles` AS select distinct `p`.`Sample` AS `Sample`,`s`.`IDSample` AS `IDSample`,`s`.`Process_blank` AS `Process_blank`,`s`.`Lab_blank` AS `Lab_blank`,`p`.`IDParticles` AS `IDParticles`,`p`.`Amount` AS `Amount`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Colour` AS `Colour`,`p`.`Shape` AS `Shape`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Categorised_result` AS `Categorised_result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `All_particles_location`
--

/*!50001 DROP VIEW IF EXISTS `All_particles_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `All_particles_location` AS select distinct `p`.`Sample` AS `Sample`,`s`.`IDSample` AS `IDSample`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Process_blank` AS `Process_blank`,`s`.`Lab_blank` AS `Lab_blank`,`p`.`IDParticles` AS `IDParticles`,`p`.`Amount` AS `Amount`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Colour` AS `Colour`,`p`.`Shape` AS `Shape`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Categorised_result` AS `Categorised_result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `All_particles_location_compartment`
--

/*!50001 DROP VIEW IF EXISTS `All_particles_location_compartment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `All_particles_location_compartment` AS select distinct `p`.`Sample` AS `Sample`,`s`.`IDSample` AS `IDSample`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Compartment` AS `Compartment`,`s`.`Process_blank` AS `Process_blank`,`s`.`Lab_blank` AS `Lab_blank`,`p`.`IDParticles` AS `IDParticles`,`p`.`Amount` AS `Amount`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Colour` AS `Colour`,`p`.`Shape` AS `Shape`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Categorised_result` AS `Categorised_result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `All_particles_location_compartment_MICROPOLL`
--

/*!50001 DROP VIEW IF EXISTS `All_particles_location_compartment_MICROPOLL`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `All_particles_location_compartment_MICROPOLL` AS select distinct `p`.`Sample` AS `Sample`,`s`.`IDSample` AS `IDSample`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Compartment` AS `Compartment`,`s`.`Process_blank` AS `Process_blank`,`s`.`Project` AS `Project`,`s`.`Lab_blank` AS `Lab_blank`,`p`.`IDParticles` AS `IDParticles`,`p`.`Amount` AS `Amount`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Colour` AS `Colour`,`p`.`Shape` AS `Shape`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Categorised_result` AS `Categorised_result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `BSB_MP_Kristina`
--

/*!50001 DROP VIEW IF EXISTS `BSB_MP_Kristina`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`EndersK`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `BSB_MP_Kristina` AS select distinct `p`.`Sample` AS `Sample`,`s`.`Site_name` AS `Site_name`,`s`.`Date` AS `Date`,`s`.`Time` AS `Time`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Country` AS `Country`,`s`.`Sampling_weight_[kg]` AS `Sampling_weight_[kg]`,`s`.`Contributor` AS `Contributor`,`s`.`Project` AS `Project`,`s`.`Compartment` AS `Compartment`,`s`.`Sample_comments` AS `Sample_comments`,`p`.`IDParticles` AS `IDParticles`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Shape` AS `Shape`,`p`.`Colour` AS `Colour`,`p`.`Categorised_result` AS `Categorised_Result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type`,`a`.`Library_entry` AS `library_entry` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `BSB_MP_Kristina_4`
--

/*!50001 DROP VIEW IF EXISTS `BSB_MP_Kristina_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`EndersK`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `BSB_MP_Kristina_4` AS select distinct `p`.`Sample` AS `Sample`,`s`.`Site_name` AS `Site_name`,`s`.`Date` AS `Date`,`s`.`Time` AS `Time`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Country` AS `Country`,`s`.`Sampling_weight_[kg]` AS `Sampling_weight_[kg]`,`s`.`Contributor` AS `Contributor`,`s`.`Project` AS `Project`,`s`.`Compartment` AS `Compartment`,`s`.`Sample_comments` AS `Sample_comments`,`s`.`Fraction_analysed` AS `Fraction_analysed`,`p`.`IDParticles` AS `IDParticles`,`p`.`Particle_name` AS `Particle_name`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Size_3_[µm]` AS `Size_3_[µm]`,`p`.`Shape` AS `Shape`,`p`.`Colour` AS `Colour`,`p`.`Preferred_method` AS `Preferred_method`,`p`.`Categorised_result` AS `Categorised_Result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type`,`a`.`Library_entry` AS `library_entry` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `BSB_MP_Kristina_5`
--

/*!50001 DROP VIEW IF EXISTS `BSB_MP_Kristina_5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`EndersK`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `BSB_MP_Kristina_5` AS select distinct `p`.`Sample` AS `Sample`,`s`.`Site_name` AS `Site_name`,`s`.`Date` AS `Date`,`s`.`Time` AS `Time`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Country` AS `Country`,`s`.`Sampling_weight_[kg]` AS `Sampling_weight_[kg]`,`s`.`Contributor` AS `Contributor`,`s`.`Project` AS `Project`,`s`.`Compartment` AS `Compartment`,`s`.`Sample_comments` AS `Sample_comments`,`s`.`Fraction_analysed` AS `Fraction_analysed`,`p`.`IDParticles` AS `IDParticles`,`p`.`Particle_name` AS `Particle_name`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Size_3_[µm]` AS `Size_3_[µm]`,`p`.`Shape` AS `Shape`,`p`.`Colour` AS `Colour`,`p`.`Preferred_method` AS `Preferred_method`,`p`.`Categorised_result` AS `Categorised_Result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type`,`a`.`Library_entry` AS `library_entry`,`a`.`Comment` AS `Comment` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Particles_for_Arunas`
--

/*!50001 DROP VIEW IF EXISTS `Particles_for_Arunas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Particles_for_Arunas` AS select `p`.`IDParticles` AS `IDParticles`,`c`.`Compartment` AS `Compartment`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Amount` AS `Amount`,`p`.`Categorised_result` AS `Categorised_result` from ((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `sampling_compartment` `c` on((`c`.`Compartment` = `s`.`Compartment`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Particles_from_site`
--

/*!50001 DROP VIEW IF EXISTS `Particles_from_site`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Particles_from_site` AS select `p`.`IDParticles` AS `IDParticles`,`s`.`Site_name` AS `Site_name`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Categorised_result` AS `Categorised_result` from (`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Schlei_Sed_KE`
--

/*!50001 DROP VIEW IF EXISTS `Schlei_Sed_KE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`EndersK`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Schlei_Sed_KE` AS select distinct `p`.`Sample` AS `Sample`,`s`.`Site_name` AS `Site_name`,`s`.`Date` AS `Date`,`s`.`Time` AS `Time`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Country` AS `Country`,`s`.`Sampling_weight_[kg]` AS `Sampling_weight_[kg]`,`s`.`Contributor` AS `Contributor`,`s`.`Project` AS `Project`,`s`.`Compartment` AS `Compartment`,`s`.`Sample_comments` AS `Sample_comments`,`p`.`Preferred_method` AS `Preferred_method`,`p`.`IDParticles` AS `IDParticles`,`p`.`Size_fraction` AS `Size_fraction`,`p`.`Size_1_[µm]` AS `Size_1_[µm]`,`p`.`Size_2_[µm]` AS `Size_2_[µm]`,`p`.`Size_3_[µm]` AS `Size_3_[µm]`,`p`.`Shape` AS `Shape`,`p`.`Colour` AS `Colour`,`p`.`Categorised_result` AS `Categorised_Result`,`p`.`Indication_paint` AS `Indication_paint`,`pt`.`polymer_type` AS `polymer_type`,`a`.`Library_entry` AS `library_entry` from ((((`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) join `particles2analysis` `pa` on((`p`.`IDParticles` = `pa`.`IDParticles`))) join `analysis` `a` on((`pa`.`IDAnalysis` = `a`.`IDAnalysis`))) join `polymer_type` `pt` on((`a`.`Result` = `pt`.`IDPolymer_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `beach_particles_kristina`
--

/*!50001 DROP VIEW IF EXISTS `beach_particles_kristina`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`LenzR`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `beach_particles_kristina` AS select `p`.`Sample` AS `Sample`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`p`.`Size_fraction` AS `Size_fraction` from (`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `particles_v_samples`
--

/*!50001 DROP VIEW IF EXISTS `particles_v_samples`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `particles_v_samples` AS select `p`.`Sample` AS `Sample`,year(`s`.`Date`) AS `year`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`p`.`Size_fraction` AS `Size_fraction` from (`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `particles_v_samples2`
--

/*!50001 DROP VIEW IF EXISTS `particles_v_samples2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`FischerF`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `particles_v_samples2` AS select `p`.`Sample` AS `Sample`,`s`.`Date` AS `Date`,`p`.`Size_fraction` AS `Size_fraction` from (`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `particles_v_samples_volume`
--

/*!50001 DROP VIEW IF EXISTS `particles_v_samples_volume`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoll-admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `particles_v_samples_volume` AS select `p`.`Sample` AS `Sample`,`p`.`Amount` AS `Amount`,`p`.`Categorised_result` AS `Categorised_result`,`p`.`Size_fraction` AS `Size_fraction`,`s`.`GPS_LON` AS `GPS_LON`,`s`.`GPS_LAT` AS `GPS_LAT`,`s`.`Compartment` AS `Compartment`,`s`.`Sampling_volume_[m3]` AS `Sampling_volume_[m3]`,`s`.`Sampling_weight_[kg]` AS `Sampling_weight_[kg]` from (`particles` `p` join `samples` `s` on((`p`.`Sample` = `s`.`Sample_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-30  9:10:19
