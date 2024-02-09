-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mp-at-food
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `IDColor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Color` varchar(50) NOT NULL,
  PRIMARY KEY (`IDColor`),
  KEY `Color` (`Color`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Color of the microplastic';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contributors`
--

DROP TABLE IF EXISTS `contributors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributors` (
  `IDContributor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Initials` char(50) NOT NULL,
  `Institution` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDContributor`),
  KEY `LastName` (`LastName`) USING BTREE,
  KEY `FK_contributors_institutions` (`Institution`) USING BTREE,
  KEY `Initials` (`Initials`),
  CONSTRAINT `FK_contributors_institutions` FOREIGN KEY (`Institution`) REFERENCES `institutions` (`Acronym`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='all the contributors to the MP database';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `IDCountry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CountryShort` varchar(50) NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDCountry`),
  UNIQUE KEY `CountryShort` (`CountryShort`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `evaluationTools`
--

DROP TABLE IF EXISTS `evaluationTools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluationTools` (
  `IDTool` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL COMMENT 'name of the spectral collection or classifier',
  `Version` varchar(50) DEFAULT NULL COMMENT 'provide version number (or a date) if applicable',
  `UsedAt` varchar(50) NOT NULL COMMENT 'institution using, owning or maintining the materialProvider',
  `Comment` text DEFAULT NULL,
  PRIMARY KEY (`IDTool`) USING BTREE,
  KEY `FK_evaluationTools_institutions` (`UsedAt`) USING BTREE,
  CONSTRAINT `FK_evaluationTools_institutions` FOREIGN KEY (`UsedAt`) REFERENCES `institutions` (`Acronym`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='list of known spectral libraries, classifiers, etc. which are used in this project to label particles with a respective material name';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `example_view`
--

DROP TABLE IF EXISTS `example_view`;
/*!50001 DROP VIEW IF EXISTS `example_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `example_view` AS SELECT
 1 AS `sample_names`,
  1 AS `MaterialName`,
  1 AS `Size1`,
  1 AS `Shape` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `example_view_2`
--

DROP TABLE IF EXISTS `example_view_2`;
/*!50001 DROP VIEW IF EXISTS `example_view_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `example_view_2` AS SELECT
 1 AS `SampleName`,
  1 AS `MaterialName`,
  1 AS `Size1`,
  1 AS `Shape`,
  1 AS `Institution` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `example_view_3`
--

DROP TABLE IF EXISTS `example_view_3`;
/*!50001 DROP VIEW IF EXISTS `example_view_3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `example_view_3` AS SELECT
 1 AS `SampleName`,
  1 AS `MaterialName`,
  1 AS `Size1`,
  1 AS `Size2`,
  1 AS `Shape`,
  1 AS `Volume`,
  1 AS `Weight`,
  1 AS `FractionPassedOn`,
  1 AS `Institution`,
  1 AS `SampleType` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `flaggedParticles`
--

DROP TABLE IF EXISTS `flaggedParticles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flaggedParticles` (
  `IDFlagging` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Particle` int(10) unsigned NOT NULL,
  `Flag` int(10) unsigned NOT NULL,
  `BlankParticle` int(10) unsigned DEFAULT NULL,
  `Contributor` char(50) NOT NULL,
  PRIMARY KEY (`IDFlagging`) USING BTREE,
  KEY `FK_flaggedParticles_contributors` (`Contributor`) USING BTREE,
  KEY `FK_flaggedParticles_flags` (`Flag`) USING BTREE,
  KEY `FK_flaggedParticles_particles` (`Particle`) USING BTREE,
  KEY `FK_flaggedParticles_particles_2` (`BlankParticle`) USING BTREE,
  CONSTRAINT `FK_flaggedParticles_contributors` FOREIGN KEY (`Contributor`) REFERENCES `contributors` (`Initials`),
  CONSTRAINT `FK_flaggedParticles_flags` FOREIGN KEY (`Flag`) REFERENCES `flags` (`IDFlag`),
  CONSTRAINT `FK_flaggedParticles_particles` FOREIGN KEY (`Particle`) REFERENCES `particles` (`IDParticle`),
  CONSTRAINT `FK_flaggedParticles_particles_2` FOREIGN KEY (`BlankParticle`) REFERENCES `particles` (`IDParticle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `IDFlag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FlagName` varchar(50) NOT NULL,
  `Comment` text DEFAULT NULL,
  PRIMARY KEY (`IDFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `IDImage` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Particle` int(10) unsigned NOT NULL,
  `Acquisition` int(10) unsigned NOT NULL COMMENT 'Process from which the respective image originated',
  `Image` longtext NOT NULL COMMENT 'image data as a base64 encoded string: "data:image/<insert-image-format>;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACsCAY..."',
  PRIMARY KEY (`IDImage`),
  KEY `FK_images_processes` (`Acquisition`),
  KEY `FK_images_particles` (`Particle`) USING BTREE,
  CONSTRAINT `FK_images_particles` FOREIGN KEY (`Particle`) REFERENCES `particles` (`IDParticle`) ON UPDATE CASCADE,
  CONSTRAINT `FK_images_processes` FOREIGN KEY (`Acquisition`) REFERENCES `processes` (`IDProcess`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Each entry provides one image of a particle.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `institutions`
--

DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutions` (
  `IDInstitute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Acronym` varchar(50) NOT NULL,
  `Address` text DEFAULT NULL,
  `Country` varchar(50) NOT NULL,
  PRIMARY KEY (`IDInstitute`),
  KEY `InstituteAcronym` (`Acronym`) USING BTREE,
  KEY `FK_institutions_countries` (`Country`) USING BTREE,
  CONSTRAINT `FK_institutions_countries` FOREIGN KEY (`Country`) REFERENCES `countries` (`CountryShort`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Institution name';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `materialCombinations`
--

DROP TABLE IF EXISTS `materialCombinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialCombinations` (
  `IDCombination` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MainMaterial` int(10) unsigned NOT NULL,
  `AdditionalMaterial` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IDCombination`) USING BTREE,
  KEY `FK_materialCombinations_materialTaxonomy_left` (`MainMaterial`) USING BTREE,
  KEY `FK_materialCombinations_materialTaxonomy_right` (`AdditionalMaterial`) USING BTREE,
  CONSTRAINT `FK_materialCombinations_materialTaxonomy_left` FOREIGN KEY (`MainMaterial`) REFERENCES `materialTaxonomy` (`IDMaterial`) ON UPDATE CASCADE,
  CONSTRAINT `FK_materialCombinations_materialTaxonomy_right` FOREIGN KEY (`AdditionalMaterial`) REFERENCES `materialTaxonomy` (`IDMaterial`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Simple material2material relations to indicate when an entry in materialTaxonomy contains more than the main material at whichs position it is placed in the hierachy.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `materialTaxonomy`
--

DROP TABLE IF EXISTS `materialTaxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialTaxonomy` (
  `IDMaterial` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Parent` int(11) DEFAULT NULL,
  `TwinOf` int(11) DEFAULT NULL COMMENT 'Several entries may be created for the same material / class using different names or spelling versions. All are equivalently valid, but one of them should be regarded as the main record of which all others are "twins". All twins receive the ID of the main record in this column. An example would be the group of entries of [''poly(ethylen terphthalate)'', ''polyethylene terphthalate'', ''PET''] of which ''PET'' may be the main record and the other 2 may be it''s twins.',
  `Name` varchar(512) NOT NULL COMMENT 'polymer category, exact polymer or pigment name',
  `CASnumber` varchar(50) DEFAULT NULL COMMENT 'The CAS number of each material if available.',
  `Comment` text DEFAULT NULL,
  PRIMARY KEY (`IDMaterial`),
  UNIQUE KEY `polymers_ID_uindex` (`IDMaterial`),
  KEY `TwinOf` (`TwinOf`),
  KEY `IDParent` (`Parent`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tree like structure of material names and categories.\r\nEach entry represents one specific entity of the hierarchical taxonomy, e.g. a material class or a specific name of a result produced by an applied evaluation tool. In the latter case the respective evaluation tool needs to be linked in the FromTool cloumn with its IDTool. Otherwise link to IDTool "0": it represents a dummy tool used here for classes (FromTool cannot be empty).\r\n\r\nTo unify different naming conventions and granularities at the different partners, one class per major polymer type is entered and named with the conventional polymer abbreviation (e.g. PE, PP, PA). These entries are also linked to IDTool "0", as they have no specific tools orf origin. Their field TwinOf is empty, whereas all other corresponding entries from specific tools carry their major polymer type''s ID in the TwinOf field. As an example, if PE is ID 0 and PA is ID 1, then all of the follwoing would carry 0 in their TwinOf field:\r\n- PE (from tool x)\r\n- PE (from tool y)\r\n- Polyethylene (from tool z)\r\n- HDPE from yet another tool\r\n- LDPE from the same other tool\r\n\r\n...and likewise for different PAs the TwinOf column would carry a 1:\r\n- PA (from tool a)\r\n- Polyamide (from tool b)\r\n- "PA6 reference No. 3: blue rope" (from tool c)\r\n\r\nIf a material name generated by a specific evaluation tool contains a combination of materials (e.g. PE + PB15, or PE_cardboard) it has to be sorted into the hierarchy at the place of what is regarded the main polymer (the two mentioned examples have PE in their name, so child of polyolefins, twin of PE). The other constituents (here PB15 or cardboard) may then be linked by creating respective entries in the materialCombinations table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `methodCategories`
--

DROP TABLE IF EXISTS `methodCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methodCategories` (
  `IDMethodCategory` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`IDMethodCategory`),
  KEY `Category` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='List of allowed method categories.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `methods`
--

DROP TABLE IF EXISTS `methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methods` (
  `IDMethod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MethodName` varchar(150) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Equipment` text DEFAULT NULL,
  `Specification` text DEFAULT NULL,
  `Images` longblob DEFAULT NULL COMMENT 'may be used to upload images of the method',
  `Protocol` longblob DEFAULT NULL COMMENT 'may be used to upload protocol documents for the method (e.g. pdf format)',
  `EquipmentOwner` varchar(50) DEFAULT NULL,
  `EvaluationTool` int(10) unsigned DEFAULT NULL COMMENT 'only used if Category is "evaluation": links to materialProviders to specify the origin of obtain evaluation results (e.g. a specific spectral library or classifier version)',
  PRIMARY KEY (`IDMethod`),
  UNIQUE KEY `MethodName` (`MethodName`) USING BTREE,
  KEY `FK_methods_methodCategories` (`Category`) USING BTREE,
  KEY `FK_methods_institutions` (`EquipmentOwner`) USING BTREE,
  KEY `FK_methods_evaluationTools` (`EvaluationTool`) USING BTREE,
  CONSTRAINT `FK_methods_evaluationTools` FOREIGN KEY (`EvaluationTool`) REFERENCES `evaluationTools` (`IDTool`) ON UPDATE CASCADE,
  CONSTRAINT `FK_methods_institutions` FOREIGN KEY (`EquipmentOwner`) REFERENCES `institutions` (`Acronym`) ON UPDATE CASCADE,
  CONSTRAINT `FK_methods_methodCategories` FOREIGN KEY (`Category`) REFERENCES `methodCategories` (`Category`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='every method, from sampling, processing and pre-analysis treatment to final particle identification is listed here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `packagingTypes`
--

DROP TABLE IF EXISTS `packagingTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packagingTypes` (
  `IDPackagingType` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PackagingType` varchar(50) NOT NULL,
  PRIMARY KEY (`IDPackagingType`) USING BTREE,
  UNIQUE KEY `PackagingType` (`PackagingType`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `particles`
--

DROP TABLE IF EXISTS `particles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `particles` (
  `IDParticle` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Evaluation` int(10) unsigned NOT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Shape` varchar(50) DEFAULT NULL,
  `MaterialName` varchar(50) NOT NULL COMMENT 'original name of the identified material as provided by the evaluation tool',
  `IDMaterial` int(10) unsigned DEFAULT NULL COMMENT 'link to name of the identified material as it was generated by the analysis tool (NULL if not yet present in the materials taxonomy)',
  `Size1` float DEFAULT NULL COMMENT 'in micrometers (typically this is the longest dimension of a particle, otherwise specify in comment)',
  `Size2` float DEFAULT NULL COMMENT 'in micrometers (typically this is the longest dimension perpendicular to Size1)',
  `Size3` float DEFAULT NULL COMMENT 'in micrometers (typically this is the dimension perpendicular to Size1 and Size2)',
  `Area` float DEFAULT NULL COMMENT 'in micrometers squared',
  `Contour` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `MeasurementFileName` varchar(255) DEFAULT NULL COMMENT 'optionally provide the name of the raw data file that contains measurement data for this particle',
  `MeasurementFileMD5Hash` char(32) DEFAULT NULL COMMENT 'optional MD5 hash in addtion to file name to later ensure that the correct file version is retrievable',
  `MeasurementFileParticleID` int(10) unsigned DEFAULT NULL COMMENT 'optional unique ID of the particle within the measurement file',
  `Comment` text DEFAULT NULL COMMENT 'optional comment to elaborate particle specific information',
  PRIMARY KEY (`IDParticle`),
  KEY `FK_particles_colors` (`Color`) USING BTREE,
  KEY `FK_particles_shapes` (`Shape`) USING BTREE,
  KEY `FK_particles_processes` (`Evaluation`) USING BTREE,
  KEY `FK_particles_materialTaxonomy` (`IDMaterial`) USING BTREE,
  CONSTRAINT `FK_particles_colors` FOREIGN KEY (`Color`) REFERENCES `colors` (`Color`) ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_materialTaxonomy` FOREIGN KEY (`IDMaterial`) REFERENCES `materialTaxonomy` (`IDMaterial`) ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_processes` FOREIGN KEY (`Evaluation`) REFERENCES `processes` (`IDProcess`) ON UPDATE CASCADE,
  CONSTRAINT `FK_particles_shapes` FOREIGN KEY (`Shape`) REFERENCES `shapes` (`Shape`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='an entry in this list stands for one analysed particle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processes` (
  `IDProcess` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Sample` int(10) unsigned NOT NULL,
  `Method` int(10) unsigned NOT NULL,
  `FractionPassedOn` float DEFAULT NULL COMMENT 'if the process lead to a reduction of the sample, indicate here which fraction of the sample was passed on to subsequent processes (i.e. subsampling by splitting into two equal portion would carry a 0.5 in this column)',
  `Contributor` char(50) NOT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp(),
  `Comment` text DEFAULT NULL COMMENT 'optional comment to detail specific information about this particular process (e.g. errors, deviation from SOP, etc)',
  PRIMARY KEY (`IDProcess`),
  KEY `FK_processes_contributors` (`Contributor`),
  KEY `FK_processes_methods` (`Method`) USING BTREE,
  KEY `FK_processes_samples` (`Sample`) USING BTREE,
  CONSTRAINT `FK_processes_contributors` FOREIGN KEY (`Contributor`) REFERENCES `contributors` (`Initials`) ON UPDATE CASCADE,
  CONSTRAINT `FK_processes_methods` FOREIGN KEY (`Method`) REFERENCES `methods` (`IDMethod`) ON UPDATE CASCADE,
  CONSTRAINT `FK_processes_samples` FOREIGN KEY (`Sample`) REFERENCES `samples` (`IDSample`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Each entry represents an application of a method to a sample';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sampleOrigins`
--

DROP TABLE IF EXISTS `sampleOrigins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampleOrigins` (
  `IDSampleOrigin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SampleOrigin` varchar(50) NOT NULL,
  PRIMARY KEY (`IDSampleOrigin`),
  UNIQUE KEY `SampleOrigin` (`SampleOrigin`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='List of code names of sample producers, used in ``samples.Origin`` to express which samples originate from the same producer.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sampleTypes`
--

DROP TABLE IF EXISTS `sampleTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampleTypes` (
  `IDSampleType` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SampleType` varchar(50) NOT NULL,
  PRIMARY KEY (`IDSampleType`) USING BTREE,
  UNIQUE KEY `SampleType` (`SampleType`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='dairy, meat, beverages, packaging, blank, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `samples`
--

DROP TABLE IF EXISTS `samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samples` (
  `IDSample` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `SampleOrigin` varchar(50) DEFAULT NULL,
  `SampleType` varchar(50) NOT NULL,
  `Comment` text DEFAULT NULL,
  `Volume` float DEFAULT NULL COMMENT 'in liters',
  `Weight` float DEFAULT NULL COMMENT 'in kilogram',
  `PackagingType` varchar(50) NOT NULL,
  `PackagingComment` text DEFAULT NULL,
  PRIMARY KEY (`IDSample`),
  KEY `FK_samples_countries` (`Country`),
  KEY `FK_samples_packagingTypes` (`PackagingType`) USING BTREE,
  KEY `FK_samples_sampleTypes` (`SampleType`) USING BTREE,
  KEY `SampleName` (`Name`) USING BTREE,
  KEY `FK_samples_sampleOrigins` (`SampleOrigin`),
  CONSTRAINT `FK_samples_countries` FOREIGN KEY (`Country`) REFERENCES `countries` (`CountryShort`) ON UPDATE CASCADE,
  CONSTRAINT `FK_samples_packagingTypes` FOREIGN KEY (`PackagingType`) REFERENCES `packagingTypes` (`PackagingType`) ON UPDATE CASCADE,
  CONSTRAINT `FK_samples_sampleOrigins` FOREIGN KEY (`SampleOrigin`) REFERENCES `sampleOrigins` (`SampleOrigin`) ON UPDATE CASCADE,
  CONSTRAINT `FK_samples_sampleTypes` FOREIGN KEY (`SampleType`) REFERENCES `sampleTypes` (`SampleType`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='each entry represents one sample and includes all descriptive information that come along with it\nsamples include blanks, food samples, packaging samples (when made of plastic)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `samples2samples`
--

DROP TABLE IF EXISTS `samples2samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samples2samples` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SampleLeft` int(10) unsigned NOT NULL,
  `SampleRight` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_samples2samples_left` (`SampleLeft`) USING BTREE,
  KEY `FK_samples2samples_right` (`SampleRight`) USING BTREE,
  CONSTRAINT `FK_samples2samples_left` FOREIGN KEY (`SampleLeft`) REFERENCES `samples` (`IDSample`) ON UPDATE CASCADE,
  CONSTRAINT `FK_samples2samples_right` FOREIGN KEY (`SampleRight`) REFERENCES `samples` (`IDSample`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='describes relation between samples\ne.g. packaging or blank samples related to food samples';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shapes`
--

DROP TABLE IF EXISTS `shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shapes` (
  `IDShape` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Shape` varchar(50) NOT NULL,
  PRIMARY KEY (`IDShape`),
  KEY `Shape` (`Shape`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='list of allowed shape categories of the particles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spectra`
--

DROP TABLE IF EXISTS `spectra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spectra` (
  `IDSpectrum` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Particle` int(10) unsigned NOT NULL,
  `Acquisition` int(10) unsigned NOT NULL COMMENT 'Process from which the respective spectrum originated',
  `Spectrum` longblob NOT NULL COMMENT 'The spectrum should be uploaded as two number columns separated by a comma. Left column = wavenumbers, right column = intensities. No headers etc.',
  PRIMARY KEY (`IDSpectrum`),
  KEY `FK_spectra_particles` (`Particle`) USING BTREE,
  KEY `FK_spectra_processes` (`Acquisition`) USING BTREE,
  CONSTRAINT `FK_spectra_particles` FOREIGN KEY (`Particle`) REFERENCES `particles` (`IDParticle`) ON UPDATE CASCADE,
  CONSTRAINT `FK_spectra_processes` FOREIGN KEY (`Acquisition`) REFERENCES `processes` (`IDProcess`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Each entry provides one spectrum measured for a particle.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `example_view`
--

/*!50001 DROP VIEW IF EXISTS `example_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoly`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `example_view` AS select distinct `s`.`Name` AS `sample_names`,`p`.`MaterialName` AS `MaterialName`,`p`.`Size1` AS `Size1`,`p`.`Shape` AS `Shape` from ((`particles` `p` join `processes` `ps` on(`ps`.`IDProcess` = `p`.`Evaluation`)) join `samples` `s` on(`ps`.`Sample` = `s`.`IDSample`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `example_view_2`
--

/*!50001 DROP VIEW IF EXISTS `example_view_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoly`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `example_view_2` AS select distinct `s`.`Name` AS `SampleName`,`p`.`MaterialName` AS `MaterialName`,`p`.`Size1` AS `Size1`,`p`.`Shape` AS `Shape`,`ct`.`Institution` AS `Institution` from (((`particles` `p` join `processes` `ps` on(`ps`.`IDProcess` = `p`.`Evaluation`)) join `samples` `s` on(`ps`.`Sample` = `s`.`IDSample`)) join `contributors` `ct` on(`ct`.`Initials` = `ps`.`Contributor`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `example_view_3`
--

/*!50001 DROP VIEW IF EXISTS `example_view_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`micropoly`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `example_view_3` AS select distinct `s`.`Name` AS `SampleName`,`p`.`MaterialName` AS `MaterialName`,`p`.`Size1` AS `Size1`,`p`.`Size2` AS `Size2`,`p`.`Shape` AS `Shape`,`s`.`Volume` AS `Volume`,`s`.`Weight` AS `Weight`,`ps`.`FractionPassedOn` AS `FractionPassedOn`,`ct`.`Institution` AS `Institution`,`s`.`SampleType` AS `SampleType` from (((`particles` `p` join `processes` `ps` on(`ps`.`IDProcess` = `p`.`Evaluation`)) join `samples` `s` on(`ps`.`Sample` = `s`.`IDSample`)) join `contributors` `ct` on(`ct`.`Initials` = `ps`.`Contributor`)) */;
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

-- Dump completed on 2023-06-30 12:56:59
